package action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import serviceInterface.DepServiceInterface;
import serviceInterface.EmpServiceInterface;


import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


import entity.Department;
import entity.Employee;
import entity.Position;
import entity.ext;


public class DepAction extends ActionSupport {

	private Department dep;
	private DepServiceInterface dsi;
	private EmpServiceInterface esi;
	private List<Employee> empList = new ArrayList();
	private List<Department> DepList = new ArrayList();
    private Long empId;
    private Long depId;

    
	private String depName;


	public String getDepName() {
		return depName;
	}

	public void setDepName(String depName) {
		this.depName = depName;
	}

	public Long getDepId() {
		return depId;
	}

	public void setDepId(Long depId) {
		this.depId = depId;
	}

	public List<Department> getDepList() {
		return DepList;
	}

	public void setDepList(List<Department> depList) {
		DepList = depList;
	}

	public Long getEmpId() {
		return empId;
	}

	public void setEmpId(Long empId) {
		this.empId = empId;
	}

	public EmpServiceInterface getEsi() {
		return esi;
	}

	public void setEsi(EmpServiceInterface esi) {
		this.esi = esi;
	}

	public List<Employee> getEmpList() {
		return empList;
	}

	public void setEmpList(List<Employee> empList) {
		this.empList = empList;
	}



	public Department getDep() {
		return dep;
	}

	public void setDep(Department dep) {
		this.dep = dep;
	}

	public DepServiceInterface getDsi() {
		return dsi;
	}

	public void setDsi(DepServiceInterface dsi) {
		this.dsi = dsi;
	}

	public String execute(){
		
		return null;
	}
	//添加部门
	public String addDep(){
		
	    
	      System.out.printf(dep.getDepName()+"\t"+dep.getEmployee().getEmpId());
	      dep.setEmployee(null);
	      dsi.AddDep(dep);
	      
	      return "success";
	}
	//查询所有部门
	public String getAllDep(){
		try{

			
			DepList = dsi.FindAllDep();
			System.out.println("DepList"+DepList.size());

		}catch(Exception e){
			System.out.println(e.toString());
		}
		return "findDepResult";
	}
	//删除部门
	public String deleteDep(){	
		
	    Department department = new Department();
	    department.setDepId(depId);
	    System.out.println("传值" +depId);
	    dsi.DeleteDep(department);
		
		try{
			DepList = dsi.FindAllDep();
			System.out.println("所有人员："+DepList.size());
		}catch(Exception e){
			System.out.println(e.toString());
		}
		
		return "success";
    }
	//BYDI查询
	public String findDepById(){
		
       
	    
		Department dep1 = new Department();  //通过DEPID寻找DEP
		dep1.setDepId(depId);
		dep1 = dsi.FindById(dep1);
		ActionContext.getContext().put("dep", dep1);
		
		System.out.println("DepId="+dep1.getDepId());
		System.out.println("DepName"+dep1.getDepName());
	


		return "success";
	}
	//修改部门
	public String modifyDep(){
        
		
		dsi.ModifyDep(dep);
		System.out.println(dep.getDepId());
		System.out.println(dep.getDepName());
        System.out.println("empId" +dep.getEmployee().getEmpId());
		try{
			DepList = dsi.FindAllDep();
			System.out.println("所有人员："+DepList.size());
		}catch(Exception e){
			System.out.println(e.toString());
		}
		
		return "success";
	}
	//分页
	public String ListAllDeByEid() throws Exception {

		// String pageNum=(String)ActionContext.getContext().get("pageNum");
		String pageNum = ServletActionContext.getRequest().getParameter(
				"pageNum");
		List<Department> rs = null;
		if (pageNum == null) {
			rs = dsi.ListAllDeByEid(0, 5);
			
		}

		else {
			
			int itemOfStart = (Integer.parseInt(pageNum) - 1) * 5 ;
			rs = dsi.ListAllDeByEid(itemOfStart, 5);
			for (Department de : rs) {



			}

		}
		ActionContext.getContext().put("deListById", rs);
		List<Department> rs1 = null;
		rs1 = dsi.FindAllDep();
		int pageOfCount = rs1.size() / 5 + 1;


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
