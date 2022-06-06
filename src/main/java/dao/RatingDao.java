package dao;

import models.Rating;

import java.util.List;

public interface RatingDao {
    boolean addRating(Rating r);
    boolean deleteRating(int idr);
    List<Rating> getRatings(int id_client);
    double getRatingCalc(int id_client);
}
