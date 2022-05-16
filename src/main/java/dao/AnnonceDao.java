package dao;

import models.Annonce;

import java.util.List;

public interface AnnonceDao {
    boolean addAnnonce(Annonce c);
    boolean updateAnnonce(Annonce c);
    boolean deleteAnnonce(int idc);
    boolean deleteAnnonces(String ids);
    Annonce getAnnonce(int idc);
    boolean deleteAnnonce(String ids);

    List<Annonce> getAnnonces();
}
