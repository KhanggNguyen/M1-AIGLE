//Participants : TRAN Thi Tra My - NGUYEN Huu Khang

package share;

import java.io.*;
import java.rmi.Remote;

public class Espece implements Serializable{
	private String nom;
	private Integer dureeDeVie;
	
	public Espece(String nom, Integer dureeDeVie) {
		this.nom = nom;
		this.dureeDeVie = dureeDeVie;
	}
	
	public String getNom() {
		return nom;
	}
	
	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public Integer getDureeDeVie() {
		return dureeDeVie;
	}
	
	public void setDureeDeVie(Integer dureeDeVie) {
		this.dureeDeVie = dureeDeVie;
	}
	
	@Override
	public String toString() {
		return "Espece [nom=" + nom + ", dureeDeVie=" + dureeDeVie + "]";
	}
	
	
}
