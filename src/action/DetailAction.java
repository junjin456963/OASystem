package action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.jms.Session;

import serviceInterface.ClaimServiceInterface;
import serviceInterface.DetailServiceInterface;
import serviceInterface.PosServiceInterface;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.Claim;
import entity.Detail;
import entity.Employee;
import entity.Position;

public class DetailAction extends ActionSupport {
	private DetailServiceInterface dsi;
	private ClaimServiceInterface csi;
	private PosServiceInterface psi;
	private Detail det;
	private Long claId;
	private List<Detail> detailList;
	private Claim claim;
	private String did;
	
	public String getDid() {
		return did;
	}
	public void setDid(String did) {
		this.did = did;
	}
	public Long getClaId() {
		return claId;
	}
	public void setClaId(Long claId) {
		this.claId = claId;
	}
	public List<Detail> getDetailList() {
		return detailList;
	}
	public void setDetailList(List<Detail> detailList) {
		this.detailList = detailList;
	}
	public Claim getClaim() {
		return claim;
	}
	public void setClaim(Claim claim) {
		this.claim = claim;
	}
	public PosServiceInterface getPsi() {
		return psi;
	}
	public void setPsi(PosServiceInterface psi) {
		this.psi = psi;
	}
	public ClaimServiceInterface getCsi() {
		return csi;
	}
	public void setCsi(ClaimServiceInterface csi) {
		this.csi = csi;
	}
	public Detail getDet() {
		return det;
	}

	public void setDet(Detail det) {
		this.det = det;
	}

	public DetailServiceInterface getDsi() {
		return dsi;
	}

	public void setDsi(DetailServiceInterface dsi) {
		this.dsi = dsi;
	}
    
	public String execute(){

		System.out.println("save detail start");
		List<Detail> detailList;
		Claim cla = new Claim();
		Long sum = new Long(0);
		
		ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        detailList = (List<Detail>)session.get("detailList");
        
        Employee e = (Employee)session.get("employee");
        
        if(detailList==null){
        	System.out.println("saveDetail null");
        	return "false";
        }else{
        	System.out.println("saveDetail not null");
        	//session总金额求出来
        	cla.setClaTime(new Date());
        	cla.setState("提交");	
        	cla.setEmployee((Employee)session.get("employee"));
        	for(Detail d:detailList)
	   		 {
	   		 	sum += d.getClaMoney();
	   		 }
        	cla.setClaMoney(sum);
        	
        	//判断是不是总经理，是不是负责人来 改写报销单状态
        	if(e.getPosition().getPostName().equals("总经理")){
        		cla.setState("合格");
        	}else{
        		//判断是不是负责人
        		if(e.getPosition().getPostName().equals("部门负责人")){
        			cla.setState("审核中");
        		}else{
        			//负责人
        			System.out.println("have no manage or employee");
        		}
        	}
        	
        	csi.AddClaim(cla);//save claim
        	cla = csi.FindByDateClaim(cla);//get claim_Id
        	for(Detail d:detailList)//save detail
	   		 {
        		d.setClaim(cla);
	   		 	dsi.AddDetail(d);
	   		 }
             //initail session
        	detailList = null;
        	cla = null;
        	session.put("claim", cla);
        	session.put("detailList", detailList);
        }
		
		//按权限跳转页面
		Employee emp =(Employee)session.get("employee");
		
	    if(emp.getPosition().getPostName().equals("人事管理")){
 			return "administration";
		}else if(emp.getPosition().getPostName().equals("总经理")){
			return "manager";
		}else if(emp.getPosition().getPostName().equals("财务管理")){
			return "finance";
		}else if(emp.getPosition().getPostName().equals("普通员工")){
			return "normal";
		}else if(emp.getPosition().getPostName().equals("部门负责人")){
			return "manager";
		}
        
		return "success";
	}
	public String SaveSession(){
		List<Detail> detailList;
        Claim cla;
		ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        detailList = (List<Detail>)session.get("detailList");
        cla = (Claim)session.get("claim");
        Employee emp = (Employee)session.get("employee");
	   try{

	        if(detailList != null){
	        	System.out.println("SaveSession not null");
	        	detailList.add(det);
	        	session.put("detailList", detailList);
	        	cla.setClaMoney((cla.getClaMoney()+det.getClaMoney()));
	        	session.put("claim", cla);
	        	for(Detail d:detailList)
	        		 {
	        		 	System.out.print(d.getItemName());
	        		 }
	        }else{
	        	detailList = new ArrayList<Detail>();
	        	detailList.add(det);
	        	
	        	cla = new Claim();
	        	cla.setClaMoney(det.getClaMoney());
	        	cla.setEmployee(emp);
	        	cla.setState("新创建");
	        	cla.setClaTime(new Date());
	        	
	        	session.put("detailList", detailList);
	        	session.put("claim", cla);
	        }
		}catch(Exception e){
                e.printStackTrace();
		}
		//按权限跳转页面
		 emp =(Employee)session.get("employee");
		
	    if(emp.getPosition().getPostName().equals("人事管理")){
 			return "administration";
		}else if(emp.getPosition().getPostName().equals("总经理")){
			return "manager";
		}else if(emp.getPosition().getPostName().equals("财务管理")){
			return "finance";
		}else if(emp.getPosition().getPostName().equals("普通员工")){
			return "normal";
		}else if(emp.getPosition().getPostName().equals("部门负责人")){
			return "manager";
		}
	    
		return "success";
	}
	
