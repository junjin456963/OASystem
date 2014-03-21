package serviceInterface;

import java.util.List;

import entity.Approval;

public interface ApprovalServiceInterface {
	public void AddApproval(Approval a);
	public List<Approval> FindAllApproval();
	public boolean DeleteApproval(Approval a);
	public Approval FindByIdApproval(Approval a);
	public List<Approval> FindByClaimState(Approval a);
}
