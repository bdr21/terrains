package models;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class Annonce {
    private int id;
    private Client possesseur;
    // video metadata
    private String title, description, tags, video_url;
    private int price;
    private long dateDePub;
    // contact info
    private String telephone_number, email, twitter, facebook, instagram;
    // localisation
    private double latitude, longitude;
    private String ville, region, adresse;

//    private String type ; //vente ou location ou demande

    public Annonce(int id, Client possesseur, String type, long dateDePub) {
        this.id = id;
        this.possesseur = possesseur;
        this.dateDePub = dateDePub;
//        this.type = type;
    }

    public Annonce(int id, Client possesseur, String title, String description, String tags, String video_url, int price, long dateDePub, String telephone_number, String email, String twitter, String facebook, String instagram, double latitude, double longitude, String ville, String region, String adresse) {
        this.id = id;
        this.possesseur = possesseur;
        this.title = title;
        this.description = description;
        this.tags = tags;
        this.video_url = video_url;
        this.price = price;
        this.dateDePub = dateDePub;
        this.telephone_number = telephone_number;
        this.email = email;
        this.twitter = twitter;
        this.facebook = facebook;
        this.instagram = instagram;
        this.latitude = latitude;
        this.longitude = longitude;
        this.ville = ville;
        this.region = region;
        this.adresse = adresse;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public String getVideo_url() {
        return video_url;
    }

    public void setVideo_url(String video_url) {
        this.video_url = video_url;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getTelephone_number() {
        return telephone_number;
    }

    public void setTelephone_number(String telephone_number) {
        this.telephone_number = telephone_number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTwitter() {
        return twitter;
    }

    public void setTwitter(String twitter) {
        this.twitter = twitter;
    }

    public String getFacebook() {
        return facebook;
    }

    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public String getInstagram() {
        return instagram;
    }

    public void setInstagram(String instagram) {
        this.instagram = instagram;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
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
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", tags='" + tags + '\'' +
                ", video_url='" + video_url + '\'' +
                ", price=" + price +
                ", dateDePub=" + dateDePub +
                ", telephone_number='" + telephone_number + '\'' +
                ", email='" + email + '\'' +
                ", twitter='" + twitter + '\'' +
                ", facebook='" + facebook + '\'' +
                ", instagram='" + instagram + '\'' +
                ", latitude=" + latitude +
                ", longitude=" + longitude +
                ", ville='" + ville + '\'' +
                ", region='" + region + '\'' +
                ", adresse='" + adresse + '\'' +
                '}';
    }
}