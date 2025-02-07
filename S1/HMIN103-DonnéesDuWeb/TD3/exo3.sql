CREATE TABLE tweeter_table_clob (colonne_texte VARCHAR(20), colonne_xml XMLTYPE) XMLTYPE colonne_xml STORE AS CLOB;

INSERT INTO tweeter_table_clob VALUES ('tweet', sys.xmltype.createxml('<tweet id="t42"><corps><message> .@example absolutely smashed it at #mtvlivelockdown! Catch him at the official @clubmtvuk after party tonight @ 10pm </message><hashtags><hashtag> #mtvlivelockdown </hashtag><hashtag> #heheXD!</hashtag><hashtag> #I&lt;3XML</hashtag></hashtags><references><reference idref="u96"></reference><reference idref="u33"></reference></references><taille> 8.5 </taille><type> Comic Sans MS </type><langue>English </langue><couleur>Noir</couleur></corps><url></url><OS> Windows 10 </OS><posGeo><pays> Etats-Unis </pays><ville> Miami </ville><coordonnees> -80.130045, 25.790654 </coordonnees></posGeo><Date><fuseauHoraire> UTC−4 </fuseauHoraire>1912310</Date><retweet> 2 </retweet><auteur idref="u41"><lien> https://twitter.com/TF1/ </lien></auteur></tweet>') ); 

INSERT INTO tweeter_table_clob VALUES ('tweet', sys.xmltype.createxml('<tweet id="t12"><corps><message>  #I&lt;3XML </message><hashtags><hashtag> #I&lt;3XML </hashtag></hashtags><references></references><taille> 8.5 </taille><type> Comic Sans MS </type><langue> English </langue><couleur>Noir</couleur></corps><url></url><OS> Windows 10 </OS><posGeo><pays> Etats-Unis </pays><ville> Miami </ville><coordonnees> -80.130045, 25.790654 </coordonnees></posGeo><Date><fuseauHoraire> UTC−4 </fuseauHoraire>1912330</Date><retweet> 0 </retweet><auteur idref="u22"><lien> https://twitter.com/MTVMusicUK/ </lien></auteur></tweet>') ); 

INSERT INTO tweeter_table_clob VALUES ('tweet', sys.xmltype.createxml('<tweet id="t13"><corps><reponse idref="t42"/><message>reponds à la tweet 42 1er fois </message><references></references><taille> 8.5 </taille><type> Comic Sans MS </type><langue> English </langue><couleur>Noir</couleur></corps><url></url><OS> Windows 10 </OS><posGeo><pays> Etats-Unis </pays><ville> Miami </ville><coordonnees> -80.130045, 25.790654 </coordonnees></posGeo><Date><fuseauHoraire> UTC−4 </fuseauHoraire>1912300</Date><retweet> 0 </retweet><auteur idref="u33"><lien> https://twitter.com/My/</lien></auteur></tweet>') ); 

INSERT INTO tweeter_table_clob VALUES ('retweet', sys.xmltype.createxml('<retweet id="rt14"><corps><references><reference idref="t42"></reference></references></corps><url></url><OS> Windows 10 </OS><posGeo><pays> Etats-Unis </pays><ville> Miami </ville><coordonnees> -80.130045, 25.790654 </coordonnees></posGeo><Date><fuseauHoraire> UTC−4 </fuseauHoraire>1912366</Date><auteur idref="u22"><lien> https://twitter.com/ClubMTVUK/ </lien></auteur></retweet>') ); 

INSERT INTO tweeter_table_clob VALUES ('retweet', sys.xmltype.createxml('<retweet id="rt15"><corps><references><reference idref="t42"></reference></references></corps><url></url><OS> Windows 10 </OS><posGeo><pays> Etats-Unis </pays><ville> Miami </ville><coordonnees> -80.130045, 25.790654 </coordonnees></posGeo><Date><fuseauHoraire> UTC−4 </fuseauHoraire>1912366</Date><auteur idref="u96"><lien> https://twitter.com/Khang/ </lien></auteur></retweet>') ); 

