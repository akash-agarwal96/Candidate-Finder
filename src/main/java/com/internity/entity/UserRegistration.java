package com.internity.entity;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table
public class UserRegistration {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="SEQUENCE1")	
	@SequenceGenerator(name="SEQUENCE1", sequenceName="USER_REGISTRATION", allocationSize=100001)
	private int id;
	
	private String fullName;
	private String email;
	private long phoneNumber;
	private long whatsAppNumber;
	private String gender;
	private String martialStatus;
	private String languageKnow;
	private String nativeLocation;
	// ==========first part compl;==================
	
	private String skillName;
	private String level;
	
	private String orgName;
//	private Date orgStartDate;
//	private Date orgEndDate;	
	private String title;
	private String isWorking="1";
	private String description;
	private String contribution;
//	private Date workFromDuration;
//	private Date workToDuration;
	private String otherComment;
	//========== second part comp ========
	
	private String pGraduationBoard;
	private String pGraduationName;
//	private Date pFromGraduationDate;
//	private Date pToGraduationDate;
	private String pStandard;
	private String pResult;
	
	private String graduationBoard;
	private String graduationName;
//	private Date gromGraduationDate;
//	private Date toGraduationDate;
	private String standard;
	private String result;
	
	private String twGraduationBoard;
	private String twGraduationName;
//	private Date twFromGraduationDate;
//	private Date twToGraduationDate;
	private String twStandard;
	private String twResult;
	
	private String tGraduationBoard;
	private String tGraduationName;
//	private Date tFromGraduationDate;
//	private Date tToGraduationDate;
	private String tStandard;
	private String tResult;
	
