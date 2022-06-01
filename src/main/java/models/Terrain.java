package models;

public class Terrain {
    private int id;
    private double latitude;
    private double longitude;
    private String region;
    private String ville;
    private String adresse;

    public Terrain() {
    }

    public Terrain(int id, double latitude, double longitude, String region, String ville, String adresse) {
        this.id = id;
        this.latitude = latitude;
        this.longitude = longitude;
        this.region = region;
        this.ville = ville;
        this.adresse = adresse;
    }
    public Terrain(double latitude, double longitude, String region, String ville , String adresse) {
        this.latitude = latitude;
        this.longitude = longitude;
        this.region = region;
        this.ville = ville;
        this.adresse = adresse;

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

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }
}
