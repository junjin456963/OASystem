package serviceImpl;

import java.util.List;

import daoInterface.EmpDaoInterface;
import daoInterface.PosDaoInterface;

import entity.Position;
import serviceInterface.PosServiceInterface;

public class PosServiceImpl implements PosServiceInterface {

	private PosDaoInterface pdi;
	
	public PosDaoInterface getPdi() {
		return pdi;
	}

	public void setPdi(PosDaoInterface pdi) {
		this.pdi = pdi;
	}

	public boolean DeletePos(Position p) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Position> FindAllPos() {
		// TODO Auto-generated method stub
		return pdi.findAllPoss();
	}

	public Position FindById(Position p) {
		// TODO Auto-generated method stub
		return pdi.FindById(p);
	}

	public boolean IsExistById(Position p) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean ModifyPos(Position p) {
		// TODO Auto-generated method stub
		return false;
	}

	public void AddPos(Position p) {
		pdi.AddPos(p);
		
	}

	public Position FindByName(Position p) {
		// TODO Auto-generated method stub
		return pdi.FindByName(p);
	}

	public List<Position> ListAllPoByEid(int itemOfStart, int i) {
		// TODO Auto-generated method stub
		return pdi.ListAllPoByEid(itemOfStart,i);
	}

}
