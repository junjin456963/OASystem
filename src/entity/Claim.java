package entity;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Claim entity. @author MyEclipse Persistence Tools
 */

public class Claim implements java.io.Serializable {

	// Fields

	private Long claId;
	private Employee employee;
	private Date claTime;
	private Long claMoney;
	private String state;
	private Set details = new HashSet(0);
	private Set approvals = new HashSet(0);

	// Constructors

	/** default constructor */
	public Claim() {
	}

	/** minimal constructor */
	public Claim(Long claId) {
		this.claId = claId;
	}

	/** full constructor */
	public Claim(Long claId, Employee employee, Date claTime,
			Long claMoney, String state, Set details, Set approvals) {
		this.claId = claId;
		this.employee = employee;
		this.claTime = claTime;
		this.claMoney = claMoney;
		this.state = state;
		this.details = details;
		this.approvals = approvals;
	}

	// Property accessors

	public Long getClaId() {
		return this.claId;
	}

	public void setClaId(Long claId) {
		this.claId = claId;
	}

	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public Date getClaTime() {
		return this.claTime;
	}

	public void setClaTime(Date claTime) {
		this.claTime = claTime;
	}

	public Long getClaMoney() {
		return this.claMoney;
	}

	public void setClaMoney(Long claMoney) {
		this.claMoney = claMoney;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Set getDetails() {
		return this.details;
	}

	public void setDetails(Set details) {
		this.details = details;
	}

	public Set getApprovals() {
		return this.approvals;
	}

	public void setApprovals(Set approvals) {
		this.approvals = approvals;
	}

}