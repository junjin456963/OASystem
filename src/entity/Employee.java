package entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Employee entity. @author MyEclipse Persistence Tools
 */

public class Employee implements java.io.Serializable {

	// Fields

	private Long empId;
	private Department department;
	private Position position;
	private String empName;
	private String empPw;
	private Set approvals = new HashSet(0);
	private Set departments = new HashSet(0);
	private Set claims = new HashSet(0);

	// Constructors

	/** default constructor */
	public Employee() {
	}

	/** minimal constructor */
	public Employee(Long empId) {
		this.empId = empId;
	}

	/** full constructor */
	public Employee(Long empId, Department department, Position position,
			String empName, String empPw, Set approvals, Set departments,
			Set claims) {
		this.empId = empId;
		this.department = department;
		this.position = position;
		this.empName = empName;
		this.empPw = empPw;
		this.approvals = approvals;
		this.departments = departments;
		this.claims = claims;
	}

	// Property accessors

	public Long getEmpId() {
		return this.empId;
	}

	public void setEmpId(Long empId) {
		this.empId = empId;
	}

	public Department getDepartment() {
		return this.department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Position getPosition() {
		return this.position;
	}

	public void setPosition(Position position) {
		this.position = position;
	}

	public String getEmpName() {
		return this.empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getEmpPw() {
		return this.empPw;
	}

	public void setEmpPw(String empPw) {
		this.empPw = empPw;
	}

	public Set getApprovals() {
		return this.approvals;
	}

	public void setApprovals(Set approvals) {
		this.approvals = approvals;
	}

	public Set getDepartments() {
		return this.departments;
	}

	public void setDepartments(Set departments) {
		this.departments = departments;
	}

	public Set getClaims() {
		return this.claims;
	}

	public void setClaims(Set claims) {
		this.claims = claims;
	}

}