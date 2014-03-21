package serviceImpl;

import java.util.List;
import javax.annotation.Resource;
import daoInterface.EmpDaoInterface;
import entity.Employee;
import serviceInterface.EmpServiceInterface;


public class EmpServiceImpl implements EmpServiceInterface {

	private EmpDaoInterface edi;
	
	public EmpDaoInterface getEdi() {
		return edi;
	}

	public void setEdi(EmpDaoInterface edi) {
		this.edi = edi;
	}

	//*****************方法开始
	public boolean DeleteEmp(Employee e) {
		// TODO Auto-generated method stub
		return edi.DeleteEmp(e);
	}

	public List<Employee> FindAllEmp() {
		// TODO Auto-generated method stub
		return edi.findAllEmps();
	}

	public Employee FindById(Employee e) {
		// TODO Auto-generated method stub
		return edi.FindById(e);
	}
	public Employee FindByPosId(Employee e) {
		// TODO Auto-generated method stub
		return edi.FindByPosId(e);
	}
	public boolean IsExistById(Employee e) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean ModifyEmp(Employee e) {
		// TODO Auto-generated method stub
		return edi.ModifyEmp(e);
	}

	public Employee login(Employee e) {
		return edi.login(e);
	}

	public void AddEmp(Employee e) {
		edi.AddEmp(e);
		return ;
	}

	public List<Employee> ListAllEmByEid(int itemOfStart, int i) {
		// TODO Auto-generated method stub
		
		return edi.ListAllEmByEid(itemOfStart, i);
	}



}
