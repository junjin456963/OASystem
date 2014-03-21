package daoInterface;

import java.util.List;

import entity.Position;

public interface PosDaoInterface {
	public Position FindById(Position p);
	public Position FindByName(Position p);
	public List<Position> findAllPoss();
	public void AddPos(Position p);
	public List<Position> ListAllPoByEid(int itemOfStart, int i);
}
