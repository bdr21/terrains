package dao;

import models.Terrain;

import java.util.List;

public interface TerrainDao {
    boolean addTerrain(Terrain c);
    boolean updateTerrain(Terrain c);
    boolean deleteTerrain(int idc);
    Terrain getTerrain(int idc);
    Terrain getTerrain(double lat , double lon);
    List<Terrain> getTerrains();
}
