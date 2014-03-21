package action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import serviceInterface.EmpServiceInterface;
import serviceInterface.PosServiceInterface;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import entity.Department;
import entity.Employee;
import entity.Position;
import entity.ext;

public class PosAction extends ActionSupport {

	private Position pos;
	private PosServiceInterface psi;
	private EmpServiceInterface esi;
	private List<Position> PosList = new ArrayList();
	
	public EmpServiceInterface getEsi() {
		return esi;
	}
	public void setEsi(EmpServiceInterface esi) {
		this.esi = esi;
	}

	public List<Position> getPosList() {
		return PosList;
	}
	public void setPosList(List<Position> posList) {
		PosList = posList;
	}
	public Position getPos() {
		return pos;
	}
	public void setPos(Position pos) {
		this.pos = pos;
	}

	public PosServiceInterface getPsi() {
		return psi;
	}


	public void setPsi(PosServiceInterface psi) {
		this.psi = psi;
	}


	public String execute(){
		
		return null;
	}
	
	public String addPos(){
		
  
	      psi.AddPos(pos);
	      
	      return "success";
	}
	
	public String getAllPos(){
		try{

			
			PosList = psi.FindAllPos();
			System.out.println("DepList"+PosList.size());

		}catch(Exception e){
			System.out.println(e.toString());
		}
		return "findPosResult";
	}
	//分页
	public String ListAllPoByEid() throws Exception {

		// String pageNum=(String)ActionContext.getContext().get("pageNum");
		String pageNum = ServletActionContext.getRequest().getParameter(
				"pageNum");
		List<Position> rs = null;
		if (pageNum == null) {
			rs = psi.ListAllPoByEid(0, 5);
//			for (Position po : rs) {
//				System.out.println("一行" + popo.getDepName());
//				System.out.println("ABF" + de.getDepId());
//
//			}
		}

		else {
			
			int itemOfStart = (Integer.parseInt(pageNum) - 1) * 5 ;
			rs = psi.ListAllPoByEid(itemOfStart, 5);
//			for (Position po : rs) {
//				System.out.println("第二行" + po.getDepId());
//				System.out.println("第3份" + po.getDepName());
//			    System.out.println("adsfasdf"+ po.getEmployee().getEmpId());
//
//			}

		}
		ActionContext.getContext().put("poListById", rs);
		List<Position> rs1 = null;
		rs1 = psi.FindAllPos();
		int pageOfCount;
		if(rs1.size()%5 ==0)
		{
			pageOfCount = rs1.size() / 5;
		}
		else
		{
			pageOfCount = rs1.size() / 5 + 1;
		}

		System.out.println("数组长度"+rs1.size());
		System.out.println("pageofcount页数" + pageOfCount);
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
