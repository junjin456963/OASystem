package action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import serviceInterface.DepServiceInterface;
import serviceInterface.EmpServiceInterface;
import serviceInterface.PosServiceInterface;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.Account;
import entity.Department;
import entity.Employee;
import entity.Position;
import entity.ext;


public class LoginAction extends ActionSupport{

	private EmpServiceInterface esi;
	private PosServiceInterface psi;
	private DepServiceInterface dsi;
	private List<Position> PosList = new ArrayList();
	private List<Department> DepList = new ArrayList();
	private List<Employee> empList = new ArrayList();
	private Employee emp;
    private String directId;
	private Long dep_id;
	private Long pos_id;
	private Long empId;
	private Account account;
	
	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public Long getEmpId() {
		return empId;
	}

	public void setEmpId(Long empId) {
		this.empId = empId;
	}

	public DepServiceInterface getDsi() {
		return dsi;
	}

	public void setDsi(DepServiceInterface dsi) {
		this.dsi = dsi;
	}

	public List<Position> getPosList() {
		return PosList;
	}

	public void setPosList(List<Position> posList) {
		PosList = posList;
	}

	public List<Department> getDepList() {
		return DepList;
	}

	public void setDepList(List<Department> depList) {
		DepList = depList;
	}
	public List<Employee> getEmpList() {
		return empList;
	}

	public void setEmpList(List<Employee> empList) {
		this.empList = empList;
	}
	public Long getDep_id() {
		return dep_id;
	}

	public void setDep_id(Long depId) {
		dep_id = depId;
	}

	public Long getPos_id() {
		return pos_id;
	}

	public void setPos_id(Long posId) {
		pos_id = posId;
	}

	public String getDirectId() {
		return directId;
	}

	public void setDirectId(String directId) {
		this.directId = directId;
	}

	public EmpServiceInterface getEsi() {
		return esi;
	}

	public void setEsi(EmpServiceInterface esi) {
		this.esi = esi;
	}

	public Employee getEmp() {
		return emp;
	}

	public void setEmp(Employee emp) {
		this.emp = emp;
	}
	public PosServiceInterface getPsi() {
		return psi;
	}

	public void setPsi(PosServiceInterface psi) {
		this.psi = psi;
	}
	
	@Override
	public String execute(){

		Employee e = esi.login(emp);
		//session存放用户信息emplyee
        ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        session.put("employee",e);
        
		if (e!=null){
			Position pos = new Position();
			pos.setPostId(e.getPosition().getPostId());
			Position p = psi.FindById(pos);
			
			System.out.println(p.getPostName());
			    if(p.getPostName().equals("人事管理")){
					DepList = dsi.FindAllDep();
					System.out.println("DepList"+DepList.size());
					PosList = psi.FindAllPos();
					System.out.println("PosList"+PosList.size());
		 			return "success1";
				}else if(p.getPostName().equals("总经理")||p.getPostName().equals("部门负责人")){
					
					return "success2";
				}else if(p.getPostName().equals("财务管理")){
					return "success3";
				}else if(p.getPostName().equals("普通员工")){//普通员工页面
					return "success4";
				}
		}
		return "error";
	}
	//添加员工信息
	public String addEmp(){
		System.out.println("addEmp");
        System.out.println("AddEmpAction Start");
 
		DepList = dsi.FindAllDep();
		System.out.println("DepList"+DepList.size());
		PosList = psi.FindAllPos();
		System.out.println("PosList"+PosList.size());
        
       Department dep =  new Department();
       dep.setDepId(dep_id);
       Position pos =  new Position();
       pos.setPostId(pos_id);
      emp.setDepartment(dep);
      emp.setPosition(pos);
      
      esi.AddEmp(emp);
	  return "success";
	}
	//查询所有员工
	public String getAllEmp(){
		try{
			empList = esi.FindAllEmp();
			System.out.println("所有人员："+empList.size());
			
			DepList = dsi.FindAllDep();
			System.out.println("DepList"+DepList.size());
			PosList = psi.FindAllPos();
			System.out.println("PosList"+PosList.size());
		}catch(Exception e){
			System.out.println(e.toString());
		}
		return "findEmpResult";
	}
	//取得部门，职务名称
	public String getPosDep(){
		
		DepList = dsi.FindAllDep();
		System.out.println("DepList"+DepList.size());
		PosList = psi.FindAllPos();
		System.out.println("PosList"+PosList.size());

			return "findEmpResult";
	}
	public String getPosDepToAddEmp(){
		
		DepList = dsi.FindAllDep();
		System.out.println("DepList"+DepList.size());
		PosList = psi.FindAllPos();
		System.out.println("PosList"+PosList.size());

			return "findEmpResult";
	}
	public String findEmpById(){
		System.out.println("FindEmpById"+empId);
	
		
		DepList = dsi.FindAllDep();
		System.out.println("DepList"+DepList.size());
		PosList = psi.FindAllPos();
		System.out.println("PosList"+PosList.size());
		
		Employee empChage = new Employee();
		empChage.setEmpId(empId);
		emp = esi.FindById(empChage);
		
		System.out.println("emp_Dep_ID="+emp.getDepartment().getDepId());
		
		Department dep = new Department();           //通过DEPID寻找DEP
		dep.setDepId(emp.getDepartment().getDepId());
		dep = dsi.FindById(dep);
		emp.setDepartment(dep);
		
		Position pos = new Position();           //通过POSID寻找POS
		pos.setPostId(emp.getPosition().getPostId());
		pos = psi.FindById(pos);
		emp.setPosition(pos);
		
		System.out.println("empId="+emp.getEmpId());
		return "success";
	}
	
