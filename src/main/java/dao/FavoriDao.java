package dao;

import models.Favori;

import java.util.List;

public interface FavoriDao {
    boolean addFavori(Favori f);
    boolean deleteFavori(int idf);
    List<Favori> getFavoris();
    List<Favori> getFavoris(int id_client);
}






//    boolean deleteFavoris(String ids);
//    Favori getFavori(int idc);