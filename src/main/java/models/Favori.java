package models;

public class Favori {
    private int id;
    private int id_client;
    private Annonce annonce;

    public Favori(int id, int id_client, Annonce annonce) {
        this.id = id;
        this.id_client = id_client;
        this.annonce = annonce;
    }

    public Favori(int id_client, Annonce annonce) {
        this.id_client = id_client;
        this.annonce = annonce;
    }

    @Override
    public String toString() {
        return "Favori{" +
                "id=" + id +
                ", id_client=" + id_client +
                ", annonce=" + annonce +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_client() {
        return id_client;
    }

    public void setId_client(int id_client) {
        this.id_client = id_client;
    }

    public Annonce getAnnonce() {
        return annonce;
    }

    public void setAnnonce(Annonce annonce) {
        this.annonce = annonce;
    }
}
