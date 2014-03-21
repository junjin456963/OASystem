package serviceInterface;

import java.util.List;

import entity.Employee;


public interface EmpServiceInterface {
	public Employee login(Employee e);
	public void AddEmp(Employee e);
	public List<Employee> FindAllEmp();
	public Employee FindById(Employee e);
	public Employee FindByPosId(Employee e);
	public boolean IsExistById(Employee e);
	public boolean ModifyEmp(Employee e);
	public boolean DeleteEmp(Employee e);
	public List<Employee> ListAllEmByEid(int itemOfStart, int i);
}
