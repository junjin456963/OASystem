package serviceImpl;

import java.util.List;

import daoInterface.DepDaoInterface;
import daoInterface.PosDaoInterface;

import entity.Department;
import serviceInterface.DepServiceInterface;

public class DepServiceImpl implements DepServiceInterface {

	private DepDaoInterface ddi;
	
	public DepDaoInterface getDdi() {
		return ddi;
	}

	public void setDdi(DepDaoInterface ddi) {
		this.ddi = ddi;
	}

	public boolean DeleteDep(Department d) {
		return ddi.DeleteDep(d);
	}

	public List<Department> FindAllDep() {
		// TODO Auto-generated method stub
		return ddi.findAllDeps();
	}

	public Department FindById(Department d) {
		// TODO Auto-generated method stub
		return ddi.FindById(d);
	}

	public boolean IsExistById(Department d) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean ModifyDep(Department d) {
		// TODO Auto-generated method stub
		return ddi.ModifyDep(d);
	}

	public void AddDep(Department dep) {
		// TODO Auto-generated method stub
		ddi.Add(dep);
		
	}

	public List<Department> ListAllDeByEid(int itemOfStart, int i) {
		// TODO Auto-generated method stub
		return ddi.ListAllDeByEid(itemOfStart,i);
	}

}