	public String DeleteSession(){
		//	System.out.println("itemName"+det.getItemName());
			System.out.println("==========did="+did);
			List<Detail> detailList;
			ActionContext actionContext = ActionContext.getContext();
	        Map session = actionContext.getSession();
	        detailList = (List<Detail>)session.get("detailList");
	        Claim cla = (Claim)session.get("claim");
	 	   try{

		        if(detailList != null){
		        	System.out.println("not null");
		        	if(detailList.size()>1){
		        		Detail d = detailList.get(Integer.parseInt(did));
		        		cla.setClaMoney(cla.getClaMoney()-d.getClaMoney());
		        		detailList.remove(Integer.parseInt(did));
		        		session.put("detailList", detailList);
		        	}else{
		        		cla = null;
		        		detailList = null;
		        		session.put("claim", cla);
		        		session.put("detailList", detailList);
		        	}
		        }else{
//		        	detailList = new ArrayList<Detail>();
//		        	System.out.println(detailList.add(det));
//		        	session.put("detailList", detailList);
		        }
			}catch(Exception e){
	               e.printStackTrace();
			}
	        
			//按权限跳转页面
			Employee emp =(Employee)session.get("employee");
			
		    if(emp.getPosition().getPostName().equals("人事管理")){
	 			return "administration";
			}else if(emp.getPosition().getPostName().equals("总经理")){
				return "manager";
			}else if(emp.getPosition().getPostName().equals("财务管理")){
				return "finance";
			}else if(emp.getPosition().getPostName().equals("普通员工")){
				return "normal";
			}else if(emp.getPosition().getPostName().equals("部门负责人")){
				return "manager";
			}
			
			return null;
		}
	
	public String FindDetail(){
	
		System.out.println("claId = "+claId);
		
		
		Detail de = new Detail();
		Claim cla = new Claim();
		cla.setClaId(claId);
		de.setClaim(cla);
		claim = csi.FindByIdClaim(cla);   //get claim
		detailList = dsi.FindByClaIdDetail(de); //get detailList
		System.out.println("detail List = "+detailList.size());
		ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
		Employee emp =(Employee)session.get("employee");
		
		//按权限跳转页面
	    if(emp.getPosition().getPostName().equals("人事管理")){
 			return "administration";
		}else if(emp.getPosition().getPostName().equals("总经理")){
			return "manager";
		}else if(emp.getPosition().getPostName().equals("财务管理")){
			return "finance";
		}else if(emp.getPosition().getPostName().equals("普通员工")){
			return "normal";
		}else if(emp.getPosition().getPostName().equals("部门负责人")){
			return "manager";
		}
		
		return "success";
	}
}
