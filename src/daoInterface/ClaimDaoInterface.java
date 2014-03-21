package daoInterface;

import java.util.Date;
import java.util.List;

import entity.Claim;
import entity.Employee;

public interface ClaimDaoInterface {
	public void AddClaim(Claim c);
	public List<Claim> FindAllClaim();
	public boolean DeleteClaim(Claim c);
	public Claim FindByIdClaim(Claim c);
	public Claim FindByDateClaim(Claim c);
	public List<Claim> FindByClaimState(Claim c);
	public List<Claim> CheckClaim(Claim c);
	public List<Claim> FindByEmpIdClaim(Claim c);
	public boolean ModifyClaim(Claim c);
	public List<Claim> ListAllClByEid(Long empId, int itemOfStart, int j);

}
