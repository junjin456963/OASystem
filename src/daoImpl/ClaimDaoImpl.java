package daoImpl;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import daoInterface.ClaimDaoInterface;
import entity.Claim;

import entity.Department;
import entity.Employee;

public class ClaimDaoImpl extends HibernateDaoSupport implements ClaimDaoInterface {

	public void AddClaim(Claim c) {
		try{   
			this.getHibernateTemplate().save(c);
			}catch(Exception excep){
				System.out.println(excep.toString());
			}
			List<Claim> list=this.getHibernateTemplate().findByExample(c);
//			this.getHibernateTemplate().f
			System.out.println("claimDao"+list.size());
//			System.out.println(list.get(0).getClaId());
			
			return;
	}

	public boolean DeleteClaim(Claim c) {
		try {
			this.getHibernateTemplate().delete(c);
		} catch (Exception e2) {
			System.out.println(e2.toString());
			return false;
		}
		return true;
	}

	public List<Claim> FindAllClaim() {
		String hql="from Claim";
		List<Claim> list=this.getHibernateTemplate().find(hql);
		return list;
	}

	public Claim FindByIdClaim(Claim c) {
		System.out.println("FindByIdClaim Start");
		Claim cla = null;
		
		try {
			String queryString="from Claim c where c.claId =?";	
			List<Claim> users = this.getHibernateTemplate().find(queryString,c.getClaId());
			System.out.println(users.size()+"FindByIdClaim finish");
			
			if (users.size()>0){
				cla = users.get(0);
			}
			else{
				return cla;
			}
		} catch (Exception e2) {
			System.out.println(e2.toString());
		}
		return cla;
	}

	public Claim FindByDateClaim(Claim c) {
		Claim cla = null;
		
		try {
			String queryString="from Claim c where c.claMoney =? and c.employee.empId =?";	
			List<Claim> users = this.getHibernateTemplate().find(queryString,new Object[]{c.getClaMoney(),c.getEmployee().getEmpId()});
			System.out.println(users.size()+"FindByDateClaim finish");
			
			if (users.size()>0){
				cla = users.get(0);
//				System.out.println("claim_time="+cla.getClaTime());
			}
			else{
				return cla;
			}
		} catch (Exception e2) {
			System.out.println(e2.toString());
		}
		return cla;
	}

	public List<Claim> FindByClaimState(Claim c) {
		List<Claim> users  = null;
		try {
			String queryString="from Claim c where c.state =?";	
			 users = this.getHibernateTemplate().find(queryString,c.getState());
			System.out.println(users.size()+"FindByClaimState finish");
			
		} catch (Exception e2) {
			System.out.println(e2.toString());
		}
		return users;
	}

	public List<Claim> CheckClaim(Claim c) {
		List<Claim> users  = null;
		System.out.println("CheckClaim start");
		System.out.println(c.getState()+" " +c.getEmployee().getDepartment().getDepId());
		try {
			String queryString="from Claim c where c.state =? and c.employee.department.depId =?";	
			 users = this.getHibernateTemplate().find(queryString,new Object[]{c.getState(),c.getEmployee().getDepartment().getDepId()});
			System.out.println(users.size()+"CheckClaim finish");
			
		} catch (Exception e2) {
			System.out.println(e2.toString());
		}
		return users;
	}

	public boolean ModifyClaim(Claim c) {
		try {
			this.getHibernateTemplate().update(c);
		} catch (Exception e2) {
			System.out.println(e2.toString());
			return false;
		}
		
		return true;
	}

	public List<Claim> FindByEmpIdClaim(Claim c) {
		List<Claim> users  = null;
		System.out.println("FindByEmpIdClaim start");
		try {
			String queryString="from Claim c where c.employee.empId =?";	
			 users = this.getHibernateTemplate().find(queryString,c.getEmployee().getEmpId());
			System.out.println(users.size()+"FindByEmpIdClaim finish");
			
		} catch (Exception e2) {
			System.out.println(e2.toString());
		}
		return users;
	}



	public List<Claim> ListAllClByEid(Long empId, int itemOfStart, int j) {
		// TODO Auto-generated method stub
		System.out.println("ListAllclbyeid strat");
		String hql = "from Claim where employee.empId =?";
	    Query query=this.getSession().createQuery(hql);
	    query.setParameter(0, empId);
	    query.setFirstResult(itemOfStart);
	    query.setMaxResults(j);
	    List<Claim> rs = query.list();
	    System.out.println("list end");
		return rs;
	}

}
