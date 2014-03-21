package entity;

import java.math.BigDecimal;

/**
 * Detail entity. @author MyEclipse Persistence Tools
 */

public class Detail implements java.io.Serializable {

	// Fields

	private Long detId;
	private Claim claim;
	private String itemName;
	private Long claMoney;
	private String reason;

	// Constructors

	/** default constructor */
	public Detail() {
	}

	/** minimal constructor */
	public Detail(Long detId, String itemName) {
		this.detId = detId;
		this.itemName = itemName;
	}
	
	public Detail(String itemName,Long claMoney,String reason) {
		this.itemName = itemName;
		this.claMoney = claMoney;
		this.reason = reason;
	}

	/** full constructor */
	public Detail(Long detId, Claim claim, String itemName,
			Long claMoney, String reason) {
		this.detId = detId;
		this.claim = claim;
		this.itemName = itemName;
		this.claMoney = claMoney;
		this.reason = reason;
	}

	// Property accessors

	public Long getDetId() {
		return this.detId;
	}

	public void setDetId(Long detId) {
		this.detId = detId;
	}

	public Claim getClaim() {
		return this.claim;
	}

	public void setClaim(Claim claim) {
		this.claim = claim;
	}

	public String getItemName() {
		return this.itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public Long getClaMoney() {
		return this.claMoney;
	}

	public void setClaMoney(Long claMoney) {
		this.claMoney = claMoney;
	}

	public String getReason() {
		return this.reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

}