INSERT INTO tweeter_table_clob VALUES ('tweet', sys.xmltype.createxml('<tweet id="t16"><corps><reponse idref="t42"/><message> reponds à la tweet 42  </message><references></references><taille> 8.5 </taille><type> Comic Sans MS </type><langue> English </langue><couleur>Noir</couleur></corps><url></url><OS> Windows 10 </OS><posGeo><pays> Etats-Unis </pays><ville> Miami </ville><coordonnees> -80.130045, 25.790654 </coordonnees></posGeo><Date><fuseauHoraire> UTC−4 </fuseauHoraire>1912306</Date><retweet> 0 </retweet><auteur idref="u42"><lien> https://twitter.com/TF1/</lien></auteur></tweet>') ); 

INSERT INTO tweeter_table_clob VALUES ('tweet', sys.xmltype.createxml('<tweet id="t15"><corps><message> .@example absolutely smashed it at #mtvlivelockdown! Catch him at the official @clubmtvuk after party tonight @ 10pm </message><hashtags><hashtag> #mtvlivelockdown </hashtag></hashtags><references></references><taille> 8.5 </taille><type> Comic Sans MS </type><langue> English </langue><couleur>Noir</couleur></corps><url></url><OS> Windows 10 </OS><posGeo><pays> Etats-Unis </pays><ville> Miami </ville><coordonnees> -80.130045, 25.790654 </coordonnees></posGeo><Date><fuseauHoraire> UTC−4 </fuseauHoraire>1912302</Date><retweet>0</retweet><auteur idref="u41"><lien> https://twitter.com/TF1/ </lien></auteur></tweet>') ); 

INSERT INTO tweeter_table_clob VALUES ('utilisateur', sys.xmltype.createxml('<utilisateur id="u22"><nom> MTV Music </nom><description> Official account </description><photo>  https://twitter.com/MTVMusicUK/profile_picture.png </photo><nbfollowers> 18000 </nbfollowers><nbfollowed> 257 </nbfollowed></utilisateur>') ); 

INSERT INTO tweeter_table_clob VALUES ('utilisateur', sys.xmltype.createxml('<utilisateur id="u41"><nom> TF1 </nom><description> Official Account TF1 </description><photo>  https://twitter.com/TF1/profile_picture.png </photo><nbfollowers> 30000 </nbfollowers><nbfollowed> 123 </nbfollowed></utilisateur>') ); 

INSERT INTO tweeter_table_clob VALUES ('utilisateur', sys.xmltype.createxml('<utilisateur id="u42"><nom>ClubMTVUK</nom><description> clubmtvuk </description><photo>  https://twitter.com/clubmtvuk/profile_picture.png </photo><nbfollowers> 27589 </nbfollowers><nbfollowed> 332 </nbfollowed></utilisateur>') ); 

INSERT INTO tweeter_table_clob VALUES ('utilisateur', sys.xmltype.createxml('<utilisateur id="u96"><nom>Khang</nom><description> Utilisateur banale </description><photo>  https://twitter.com/Khang/profile_picture.png </photo><nbfollowers> 27589 </nbfollowers><nbfollowed> 332 </nbfollowed></utilisateur>') ); 

INSERT INTO tweeter_table_clob VALUES ('utilisateur', sys.xmltype.createxml('<utilisateur id="u33"><nom>My</nom><description> Utilisateur X </description><photo>  https://twitter.com/My/profile_picture.png </photo><nbfollowers> 99999 </nbfollowers><nbfollowed> 332 </nbfollowed></utilisateur>') ); 




SELECT EXTRACT (colonne_xml, '//utilisateur') FROM tweeter_table_clob;
SELECT EXTRACT (colonne_xml, '//tweet') FROM tweeter_table_clob;
SCREATE TABLE tweeter_table_clob (colonne_texte VARCHAR(20), colonne_xml XMLTYPE) XMLTYPE colonne_xml STORE AS CLOB;

