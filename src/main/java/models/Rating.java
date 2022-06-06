package models;

public class Rating {
    private int id;
    private Client rater;
    private Client rated;
    private float rating;
    private String comment;

    public Rating(Client rater, Client rated, float rating, String comment) {
        this.rater = rater;
        this.rated = rated;
        this.rating = rating;
        this.comment = comment;
    }

    public Rating(int id, Client rater, Client rated, float rating, String comment) {
        this.id = id;
        this.rater = rater;
        this.rated = rated;
        this.rating = rating;
        this.comment = comment;
    }

    public Rating(Client rater, Client rated, float rating) {
        this.rater = rater;
        this.rated = rated;
        this.rating = rating;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Client getRater() {
        return rater;
    }

    public void setRater(Client rater) {
        this.rater = rater;
    }

    public Client getRated() {
        return rated;
    }

    public void setRated(Client rated) {
        this.rated = rated;
    }

    public float getRating() {
        return rating;
    }

    public void setRating(float rating) {
        this.rating = rating;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override
    public String toString() {
        return "Rating{" +
                "rater=" + rater +
                ", rated=" + rated +
                ", rating=" + rating +
                ", comment='" + comment + '\'' +
                '}';
    }
}
