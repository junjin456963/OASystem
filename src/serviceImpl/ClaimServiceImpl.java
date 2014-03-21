package serviceImpl;


import java.util.Date;
import java.util.List;

import daoInterface.ClaimDaoInterface;
import entity.Claim;
import entity.Employee;
import serviceInterface.ClaimServiceInterface;

public class ClaimServiceImpl implements ClaimServiceInterface {
	private ClaimDaoInterface cdi;

	public ClaimDaoInterface getCdi() {
		return cdi;
	}

	public void setCdi(ClaimDaoInterface cdi) {
		this.cdi = cdi;
	}
	
	public void AddClaim(Claim c) {
		cdi.AddClaim(c);
		return ;
	}
	public List<Claim> FindAllClaim() {
		return cdi.FindAllClaim();
	}

	public boolean DeleteClaim(Claim c) {
		return cdi.DeleteClaim(c);
	}

	public Claim FindByIdClaim(Claim c) {
		return cdi.FindByIdClaim(c);
	}

	public Claim FindByDateClaim(Claim c) {
		// TODO Auto-generated method stub
		return cdi.FindByDateClaim(c);
	}

	public List<Claim> FindByClaimState(Claim c) {
		// TODO Auto-generated method stub
		return cdi.FindByClaimState(c);
	}

	public List<Claim> CheckClaim(Claim c) {
		
		return cdi.CheckClaim(c);
	}

	public boolean ModifyClaim(Claim c) {
		return cdi.ModifyClaim(c);
	}

	public List<Claim> FindByEmpIdClaim(Claim c) {
		
		return cdi.FindByEmpIdClaim(c);
	}

	public List<Claim> ListAllClByEid(Long empId, int itemOfStart, int j) {
		// TODO Auto-generated method stub
		return cdi.ListAllClByEid(empId,itemOfStart, j);
	}

	
	

}