INSERT INTO tweeter_table_clob VALUES ('tweet', sys.xmltype.createxml('<tweet id="t42"><corps><message> .@example absolutely smashed it at #mtvlivelockdown! Catch him at the official @clubmtvuk after party tonight @ 10pm </message><hashtags><hashtag> #mtvlivelockdown </hashtag><hashtag> #heheXD!</hashtag><hashtag> #I&lt;3XML</hashtag></hashtags><references><reference idref="u96"></reference><reference idref="u33"></reference></references><taille> 8.5 </taille><type> Comic Sans MS </type><langue>English </langue><couleur>Noir</couleur></corps><url></url><OS> Windows 10 </OS><posGeo><pays> Etats-Unis </pays><ville> Miami </ville><coordonnees> -80.130045, 25.790654 </coordonnees></posGeo><Date><fuseauHoraire> UTC−4 </fuseauHoraire>1912310</Date><retweet> 2 </retweet><auteur idref="u41"><lien> https://twitter.com/TF1/ </lien></auteur></tweet>') ); 

INSERT INTO tweeter_table_clob VALUES ('tweet', sys.xmltype.createxml('<tweet id="t12"><corps><message>  #I&lt;3XML </message><hashtags><hashtag> #I&lt;3XML </hashtag></hashtags><references></references><taille> 8.5 </taille><type> Comic Sans MS </type><langue> English </langue><couleur>Noir</couleur></corps><url></url><OS> Windows 10 </OS><posGeo><pays> Etats-Unis </pays><ville> Miami </ville><coordonnees> -80.130045, 25.790654 </coordonnees></posGeo><Date><fuseauHoraire> UTC−4 </fuseauHoraire>1912330</Date><retweet> 0 </retweet><auteur idref="u22"><lien> https://twitter.com/MTVMusicUK/ </lien></auteur></tweet>') ); 

INSERT INTO tweeter_table_clob VALUES ('tweet', sys.xmltype.createxml('<tweet id="t13"><corps><reponse idref="t42"/><message>reponds à la tweet 42 1er fois </message><references></references><taille> 8.5 </taille><type> Comic Sans MS </type><langue> English </langue><couleur>Noir</couleur></corps><url></url><OS> Windows 10 </OS><posGeo><pays> Etats-Unis </pays><ville> Miami </ville><coordonnees> -80.130045, 25.790654 </coordonnees></posGeo><Date><fuseauHoraire> UTC−4 </fuseauHoraire>1912300</Date><retweet> 0 </retweet><auteur idref="u33"><lien> https://twitter.com/My/</lien></auteur></tweet>') ); 

INSERT INTO tweeter_table_clob VALUES ('retweet', sys.xmltype.createxml('<retweet id="rt14"><corps><references><reference idref="t42"></reference></references></corps><url></url><OS> Windows 10 </OS><posGeo><pays> Etats-Unis </pays><ville> Miami </ville><coordonnees> -80.130045, 25.790654 </coordonnees></posGeo><Date><fuseauHoraire> UTC−4 </fuseauHoraire>1912366</Date><auteur idref="u22"><lien> https://twitter.com/ClubMTVUK/ </lien></auteur></retweet>') ); 

INSERT INTO tweeter_table_clob VALUES ('retweet', sys.xmltype.createxml('<retweet id="rt15"><corps><references><reference idref="t42"></reference></references></corps><url></url><OS> Windows 10 </OS><posGeo><pays> Etats-Unis </pays><ville> Miami </ville><coordonnees> -80.130045, 25.790654 </coordonnees></posGeo><Date><fuseauHoraire> UTC−4 </fuseauHoraire>1912366</Date><auteur idref="u96"><lien> https://twitter.com/Khang/ </lien></auteur></retweet>') ); 

INSERT INTO tweeter_table_clob VALUES ('tweet', sys.xmltype.createxml('<tweet id="t16"><corps><reponse idref="t42"/><message> reponds à la tweet 42  </message><references></references><taille> 8.5 </taille><type> Comic Sans MS </type><langue> English </langue><couleur>Noir</couleur></corps><url></url><OS> Windows 10 </OS><posGeo><pays> Etats-Unis </pays><ville> Miami </ville><coordonnees> -80.130045, 25.790654 </coordonnees></posGeo><Date><fuseauHoraire> UTC−4 </fuseauHoraire>1912306</Date><retweet> 0 </retweet><auteur idref="u42"><lien> https://twitter.com/TF1/</lien></auteur></tweet>') ); 