// ========== Third part complete
	

	private String link;
	
	
	private int totalExperience;
	private String industry;
	private String role;
	private String jobType;
	private String expectedSalary;
	private String desiredLocation;
	private String desiredShift;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public long getWhatsAppNumber() {
		return whatsAppNumber;
	}
	public void setWhatsAppNumber(long whatsAppNumber) {
		this.whatsAppNumber = whatsAppNumber;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMartialStatus() {
		return martialStatus;
	}
	public void setMartialStatus(String martialStatus) {
		this.martialStatus = martialStatus;
	}
	public String getLanguageKnow() {
		return languageKnow;
	}
	public void setLanguageKnow(String languageKnow) {
		this.languageKnow = languageKnow;
	}
	public String getNativeLocation() {
		return nativeLocation;
	}
	public void setNativeLocation(String nativeLocation) {
		this.nativeLocation = nativeLocation;
	}
	public String getSkillName() {
		return skillName;
	}
	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getOrgName() {
		return orgName;
	}
	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getIsWorking() {
		return isWorking;
	}
	public void setIsWorking(String isWorking) {
		this.isWorking = isWorking;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getContribution() {
		return contribution;
	}
	public void setContribution(String contribution) {
		this.contribution = contribution;
	}
	public String getOtherComment() {
		return otherComment;
	}
	public void setOtherComment(String otherComment) {
		this.otherComment = otherComment;
	}
	public String getpGraduationBoard() {
		return pGraduationBoard;
	}
	public void setpGraduationBoard(String pGraduationBoard) {
		this.pGraduationBoard = pGraduationBoard;
	}
	public String getpGraduationName() {
		return pGraduationName;
	}
	public void setpGraduationName(String pGraduationName) {
		this.pGraduationName = pGraduationName;
	}
	
	public String getpStandard() {
		return pStandard;
	}
	public void setpStandard(String pStandard) {
		this.pStandard = pStandard;
	}
	public String getpResult() {
		return pResult;
	}
	public void setpResult(String pResult) {
		this.pResult = pResult;
	}
	public String getGraduationBoard() {
		return graduationBoard;
	}
	public void setGraduationBoard(String graduationBoard) {
		this.graduationBoard = graduationBoard;
	}
	public String getGraduationName() {
		return graduationName;
	}
	public void setGraduationName(String graduationName) {
		this.graduationName = graduationName;
	}
	
	public String getStandard() {
		return standard;
	}
	public void setStandard(String standard) {
		this.standard = standard;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getTwGraduationBoard() {
		return twGraduationBoard;
	}
	public void setTwGraduationBoard(String twGraduationBoard) {
		this.twGraduationBoard = twGraduationBoard;
	}
	public String getTwGraduationName() {
		return twGraduationName;
	}
	public void setTwGraduationName(String twGraduationName) {
		this.twGraduationName = twGraduationName;
	}
	
	public String getTwStandard() {
		return twStandard;
	}
	public void setTwStandard(String twStandard) {
		this.twStandard = twStandard;
	}
	public String getTwResult() {
		return twResult;
	}
	public void setTwResult(String twResult) {
		this.twResult = twResult;
	}
	public String gettGraduationBoard() {
		return tGraduationBoard;
	}
	public void settGraduationBoard(String tGraduationBoard) {
		this.tGraduationBoard = tGraduationBoard;
	}
	public String gettGraduationName() {
		return tGraduationName;
	}
	public void settGraduationName(String tGraduationName) {
		this.tGraduationName = tGraduationName;
	}
	
	public String gettStandard() {
		return tStandard;
	}
	public void settStandard(String tStandard) {
		this.tStandard = tStandard;
	}
	public String gettResult() {
		return tResult;
	}
	public void settResult(String tResult) {
		this.tResult = tResult;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public int getTotalExperience() {
		return totalExperience;
	}
	public void setTotalExperience(int totalExperience) {
		this.totalExperience = totalExperience;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getJobType() {
		return jobType;
	}
	public void setJobType(String jobType) {
		this.jobType = jobType;
	}
	public String getExpectedSalary() {
		return expectedSalary;
	}
	public void setExpectedSalary(String expectedSalary) {
		this.expectedSalary = expectedSalary;
	}
	public String getDesiredLocation() {
		return desiredLocation;
	}
	public void setDesiredLocation(String desiredLocation) {
		this.desiredLocation = desiredLocation;
	}
	public String getDesiredShift() {
		return desiredShift;
	}
	public void setDesiredShift(String desiredShift) {
		this.desiredShift = desiredShift;
	}
	@Override
	public String toString() {
		return "UserRegistration [id=" + id + ", fullName=" + fullName + ", email=" + email + ", phoneNumber="
				+ phoneNumber + ", whatsAppNumber=" + whatsAppNumber + ", gender=" + gender + ", martialStatus="
				+ martialStatus + ", languageKnow=" + languageKnow + ", nativeLocation=" + nativeLocation
				+ ", skillName=" + skillName + ", level=" + level + ", orgName=" + orgName + ", title=" + title
				+ ", isWorking=" + isWorking + ", description=" + description + ", contribution=" + contribution
				+ ", otherComment=" + otherComment + ", pGraduationBoard=" + pGraduationBoard + ", pGraduationName="
				+ pGraduationName + ", pStandard=" + pStandard + ", pResult=" + pResult + ", graduationBoard="
				+ graduationBoard + ", graduationName=" + graduationName + ", standard=" + standard + ", result="
				+ result + ", twGraduationBoard=" + twGraduationBoard + ", twGraduationName=" + twGraduationName
				+ ", twStandard=" + twStandard + ", twResult=" + twResult + ", tGraduationBoard=" + tGraduationBoard
				+ ", tGraduationName=" + tGraduationName + ", tStandard=" + tStandard + ", tResult=" + tResult
				+ ", link=" + link + ", totalExperience=" + totalExperience + ", industry=" + industry + ", role="
				+ role + ", jobType=" + jobType + ", expectedSalary=" + expectedSalary + ", desiredLocation="
				+ desiredLocation + ", desiredShift=" + desiredShift + "]";
	}
	
	
}