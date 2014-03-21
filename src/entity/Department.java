package entity;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;
/**
 * Department entity. @author MyEclipse Persistence Tools
 */

public class Department implements java.io.Serializable {

	// Fields

	private Long depId;
	private Employee employee;
	private String depName;
	private Set employees = new HashSet(0);

	// Constructors

	/** default constructor */
	public Department() {
	}

	/** minimal constructor */
	public Department(Long depId) {
		this.depId = depId;
	}

	/** full constructor */
	public Department(Long depId, Employee employee, String depName,
			Set employees) {
		this.depId = depId;
		this.employee = employee;
		this.depName = depName;
		this.employees = employees;
	}

	// Property accessors

	public Long getDepId() {
		return this.depId;
	}

	public void setDepId(Long depId) {
		this.depId = depId;
	}

	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public String getDepName() {
		return this.depName;
	}

	public void setDepName(String depName) {
		this.depName = depName;
	}

	public Set getEmployees() {
		return this.employees;
	}

	public void setEmployees(Set employees) {
		this.employees = employees;
	}

}