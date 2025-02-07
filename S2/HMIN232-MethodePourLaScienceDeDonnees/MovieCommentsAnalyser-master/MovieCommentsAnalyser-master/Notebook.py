#!/usr/bin/env python
# coding: utf-8

# # Classification de documents d'opinions

# Groupe E :
# Nom - numéro d'étudiant
# 
# Darnala Baptiste - 21503877
# 
# Di Giovanni Thomas - 21505926
# 
# Duverger Eliott - 20140442
# 
# Pierre Van Iseghem - 20144006

# # Pré-traitements

# On commence par importer les données :

# In[ ]:


import pandas

movieComments = pandas.read_csv('Data/dataset.csv', sep = '\t', header = None, encoding = "utf8")
movieCommentsLabels = pandas.read_csv('Data/labels.csv', sep = '\t', header = None, encoding = "utf8")


# Pré-traitements choisis :
# 
# 1- Supression de caractères non ASCII
# 
# 2- Suppression des contractions
# 
# 3- Passage en minuscule
# 
# 4- Supression de la ponctuation
# 
# 5- Suppressions des stopwords
# 
# 6- Remplacement des nombres
# 
# 7- Lemmatisation

# In[ ]:


import nltk
import unicodedata
import contractions
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize
from nltk.stem import WordNetLemmatizer

nltk.download("stopwords")
nltk.download("punkt")
nltk.download("wordnet")

GoWords = ['not', 'nor', 'up', 'out', 'can']
global OurStopWords
OurStopWords = ['movie', 'popcorn']

for word in stopwords.words('english'):
    if GoWords.count(word) == 0:
        OurStopWords.append(word)
        
def clean_text(commentString):   
    # Removing non ASCII characters
    commentString = unicodedata.normalize('NFKD', commentString).encode("ascii", "ignore").decode("utf-8", 'ignore')

    # Removing contractions
    commentString = contractions.fix(commentString, slang = True)

    # Tokenizing
    tokenizedText = word_tokenize(commentString)

    # Putting all words in lowercase
    tokenizedText = [word.lower() for word in tokenizedText]

    # Deleting ponctuations
    tokenizedText = [word for word in tokenizedText if word.isalpha()]

    # Removing stop words
    tokenizedText = [word for word in tokenizedText if not word in OurStopWords]
    
    # Converting numbers
    inflectEngine = inflect.engine()
    newWords = []
    for word in tokenizedText:
        if word.isdigit():
            newWords.append(inflectEngine.number_to_words(word))
        else:
            newWords.append(word)
    tokenizedText = newWords

    # Lemmatization
    lemmatizer = WordNetLemmatizer()
    commentString = [lemmatizer.lemmatize(word, pos = 'v') for word in tokenizedText]

    # Turning back tokens into a string
    commentString = "".join([" " + i for i in tokenizedText]).strip()
    
    return commentString


# # Classifieurs

# In[ ]:


import sklearn
from sklearn.naive_bayes import GaussianNB
from sklearn.neighbors import KNeighborsClassifier
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.svm import SVC
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import GridSearchCV
from sklearn.model_selection import train_test_split
from sklearn.model_selection import KFold
from sklearn.model_selection import cross_val_score
from sklearn.feature_extraction.text import TfidfVectorizer

# Sickit learn met régulièrement à jour des versions et indique des futurs warnings
# Ces deux lignes permettent de ne pas les afficher
import warnings
warnings.filterwarnings("ignore", category = FutureWarning)


# Définition des variables d'apprentissage et des variables à prédire

# In[ ]:


movieCommentsArray = movieComments.values
data = movieCommentsArray[:, 0] # X

movieCommentsLabelsArray = movieCommentsLabels.values
dataLabels = movieCommentsLabelsArray[:, 0] # Y


# Vectorisation avec TF-IDF

# In[ ]:


vectorizer = TfidfVectorizer(preprocessor = cleanText, ngram_range = (1, 3), min_df = 0.01, max_df = 0.9, sublinear_tf = False, smooth_idf = True)
vectors = vectorizer.fit_transform(data)

data = vectors.toarray()


# Découpage des données en jeu d'apprentissage (70%) et jeu de test (30%)

# In[ ]:


trainingSize = 0.7
testingSize = 0.3

