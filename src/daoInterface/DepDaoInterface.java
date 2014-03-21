package daoInterface;

import java.util.List;
import entity.Department;

public interface DepDaoInterface {
	public Department FindById(Department d);
	public List<Department> findAllDeps();
	public void Add(Department dep);
	public boolean DeleteDep(Department d);
	public boolean ModifyDep(Department d);
	public List<Department> ListAllDeByEid(int itemOfStart, int i);

}
