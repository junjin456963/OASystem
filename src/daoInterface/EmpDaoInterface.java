package daoInterface;

import java.util.List;

import entity.Employee;

public interface EmpDaoInterface {
	public Employee login(Employee e);
	public List<Employee> findAllEmps();
	public void AddEmp(Employee e);
	public Employee FindById(Employee e);
    public Employee FindByPosId(Employee e);
	public boolean IsExistById(Employee e);
	public boolean ModifyEmp(Employee e);
	public boolean DeleteEmp(Employee e);
	public List<Employee> ListAllEmByEid(int itemOfStart, int i);
}
