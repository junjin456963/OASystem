package daoImpl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import daoInterface.DetailDaoInterface;
import entity.Claim;
import entity.Detail;

public class DetailDaoImpl extends HibernateDaoSupport implements DetailDaoInterface {

	public void AddDetail(Detail d) {
		try{   
			this.getHibernateTemplate().save(d);
			}catch(Exception excep){
				System.out.println(excep.toString());
			}
			return;
	}

	public boolean DeleteDetail(Detail d) {
		try {
			this.getHibernateTemplate().delete(d);
		} catch (Exception e2) {
			System.out.println(e2.toString());
			return false;
		}
		return true;
	}

	public List<Detail> FindAllDetail() {
		String hql="from Detail";
		List<Detail> list= this.getHibernateTemplate().find(hql);
		return list;
	}

	public Detail FindByIdDetail(Detail d) {
		System.out.println("FindByIdDetail Start");
		Detail det = null;
		
		try {
			String queryString="from Detail d where d.detId =?";	
			List<Detail> users = this.getHibernateTemplate().find(queryString,d.getDetId());
			System.out.println(users.size()+"FindByIdDetail finish");
			
			if (users.size()>0){
				det = users.get(0);
			}
			else{
				return det;
			}
		} catch (Exception e2) {
			System.out.println(e2.toString());
		}
		return det;
	}
	public List<Detail> FindByClaIdDetail(Detail d) {
		System.out.println("FindByClaIdDetail Start");
		List<Detail> users = null;
		try {
			String queryString="from Detail d where d.claim.claId =?";	
		    users = this.getHibernateTemplate().find(queryString,d.getClaim().getClaId());
			System.out.println(users.size()+"FindByClaIdDetail finish");
			
		} catch (Exception e2) {
			System.out.println(e2.toString());
		}
		return users;
	}
}
