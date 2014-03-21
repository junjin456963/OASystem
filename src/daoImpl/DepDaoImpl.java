package daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import daoInterface.DepDaoInterface;
import entity.Department;
import entity.Employee;
import entity.Position;

public class DepDaoImpl  extends HibernateDaoSupport implements DepDaoInterface {

	public Department FindById(Department d) {
		System.out.println("FindByIdDep Start");
		Department dep =null;	
		try {
			String queryString="from Department d where d.depId =?";	
			List<Department> users = this.getHibernateTemplate().find(queryString,d.getDepId());
	
			
			if (users.size()>0){
				dep = users.get(0);
			}
			else{
				return dep;
			}
		} catch (Exception e2) {
			System.out.println(e2.toString());
		}
		return dep;
	}

	public List<Department> findAllDeps() {
		String hql="from Department";
		List<Department> list=this.getHibernateTemplate().find(hql);
		return list;	
		}

	public void Add(Department dep) {
		
		try{   
			this.getHibernateTemplate().save(dep);
			}catch(Exception excep){
				System.out.println(excep.toString());
			}
			return;
	}

	public boolean DeleteDep(Department d) {
		try {
			this.getHibernateTemplate().delete(d);
		} catch (Exception e2) {
			System.out.println(e2.toString());
			return false;
		}
		return true;
		// TODO Auto-generated method stub
		
	}

	public boolean ModifyDep(Department d) {
		try {
			this.getHibernateTemplate().update(d);
		} catch (Exception e2) {
			System.out.println(e2.toString());
			return false;
		}
		
		return true;

	}
	
	public List<Department> ListAllDeByEid(int itemOfStart, int i) {
		System.out.println("begin list all");
		String hql = "from Department";
	    Query query=this.getSession().createQuery(hql);	    
	    query.setFirstResult(itemOfStart);
	    query.setMaxResults(i);
	    List<Department> rs = query.list();
	    System.out.println("end");
		return rs;
	}

	

}