	public String modifyEmp(){
		System.out.println("modifyEmp"+emp.getDepartment().getDepId());
		
		esi.ModifyEmp(emp);
		
		try{
			empList = esi.FindAllEmp();
			System.out.println("所有人员："+empList.size());
		}catch(Exception e){
			System.out.println(e.toString());
		}
		
		return "success";
	}
	public String modifyUser(){
		
        ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        Employee e = (Employee)session.get("employee");
        
		e.setEmpName(emp.getEmpName());
		esi.ModifyEmp(e);
        session.put("employee",e);
		
		//按权限跳转页面
		
	    if(e.getPosition().getPostName().equals("人事管理")){
 			return "administration";
		}else if(e.getPosition().getPostName().equals("总经理")){
			return "manager";
		}else if(e.getPosition().getPostName().equals("财务管理")){
			return "finance";
		}else if(e.getPosition().getPostName().equals("普通员工")){
			return "normal";
		}else if(e.getPosition().getPostName().equals("部门负责人")){
			return "manager";
		}
        
		return "success";
	}
	public String modifyPw(){
		
		System.out.println("modifyPw");
        ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        emp = (Employee)session.get("employee");
        
		emp.setEmpPw(account.getNewPw());
		
		esi.ModifyEmp(emp);
		

        session.put("employee",emp);
		
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
	public String deleteEmp(){	
		System.out.println("DeleteEmp"+empId);
		Employee employee = new Employee();
		employee.setEmpId(empId);
		esi.DeleteEmp(employee);
		
		try{
			empList = esi.FindAllEmp();
			System.out.println("所有人员："+empList.size());
		}catch(Exception e){
			System.out.println(e.toString());
		}
		
		return "success";
	}
	public Object getModel() {
		// TODO Auto-generated method stub
		return null;
	}
	//分页
	public String ListAllEmByEid() throws Exception {

		// String pageNum=(String)ActionContext.getContext().get("pageNum");
		String pageNum = ServletActionContext.getRequest().getParameter(
				"pageNum");
		List<Employee> rs = null;
		if (pageNum == null) {
			rs = esi.ListAllEmByEid(0, 5);
			for (Employee em : rs) {
				System.out.println("一行" + em.getEmpId());
				System.out.println("ABF" +em.getEmpName());

			}
		}

		else {
			
			int itemOfStart = (Integer.parseInt(pageNum) - 1) * 5 ;
			rs = esi.ListAllEmByEid(itemOfStart, 5);
			for (Employee em : rs) {
				System.out.println("第二行" + em.getEmpId());
				System.out.println("第二份" +em.getEmpName());
				System.out.println("第三份"+em.getPosition().getPostName());

			}

		}
		ActionContext.getContext().put("emListById", rs);
		List<Employee> rs1 = null;
		rs1 = esi.FindAllEmp();
		System.out.println("rs1长度 "+ rs1.size());
		int pageOfCount;
		if(rs1.size()%5 ==0)
		{
			pageOfCount = rs1.size() / 5;
		}
		else
		{
			pageOfCount = rs1.size() / 5 + 1;
		}

		ext count[] = new ext[20];

		List<ext> list = new ArrayList<ext>();

		for (int i = 1; i <= pageOfCount; i++) {

			String strCount = " " + i;
			list.add(new ext(i, strCount));

		}

		ActionContext.getContext().put("pageOfCount", list);
		ActionContext.getContext().put("Count", pageOfCount);
		return Action.SUCCESS;

	}
}
