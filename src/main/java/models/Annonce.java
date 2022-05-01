package models;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class Annonce {
    private int id;
    private Client possesseur;
    private String type ;        //vente ou location ou demande
    private long dateDePub;

    public Annonce(int id, Client possesseur, String type, long dateDePub) {
        this.id = id;
        this.possesseur = possesseur;
        this.type = type;
        this.dateDePub = dateDePub;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Client getPossesseur() {
        return possesseur;
    }

    public void setPossesseur(Client possesseur) {
        this.possesseur = possesseur;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public long getDateDePub() {
        return dateDePub;
    }

    public void setDateDePub(long dateDePub) {
        this.dateDePub = dateDePub;
    }

    @Override
    public String toString() {
        return "Annonce{" +
                "id=" + id +
                ", possesseur=" + possesseur +
                ", type='" + type + '\'' +
                ", dateDePub=" + dateDePub +
                '}';
    }
}