INSERT INTO tweeter_table_clob VALUES ('tweet', sys.xmltype.createxml('<tweet id="t15"><corps><message> .@example absolutely smashed it at #mtvlivelockdown! Catch him at the official @clubmtvuk after party tonight @ 10pm </message><hashtags><hashtag> #mtvlivelockdown </hashtag></hashtags><references></references><taille> 8.5 </taille><type> Comic Sans MS </type><langue> English </langue><couleur>Noir</couleur></corps><url></url><OS> Windows 10 </OS><posGeo><pays> Etats-Unis </pays><ville> Miami </ville><coordonnees> -80.130045, 25.790654 </coordonnees></posGeo><Date><fuseauHoraire> UTC−4 </fuseauHoraire>1912302</Date><retweet>0</retweet><auteur idref="u41"><lien> https://twitter.com/TF1/ </lien></auteur></tweet>') ); 

INSERT INTO tweeter_table_clob VALUES ('utilisateur', sys.xmltype.createxml('<utilisateur id="u22"><nom> MTV Music </nom><description> Official account </description><photo>  https://twitter.com/MTVMusicUK/profile_picture.png </photo><nbfollowers> 18000 </nbfollowers><nbfollowed> 257 </nbfollowed></utilisateur>') ); 

INSERT INTO tweeter_table_clob VALUES ('utilisateur', sys.xmltype.createxml('<utilisateur id="u41"><nom> TF1 </nom><description> Official Account TF1 </description><photo>  https://twitter.com/TF1/profile_picture.png </photo><nbfollowers> 30000 </nbfollowers><nbfollowed> 123 </nbfollowed></utilisateur>') ); 

INSERT INTO tweeter_table_clob VALUES ('utilisateur', sys.xmltype.createxml('<utilisateur id="u42"><nom>ClubMTVUK</nom><description> clubmtvuk </description><photo>  https://twitter.com/clubmtvuk/profile_picture.png </photo><nbfollowers> 27589 </nbfollowers><nbfollowed> 332 </nbfollowed></utilisateur>') ); 

INSERT INTO tweeter_table_clob VALUES ('utilisateur', sys.xmltype.createxml('<utilisateur id="u96"><nom>Khang</nom><description> Utilisateur banale </description><photo>  https://twitter.com/Khang/profile_picture.png </photo><nbfollowers> 27589 </nbfollowers><nbfollowed> 332 </nbfollowed></utilisateur>') ); 

INSERT INTO tweeter_table_clob VALUES ('utilisateur', sys.xmltype.createxml('<utilisateur id="u33"><nom>My</nom><description> Utilisateur X </description><photo>  https://twitter.com/My/profile_picture.png </photo><nbfollowers> 99999 </nbfollowers><nbfollowed> 332 </nbfollowed></utilisateur>') ); 




SELECT EXTRACT (colonne_xml, '//utilisateur') FROM tweeter_table_clob;
SELECT EXTRACT (colonne_xml, '//tweet') FROM tweeter_table_clob;
SELECT EXTRACT (colonne_xml, '//tweet[@id ="t16"]') FROM tweeter_table_clob;
SELECT EXTRACT (colonne_xml, '/tweet[auteur/@idref = "u42"]') FROM tweeter_table_clob;
SELECT EXTRACT (colonne_xml, '/tweet[corps/hashtags/hashtag[contains(., "#heheXD!")]]') FROM tweeter_table_clob;

SELECT XMLQUERY ('for $x in //tweet return ($x, //utilisateur[@id = $x/auteur/@idref])' PASSING colonne_xml RETURNING CONTENT) FROM tweeter_table_clob;
SELECT XMLQUERY ('for $x in //utilisateur order by $x return $x' PASSING colonne_xml RETURNING CONTENT) FROM tweeter_table_clob;
SELECT XMLQUERY ('let $y := min(//tweet/Date/text()) return $y' PASSING colonne_xml RETURNING CONTENT) FROM tweeter_table_clob;
SELECT XMLQUERY ('for $x in //tweet let $y := /$x/corps/hashtags return ($x, $y)' PASSING colonne_xml RETURNING CONTENT) FROM tweeter_table_clob;
SELECT XMLQUERY ('for $x in //tweet return ($x, //utilisateur[@id = $x/auteur/@idref])' PASSING colonne_xml RETURNING CONTENT) FROM tweeter_table_clob;


