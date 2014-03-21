package serviceImpl;

import java.util.List;

import daoInterface.ApprovalDaoInterface;
import daoInterface.ClaimDaoInterface;

import entity.Approval;
import serviceInterface.ApprovalServiceInterface;

public class ApprovalServiceImpl implements ApprovalServiceInterface {

	private ApprovalDaoInterface adi;
	
	public ApprovalDaoInterface getAdi() {
		return adi;
	}

	public void setAdi(ApprovalDaoInterface adi) {
		this.adi = adi;
	}

	public void AddApproval(Approval a) {
           adi.AddApproval(a);
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
