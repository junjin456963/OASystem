package action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import serviceInterface.ClaimServiceInterface;
import serviceInterface.DetailServiceInterface;
import serviceInterface.PosServiceInterface;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import entity.Approval;
import entity.Claim;
import entity.Department;
import entity.Detail;
import entity.Employee;
import entity.Position;
import entity.ext;

public class ClaimAction extends ActionSupport {
	
	private ClaimServiceInterface csi;
	private PosServiceInterface psi;
	private DetailServiceInterface dsi;
	private Claim cla;
	private String select;
	private List<Claim> claimList;
	private List<Detail> detailList;
	private Long claId;
	
	public List<Detail> getDetailList() {
		return detailList;
	}

	public void setDetailList(List<Detail> detailList) {
		this.detailList = detailList;
	}
	public DetailServiceInterface getDsi() {
		return dsi;
	}

	public void setDsi(DetailServiceInterface dsi) {
		this.dsi = dsi;
	}
	public Long getClaId() {
		return claId;
	}

	public void setClaId(Long claId) {
		this.claId = claId;
	}

	public PosServiceInterface getPsi() {
		return psi;
	}

	public void setPsi(PosServiceInterface psi) {
		this.psi = psi;
	}

	public void setClaimList(List<Claim> claimList) {
		this.claimList = claimList;
	}

	public List<Claim> getClaimList() {
		return claimList;
	}

	public String getSelect() {
		return select;
	}

	public void setSelect(String select) {
		this.select = select;
	}

	public Claim getCla() {
		return cla;
	}

	public void setCla(Claim cla) {
		this.cla = cla;
	}

	public ClaimServiceInterface getCsi() {
		return csi;
	}

	public void setCsi(ClaimServiceInterface csi) {
		this.csi = csi;
	}

	public String execute(){
		Claim c = new Claim();
		c.setClaId(new Long(2));
		c = csi.FindByIdClaim(c);
		
		System.out.println("c->depId = "+c.getEmployee().getDepartment().getDepId());
		
		return "success";
	}
	
	//查看报销单就仅限查看自己
	public String FindClaimByState(){
		
      Employee emp1 = (Employee) ActionContext.getContext().getSession()
		    .get("employee");
		String pageNum = ServletActionContext.getRequest().getParameter(
		    "pageNum");
          
		System.out.println("pageNum11"+pageNum);
		
	
			
			
			System.out.println("pageNum"+pageNum);
			
			Claim claim = new Claim();
			claim.setEmployee(emp1);
			claimList = csi.FindByEmpIdClaim(claim);
           
			
		    List<Claim> rs = null;
		    if (pageNum == null) {
			rs = csi.ListAllClByEid(emp1.getEmpId(),0, 5);
		}
		else {
			int itemOfStart = (Integer.parseInt(pageNum) - 1) * 5 ;
			rs = csi.ListAllClByEid(emp1.getEmpId(), itemOfStart, 5);
		}	
		System.out.println("rs的长度"+rs.size());
		ActionContext.getContext().put("claimList1", rs);

		
		System.out.println("claimList长度 "+ claimList.size());
		int pageOfCount;
		if(claimList.size()%5 ==0)
		{
			pageOfCount = claimList.size() / 5;
		}
		else
		{
			pageOfCount = claimList.size() / 5 + 1;
		}

		ext count[] = new ext[20];

		List<ext> list = new ArrayList<ext>();

		for (int i = 1; i <= pageOfCount; i++) {

			String strCount = " " + i;
			list.add(new ext(i, strCount));

		}
		
		ActionContext.getContext().put("pageOfCount", list);
		ActionContext.getContext().put("Count", pageOfCount);
			
			
			
			

		
		//按权限跳转页面

	    if(emp1.getPosition().getPostName().equals("人事管理")){
 			return "administration";
		}else if(emp1.getPosition().getPostName().equals("总经理")){
			return "manager";
		}else if(emp1.getPosition().getPostName().equals("财务管理")){
			return "finance";
		}else if(emp1.getPosition().getPostName().equals("普通员工")){
			return "normal";
		}else if(emp1.getPosition().getPostName().equals("部门负责人")){
			return "manager";
		}
	 
	    return Action.SUCCESS;
	}
	//取得对应部门或总经理的报销单
	public String CheckClaim(){
		
		//先判断是总经理还是部门负责人
		ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        Employee e = (Employee)session.get("employee");
        
    	//判断是不是总经理，是不是负责人来 改写报销单状态
    	Position p = new Position();
    	p.setPostName("总经理");
    	p = psi.FindByName(p);
    	System.out.println("p="+e.getPosition().getPostId());
    	System.out.println("e="+e.getPosition().getPostId());
    	System.out.println(e.getPosition().getPostId().equals(e.getPosition().getPostId()));

    	try{
	    	if(e.getPosition().getPostId().equals(p.getPostId())){//president
	    	    //claim.employee.department.depId 和 state 来判断
	    		Claim claim = new Claim();
	    		claim.setState("审核中");
	    		claim.setEmployee(e);
	    		claimList = csi.CheckClaim(claim);
	    	}else if(e.getPosition().getPostName().equals("部门负责人")){//manager
	    		Claim claim = new Claim();
	    		claim.setState("提交");
	    		claim.setEmployee(e);
	    		claimList = csi.CheckClaim(claim);
	    	}else{
				System.out.println("have no manage or employee");
			}
    	}catch(Exception excep){
    		excep.printStackTrace();
    	}
		return "success";
	}
	
	//FindPayClaim
	public String FindPayClaim(){
		System.out.println("FindPayClaim Start");
		Claim claim = new Claim();
		claim.setState("合格");
		claimList = csi.FindByClaimState(claim);
		System.out.println("length = "+claimList.size());
		return "success";
	}
	
	public String CheckClaimDetail(){
		Detail de = new Detail();
		Claim claim = new Claim();
		claim.setClaId(claId);
		de.setClaim(claim);
		cla = csi.FindByIdClaim(claim);   //get claim
		detailList = dsi.FindByClaIdDetail(de); //get detailList
		
		System.out.println(cla.getClaTime());
		System.out.println(cla.getState());
		System.out.println(cla.getEmployee().getEmpName());
		System.out.println(cla.getClaMoney());
		return "success";
	}
	
	//财务付款
    public String ModifyPayCost(){
    	
		Claim claim = new Claim();
		claim.setClaId(claId);
		claim = csi.FindByIdClaim(claim);
		claim.setState("已付款");
		claim.setClaTime(new Date());
		csi.ModifyClaim(claim);
    	
    	return "success";
    }
    //删除报销单（状态:打回）
    public String DeleteClaim(){
    	System.out.println("删除报销单");
		Claim claim = new Claim();
		claim.setClaId(claId);
		claim = csi.FindByIdClaim(claim);
		csi.DeleteClaim(claim);
    	
		//按权限跳转页面
		ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        Employee emp1 = (Employee)session.get("employee");
	    if(emp1.getPosition().getPostName().equals("人事管理")){
 			return "administration";
		}else if(emp1.getPosition().getPostName().equals("总经理")){
			return "manager";
		}else if(emp1.getPosition().getPostName().equals("财务管理")){
			return "finance";
		}else if(emp1.getPosition().getPostName().equals("普通员工")){
			return "normal";
		}else if(emp1.getPosition().getPostName().equals("部门负责人")){
			return "manager";
		}
		
    	return null;
    }
}
