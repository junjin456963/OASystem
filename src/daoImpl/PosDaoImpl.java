package daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import daoInterface.PosDaoInterface;
import entity.Department;
import entity.Employee;
import entity.Position;

public class PosDaoImpl extends HibernateDaoSupport implements PosDaoInterface {

	public Position FindById(Position p) {
		System.out.println("loginStart");

		Position pos=null;
		
		
		try {
			String queryString="from Position p where p.postId =?";	
			List<Position> users = this.getHibernateTemplate().find(queryString,p.getPostId());
			System.out.println(users.size()+"login finish");
			
			if (users.size()>0){
				pos = users.get(0);
			}
			else{
				return pos;
			}
		} catch (Exception e2) {
			System.out.println(e2.toString());
		}
		
		return pos;
	}

	public List<Position> findAllPoss() {
		String hql="from Position";
		List<Position> list=this.getHibernateTemplate().find(hql);
		
		return list;
	}

	public void AddPos(Position p) {
		try{   
			this.getHibernateTemplate().save(p);
			}catch(Exception excep){
				System.out.println(excep.toString());
			}
			return;
	}

	public Position FindByName(Position p) {
		
		System.out.println("FindByName");
		Position pos=null;
		try {
			String queryString="from Position p where p.postName =?";	
			List<Position> users = this.getHibernateTemplate().find(queryString,p.getPostName());
			System.out.println(users.size()+"FindByName finish");
			
			if (users.size()>0){
				pos = users.get(0);
			}
			else{
				return pos;
			}
		} catch (Exception e2) {
			System.out.println(e2.toString());
		}
		return pos;
	}

	public List<Position> ListAllPoByEid(int itemOfStart, int i) {
		
		System.out.println("begin list all");
		String hql = "from Position";
	    Query query=this.getSession().createQuery(hql);	    
	    query.setFirstResult(itemOfStart);
	    query.setMaxResults(i);
	    List<Position> rs = query.list();
	    System.out.println("end");
		return rs;
	}

}
