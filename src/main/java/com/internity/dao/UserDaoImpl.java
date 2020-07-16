package com.internity.dao;

import java.util.Arrays;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.query.Query;

import com.internity.entity.CustomerLogin;
import com.internity.entity.User;
import com.internity.entity.UserRegistration;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public void saveCustomer(UserRegistration userRegistration) {
		Session session=sessionFactory.getCurrentSession();
		session.save(userRegistration);
	}
	
	
	public boolean existsByEmail(String email, Class<User> className) {
		Session session=sessionFactory.getCurrentSession();
		String hql="select id from User where email=:email";
		Query<User> query=session.createQuery(hql);
		
		query.setParameter("email", email);
		
		List<User> id=query.getResultList();
		
		if(id.isEmpty()) {
			return false;
		}
		else {
			return true;
		}
	}

	public void saveUser(User user) {
		Session session=sessionFactory.getCurrentSession();
		session.save(user);	
	}

	//========================	 DASHBOARD =============================================
	public List<UserRegistration> getAllUser(String skill) {
		Session session=sessionFactory.getCurrentSession();
		
		String hql=(" from UserRegistration where languageKnow=:skill");
		
		Query query=session.createQuery(hql);
		query.setParameter("skill", skill);	
		
		return  query.getResultList();
		
	}

//	/*
	public List<?> getAllUser(UserRegistration userRegistration) {
		boolean locationFlag = false, searchFlag = false, salaryFlag = false,nativeFlag=false,
				jobTypeFlag=false,industryFlag=false,isWorkingFlag=false,skillNameFlag=false;
		String selectQuery = "select id,fullName,phoneNumber,skillName,totalExperience,expectedSalary,industry,isWorking FROM UserRegistration jpv WHERE id  >: jobIds ";
		String salaries = null;
		if (null != userRegistration.getDesiredLocation()) {
			locationFlag = true;
			selectQuery = selectQuery.concat("  AND jpv.desiredLocation IN (:locations) ");
		}
		if (null != userRegistration.getJobType()) {
			jobTypeFlag = true;
			selectQuery = selectQuery.concat("  AND jpv.jobType IN (:jobType) ");
		}
		if (null != userRegistration.getNativeLocation()) {
			nativeFlag = true;
			selectQuery = selectQuery.concat(" AND jpv.nativeLocation IN (:nativeLocation) ");
		}
		if (null != userRegistration.getSkillName()) {
			skillNameFlag = true;
			selectQuery = selectQuery.concat(" AND jpv.skillName IN (:skillName) ");
		}
		if (null != userRegistration.getIndustry()) {
			industryFlag = true;
			selectQuery = selectQuery.concat(" AND jpv.industry IN (:industry) ");
		}
		
		if (null != userRegistration.getExpectedSalary()) {
			salaryFlag = true;
			selectQuery = selectQuery.concat(" AND jpv.expectedSalary < :salary1  ");
		}
		
		if (null != userRegistration.getIsWorking()) {
			isWorkingFlag = true;
			selectQuery = selectQuery.concat(" AND jpv.isWorking = :isWorking  ");
		}
//		if (null != userRegistration.getExpectedSalary()) {
//			salaryFlag = true;
//			selectQuery = selectQuery.concat(" AND jpv.expectedSalary >= :salary1 AND jpv.expectedSalary <= :salary2 ");
//		}
		javax.persistence.Query query = entityManager.createQuery(selectQuery);
		int is=0;
		query.setParameter("jobIds",is );
		
		if (locationFlag) {
			String[] location = userRegistration.getDesiredLocation().split(",");
			List<String> locationList = Arrays.asList(location);
			query.setParameter("locations", locationList);
		}
		if (skillNameFlag) {
//			String[] skillName = userRegistration.getSkillName().split(",");
//			List<String> skillNameList = Arrays.asList(skillName);
			String skillNameList=userRegistration.getSkillName();
			System.out.println(skillNameList);
			query.setParameter("skillName", skillNameList);
		}
		
		if (nativeFlag) {
			String nativeLocation = userRegistration.getNativeLocation();
			query.setParameter("nativeLocation", nativeLocation);
			
		}
		if (industryFlag) {
			String industry = userRegistration.getIndustry();
			System.out.println(industry);
			query.setParameter("industry", industry);
			
		}
		if (isWorkingFlag) {
			String isWorkingFlags = userRegistration.getIsWorking();
			query.setParameter("isWorking", isWorkingFlags);
			
		}
		if (jobTypeFlag) {
			String[] jobType = userRegistration.getJobType().split(",");
			List<String> jobTypeList = Arrays.asList(jobType);
			query.setParameter("jobType", jobTypeList);
		}
		
		if (salaryFlag) {
			salaries = userRegistration.getExpectedSalary();
			query.setParameter("salary1", salaries);
		}
//		if (salaryFlag) {
//			salaries = userRegistration.getExpectedSalary().split(",");
//			System.out.println(salaries[0]);
//			System.out.println(salaries[1]);
//			query.setParameter("salary1", salaries[0]);
//			query.setParameter("salary2", salaries[1]);
//		}
		List<?> jpListRes =query.getResultList();
		return jpListRes;


	}


	public boolean validateCustomer(CustomerLogin customerLogin) {
		Session session=sessionFactory.getCurrentSession();
		
		String hql="select id from User where email=:email and password=:password";
		Query<User> query=session.createQuery(hql);
		query.setParameter("email", customerLogin.getEmail());
		query.setParameter("password", customerLogin.getPassword());
		
		List<User> id=query.getResultList();
		System.out.println(id.isEmpty());
		return id.isEmpty();
	}


	public List<UserRegistration> getAllUserDetail(String email) {
		Session session=sessionFactory.getCurrentSession();
		String hql=("select fullName,email,phoneNumber,gender,desiredLocation,nativeLocation,expectedSalary,skillName,level,jobType,totalExperience,tGraduationBoard,tResult,link from UserRegistration where email=:email");
		
		Query query=session.createQuery(hql);
		query.setParameter("email", email);	
		
		return  query.getResultList();
	}


	public boolean updateUser(UserRegistration userRegistration, String email) {
		Session session=sessionFactory.getCurrentSession();
		
		String hql=("update UserRegistration set phoneNumber=:phoneNumber , desiredLocation=:desiredLocation,skillName=:skillName,level=:level  where email=:email");

		long phoneNumber=userRegistration.getPhoneNumber();
		String desiredLocation=userRegistration.getDesiredLocation();
		String skillName=userRegistration.getSkillName();
		String level=userRegistration.getLevel();
		
		Query query=session.createQuery(hql);
		query.setParameter("phoneNumber", phoneNumber);
		query.setParameter("desiredLocation", desiredLocation);
		query.setParameter("skillName", skillName);
		query.setParameter("level", level);
		query.setParameter("email", email);
		query.executeUpdate();
		return true;
	}
