package entity;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Approval entity. @author MyEclipse Persistence Tools
 */

public class Approval implements java.io.Serializable {

	// Fields

	private Long appId;
	private Claim claim;
	private Employee employee;
	private Date appTime;
	private String appRes;

	// Constructors

	/** default constructor */
	public Approval() {
	}

	/** minimal constructor */
	public Approval(Long appId) {
		this.appId = appId;
	}

	/** full constructor */
	public Approval(Long appId, Claim claim, Employee employee,
			Date appTime, String appRes) {
		this.appId = appId;
		this.claim = claim;
		this.employee = employee;
		this.appTime = appTime;
		this.appRes = appRes;
	}

	// Property accessors

	public Long getAppId() {
		return this.appId;
	}

	public void setAppId(Long appId) {
		this.appId = appId;
	}

	public Claim getClaim() {
		return this.claim;
	}

	public void setClaim(Claim claim) {
		this.claim = claim;
	}

	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public Date getAppTime() {
		return this.appTime;
	}

	public void setAppTime(Date appTime) {
		this.appTime = appTime;
	}

	public String getAppRes() {
		return this.appRes;
	}

	public void setAppRes(String appRes) {
		this.appRes = appRes;
	}

}