trainingData, testingData, trainingDataLabels, testingDataLabels = train_test_split(data, dataLabels, train_size = trainingSize, test_size = testingSize)
# X_train,    X_test,      Y_train,            Y_test


# # Sans grid search

# Classifieurs SVC et Random forest, avec leurs paramètres par défaut

# In[ ]:


models = []
models.append(("SVC", SVC()))
models.append(("Random forest", RandomForestClassifier()))

for name, model in models:
    kFold = KFold(n_splits = 20, shuffle = True, random_state = 10)
    crossVal = cross_val_score(model, data, dataLabels, cv = kFold, scoring = "accuracy")
    print(name, ": ", crossVal.mean(), " (", crossVal.std(), ") \n")


# # Avec grid search

# Définition des classifieurs et leurs paramètres

# In[ ]:


classifiers = {
    'RandomForestClassifier': RandomForestClassifier(),
    'SVC': SVC()
}

parameters = {
    'RandomForestClassifier': [
        #TODO: ajouter les paramètres à tester
    ],
    
    'SVC': [
        {'C': [ 1, 2]},
        {'kernel': ['linear']},
        {'degree': [3]},
        {'class_weight': ['balanced']},
        {'probability' : ['True', 'False']},
        {'decision_function_shape': ['ovo', 'ovr']},
        {'random_state': [0, 1 , 5, 10]}
    ]
}


# Recherche du meilleur classifieur entre SVC et Random Forest, et de ses meilleurs paramètres

# In[ ]:


class Model:
    def __init__(self, classifier, parameters, score):
        self.classifier = classifier
        self.parameters = parameters
        self.score = score

    def __repr__(self):
        return repr((self.classifier, self.parameters, self.score))

results = []
for key, value in classifiers.items():
    gridSearch = GridSearchCV(
        estimator = value,
        param_grid = parameters[key],
        scoring = "accuracy",
        cv = 5,
        n_jobs = -1,
        iid = True)

    gridSearch.fit(trainingData, trainingDataLabels)

    result = Model(key, gridSearch.best_score_, gridSearch.best_estimator_)
    results.append(result)

results = sorted(results, key = lambda result: result.score, reverse = True)

print("Results from best to worst: \n")
for result in results:
    print ("Classifier: ", result.parameters,
    " with score %0.2f " %result.score, '\n')


# Utilisation d'une pipeline pour sauvegarder le meilleur modèle

# In[ ]:


from sklearn.pipeline import Pipeline

classifier = SVC(C=1.0, cache_size=200, class_weight=None, coef0=0.0,
                 decision_function_shape='ovr', degree=3, gamma='auto_deprecated',
                 kernel='linear', max_iter=-1, probability=False, random_state=None,
                 shrinking=True, tol=0.001, verbose=False)

pipeline = Pipeline([
    ("vectorizer", vectorizer),
    ("classifier", classifier)
])

pipeline.fit(trainingData, trainingDataLabels)

result = pipeline.predict(testingData)
print('\nAccuracy: ', accuracy_score(result, testingDataLabels),'\n')

matrix = confusion_matrix(testingDataLabels, result)
print ('\nMatrice de confusion: \n', matrix, "\n")

print ('\n', classification_report(testingDataLabels, result), "\n")


# Sauvegarde dans un fichier pickle

# In[ ]:


import pickle

pickle.dump(pipeline, open('groupeE.pkl', 'wb'))


# # Résultats du challenge

# In[ ]:


import pickle
import pandas
from sklearn.metrics import accuracy_score
from sklearn.metrics import confusion_matrix
from sklearn.metrics import classification_report

clf_loaded = pickle.load(open('groupeE.pkl', 'rb'))

movieComments = pandas.read_csv('Data/test_data.csv', sep = '\t', header = None, encoding = "utf8")
movieCommentsLabels = pandas.read_csv('Data/test_labels.csv', sep = '\t', header = None, encoding = "utf8")

movieCommentsArray = movieComments.values
data = movieCommentsArray[:, 0] # X

movieCommentsLabelsArray = movieCommentsLabels.values
dataLabels = movieCommentsLabelsArray[:, 0] # Y

result = clf_loaded.predict(data)

print("Accuracy:", accuracy_score(result, dataLabels),'\n')

matrix = confusion_matrix(movieCommentsLabelsArray[:, 0], result)
print('\nMatrice de confusion: \n', matrix, "\n")

print('\n', classification_report(dataLabels, result), "\n")

