package daoImpl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import daoInterface.ApprovalDaoInterface;
import entity.Approval;
import entity.Claim;

public class ApprovalDaoImpl extends HibernateDaoSupport implements ApprovalDaoInterface {

	public void AddApproval(Approval a) {
		try{   
			this.getHibernateTemplate().save(a);
			}catch(Exception excep){
				System.out.println(excep.toString());
			}
			List<Approval> list=this.getHibernateTemplate().findByExample(a);
			System.out.println("ApprovalDao = "+list.size());	
			return;
	}

	public boolean DeleteApproval(Approval a) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Approval> FindAllApproval() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Approval> FindByClaimState(Approval a) {
		// TODO Auto-generated method stub
		return null;
	}

	public Approval FindByIdApproval(Approval a) {
		// TODO Auto-generated method stub
		return null;
	}

}
