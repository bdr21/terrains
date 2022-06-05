package models;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Comparator;

public class Annonce {
    private int id;
    private Client possesseur;
    private Terrain terrain;
    // annonce metadata
    private String thumbnail, gallerie;
    private String title, description, tags, video_url;
    private int price;
    private Timestamp dateDePub;
    // contact info
    private String telephone_number, email, twitter, facebook, instagram;
    private String type;

    /*Comparator for sorting the list by Annonce Price*/
    public static Comparator<Annonce> annoncePriceComparatorAsc = new Comparator<Annonce>() {

        public int compare(Annonce s1, Annonce s2) {
            int priceAnnonce1 = s1.getPrice();
            int priceAnnonce2 = s2.getPrice();

            //ascending order
            return priceAnnonce1-priceAnnonce2;

            //descending order
            //return priceAnnonce2-priceAnnonce1;
        }};
    /*Comparator for sorting the list by Annonce Price*/
    public static Comparator<Annonce> annoncePriceComparatorDesc = new Comparator<Annonce>() {

        public int compare(Annonce s1, Annonce s2) {
            int priceAnnonce1 = s1.getPrice();
            int priceAnnonce2 = s2.getPrice();


            //descending order
            return priceAnnonce2-priceAnnonce1;
        }};


    public Annonce(int id, Client possesseur, String type, Timestamp dateDePub) {
        this.id = id;
        this.possesseur = possesseur;
        this.dateDePub = dateDePub;
        this.type = type;
    }
    public Annonce(int id, Client possesseur, Timestamp dateDePub) {
        this.id = id;
        this.possesseur = possesseur;
        this.dateDePub = dateDePub;

    }

    public Annonce(int id, Client possesseur, String title, String description, String tags, String video_url, String thumbnail, String gallerie, int price, Timestamp dateDePub, String telephone_number, String email, String twitter, String facebook, String instagram, Terrain terrain) {
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
        this.terrain = terrain;
        this.thumbnail = thumbnail;
        this.gallerie = gallerie;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getGallerie() {
        return gallerie;
    }

    public void setGallerie(String gallerie) {
        this.gallerie = gallerie;
    }

    public Terrain getTerrain() {
        return terrain;
    }

    public void setTerrain(Terrain terrain) {
        this.terrain = terrain;
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

    public Timestamp getDateDePub() {
        return dateDePub;
    }

    public void setDateDePub(Timestamp dateDePub) {
        this.dateDePub = dateDePub;
    }

    @Override
    public String toString() {
        return "Annonce{" +
                "id=" + id +
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
                ", terrain=" + terrain.toString() +
                ", possesseur=" + possesseur.toString() ;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}