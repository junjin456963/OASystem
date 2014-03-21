package serviceInterface;

import java.util.List;

import entity.Department;

public interface DepServiceInterface {
	public List<Department> FindAllDep();
	public Department FindById(Department d);
	public boolean IsExistById(Department d);
	public boolean ModifyDep(Department d);
	public boolean DeleteDep(Department d);
	public void AddDep(Department dep);
	public List<Department> ListAllDeByEid(int itemOfStart, int i);
	
}