//========================================================

	public void saveUpdateUser(UserRegistration userRegistration, String email) {
Session session=sessionFactory.getCurrentSession();
		
		String hql=("update UserRegistration set skillName=:skillName , level=:level,orgName=:orgName,title=:title,description=:description,contribution=:contribution , otherComment=:otherComment,pGraduationBoard=:pGraduationBoard,pGraduationName=:pGraduationName,pStandard=:pStandard ,pResult=:pResult,graduationBoard=:graduationBoard,graduationName=:graduationName,standard=:standard ,result=:result,twGraduationBoard=:twGraduationBoard,twGraduationName=:twGraduationName,twStandard=:twStandard ,twResult=:twResult,tGraduationBoard=:tGraduationBoard,tGraduationName=:tGraduationName,tStandard=:tStandard ,tResult=:tResult,link=:link,totalExperience=:totalExperience   where email=:email");
				

		String skillName=userRegistration.getSkillName();
		String level=userRegistration.getLevel();
		String orgName=userRegistration.getOrgName();
		String title=userRegistration.getTitle();
		String description=userRegistration.getDescription();
		String contribution=userRegistration.getContribution();
		String otherComment=userRegistration.getOtherComment();
		
		String pGraduationBoard=userRegistration.getpGraduationBoard();
		String pGraduationName=userRegistration.getpGraduationName();
		String pStandard=userRegistration.getpStandard();
		String pResult=userRegistration.getpResult();
		
		String graduationBoard=userRegistration.getGraduationBoard();
		String graduationName=userRegistration.getGraduationName();
		String standard=userRegistration.getStandard();
		String result=userRegistration.getResult();
		
		String twGraduationBoard=userRegistration.getTwGraduationBoard();
		String twGraduationName=userRegistration.getTwGraduationName();
		String twStandard=userRegistration.getTwStandard();
		String twResult=userRegistration.getTwResult();
		
		String tGraduationBoard=userRegistration.gettGraduationBoard();
		String tGraduationName=userRegistration.gettGraduationName();
		String tStandard=userRegistration.gettStandard();
		String tResult=userRegistration.gettResult();
		
		String link=userRegistration.getLink();
		int totalExperience=userRegistration.getTotalExperience();
		
		
		Query query=session.createQuery(hql);
		
		query.setParameter("skillName", skillName);
		query.setParameter("level", level);
		query.setParameter("orgName", orgName);
		query.setParameter("title", title);
		query.setParameter("description", description);
		query.setParameter("contribution", contribution);
		query.setParameter("otherComment", otherComment);
		
		query.setParameter("pGraduationBoard", pGraduationBoard);
		query.setParameter("pGraduationName", pGraduationName);
		query.setParameter("pStandard", pStandard);
		query.setParameter("pResult", pResult);
		
		query.setParameter("graduationBoard", graduationBoard);
		query.setParameter("graduationName", graduationName);
		query.setParameter("standard", standard);
		query.setParameter("result", result);
		
		query.setParameter("twGraduationBoard", twGraduationBoard);
		query.setParameter("twGraduationName", twGraduationName);
		query.setParameter("twStandard", twStandard);
		query.setParameter("twResult", twResult);
		
		query.setParameter("tGraduationBoard", tGraduationBoard);
		query.setParameter("tGraduationName", tGraduationName);
		query.setParameter("tStandard", tStandard);
		query.setParameter("tResult", tResult);
		
		query.setParameter("link", link);
		query.setParameter("totalExperience", totalExperience);
		
		query.setParameter("email", email);
		
		
		
		query.executeUpdate();
		
	}


	public void saveUpdateSecUser(UserRegistration userRegistration, String email) {
		Session session=sessionFactory.getCurrentSession();
		
		String hql=("update UserRegistration set industry=:industry , role=:role,jobType=:jobType,expectedSalary=:expectedSalary,desiredLocation=:desiredLocation,desiredShift=:desiredShift  where email=:email");

		String industry=userRegistration.getIndustry();
		String role=userRegistration.getRole();
		String jobType=userRegistration.getJobType();
		String expectedSalary=userRegistration.getExpectedSalary();
		String desiredLocation=userRegistration.getDesiredLocation();
		String desiredShift=userRegistration.getDesiredShift();
		
		Query query=session.createQuery(hql);
		
		query.setParameter("industry", industry);
		query.setParameter("role", role);
		query.setParameter("jobType", jobType);
		query.setParameter("expectedSalary", expectedSalary);
		query.setParameter("desiredLocation", desiredLocation);
		query.setParameter("desiredShift", desiredShift);
		
		query.setParameter("email", email);
		query.executeUpdate();
		
		
	}		
}
