package serviceInterface;

import java.util.List;

import entity.Position;



public interface PosServiceInterface {

	public void AddPos(Position p);
	public List<Position> FindAllPos();
	public Position FindById(Position p);
	public Position FindByName(Position p);
	public boolean IsExistById(Position p);
	public boolean ModifyPos(Position p);
	public boolean DeletePos(Position p);
	public List<Position> ListAllPoByEid(int itemOfStart, int i);
	
}
