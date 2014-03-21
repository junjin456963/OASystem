package daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import daoInterface.EmpDaoInterface;
import entity.Employee;


public class EmpDaoImpl  extends HibernateDaoSupport implements EmpDaoInterface{

//*********************************方法开始
	public List<Employee> findAllEmps() {
		String hql="from Employee";
		List<Employee> list=this.getHibernateTemplate().find(hql);

		return list;
	}

	public Employee login(Employee emp) {
		System.out.println("loginStart");
		//findAllEmps();
		Employee e=null;
		
		try {
			String queryString="from Employee e where e.empId =? and e.empPw=?";	
			List<Employee> users = this.getHibernateTemplate().find(queryString,new Object[]{emp.getEmpId(),emp.getEmpPw()});

			System.out.println(users.size()+"login finish");
			
			if (users.size()>0){
				e = users.get(0);
			}
			else{
				return e;
			}
		} catch (Exception e2) {
			System.out.println(e2.toString());
		}
		return e;
	}

	public void AddEmp(Employee e) {
		try{   
		this.getHibernateTemplate().save(e);
		}catch(Exception excep){
			System.out.println(excep.toString());
		}
		return;
	}

	public boolean DeleteEmp(Employee e) {
		try {
			this.getHibernateTemplate().delete(e);
		} catch (Exception e2) {
			System.out.println(e2.toString());
			return false;
		}
		return true;
	}

	public Employee FindById(Employee e) {
		System.out.println("FindByIdEmp Start");
		Employee emp=null;
		
		try {
			String queryString="from Employee e where e.empId =?";	
			List<Employee> users = this.getHibernateTemplate().find(queryString,e.getEmpId());

			System.out.println(users.size()+"FindByIdEmp finish");
			
			if (users.size()>0){
				emp = users.get(0);
			}
			else{
				return emp;
			}
		} catch (Exception e2) {
			System.out.println(e2.toString());
		}
		return emp;
	}

	public boolean IsExistById(Employee e) {

		return false;
	}

	public boolean ModifyEmp(Employee e) {
		
		try {
			this.getHibernateTemplate().update(e);
		} catch (Exception e2) {
			System.out.println(e2.toString());
			return false;
		}
		
		return true;
	}

	public Employee FindByPosId(Employee e) {
		System.out.println("FindByPosId Start");
		Employee emp=null;
		
		try {
			String queryString="from Employee e where e.position.posId =?";	
			List<Employee> users = this.getHibernateTemplate().find(queryString,e.getPosition().getPostId());
			
			if (users.size()>0){
				emp = users.get(0);
			}
			else{
				return emp;
			}
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		return emp;
	}

	public List<Employee> ListAllEmByEid(int itemOfStart, int i) {
		System.out.println("begin list all");
		String hql = "from Employee";
	    Query query=this.getSession().createQuery(hql);	    
	    query.setFirstResult(itemOfStart);
	    query.setMaxResults(i);
	    List<Employee> rs = query.list();
	    System.out.println("end");
		return rs;
	}

}
