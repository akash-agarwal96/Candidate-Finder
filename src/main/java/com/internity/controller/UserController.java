package com.internity.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.internity.entity.CustomerLogin;
import com.internity.entity.User;
import com.internity.entity.UserRegistration;
import com.internity.service.UserService;


@Controller
@SessionAttributes({"email"})
public class UserController {

	@Autowired
	private UserService userService;
// ========================== LOGIN RELATED ==================================	
	@GetMapping("/login")
	public String login(Model model) {
		User user=new User();
		CustomerLogin customerLogin=new CustomerLogin();	// for login
		model.addAttribute("userSignUp",user);
		model.addAttribute("customerLogin",customerLogin);	// for login
		return "login";
	}
	
	@PostMapping("/signedUp")		
	public String userRegistered(@Valid @ModelAttribute("user") User user,
							BindingResult br,Model model,RedirectAttributes attributes) {
		if(br.hasErrors()) {
			return "/login";
		}
		else {
			if(user.getPassword().equals(user.getcPassword())) {
				userService.saveCustomer(user);
				model.addAttribute("email", user.getEmail());	// session for store email
				return "redirect:/userRegistration";
			}
			else {
				attributes.addFlashAttribute("success","password and confirm password doesn't match");
				return "redirect:/login";
			}
		}
	}
	
	@PostMapping("/loggedIn")
	public String customerLogedIn(@Valid @ModelAttribute("customer") CustomerLogin customerLogin,
							BindingResult br,Model model,RedirectAttributes attributes) {
		if(br.hasErrors()) {
			return "login";
		}
		else {
			if(customerLogin.getEmail().equals("admin@gmail.com") && customerLogin.getPassword().equals("123")) {
				return "redirect:/searchjobs";
			}
			boolean chk=userService.validateCustomer(customerLogin);
			if(chk==false) {
				model.addAttribute("email", customerLogin.getEmail());	// session for store email
				
			//	UserRegistration userRegistration=new UserRegistration();
				String email=(String) model.getAttribute("email");	// geting session value
				List<UserRegistration> userRegistration=userService.getAllUserDetail(email);
				model.addAttribute("allUserStatus", userRegistration); 
		//		System.out.println(userRegistration.getDuration());
				return "userDashboard";
			}
			else {
				attributes.addFlashAttribute("success","you are not registerd/ wrong password");
				return "redirect:/login";
			}
		}
	}
//===================================== REGISTRATION ===========================================	
	@GetMapping("/userRegistration")
	public String userRegistration(Model model) {
		UserRegistration userRegistration=new UserRegistration();
		model.addAttribute("user", userRegistration);
		return "userRegistration";	
	}
	
	
	  @PostMapping("/skillTest")	
	  public String skillTest(@ModelAttribute("user") UserRegistration userRegistration,
			  Model model) {
		  String email=userRegistration.getEmail();	
		  userService.saveUpdateSecUser(userRegistration,email); 
//		  model.addAttribute("userEmail", userRegistration.getEmail());
		  return "skillTest";
	}
	 
	
	
	
	//================================== QUIZ ===========================================
	
	@GetMapping("/cquiz")
	public String cquiz() {
		return "cquiz";
	}
	
	@GetMapping("/pquiz")
	public String pquiz() {
		return "pquiz";
	}
	@GetMapping("/jquiz")
	public String jquiz() {
		return "jquiz";
	}
	@GetMapping("/jsquiz")
	public String jsquiz() {
		return "jsquiz";
	}
	@GetMapping("/mlquiz")
	public String mlquiz() {
		return "mlquiz";
	}
	@GetMapping("/end")
	public String end() {
		return "end";
	}
	@GetMapping("/page")
	public String page() {
		return "page";
	}
// =================================== DASHBOARD ===============================================

//	/*
	@RequestMapping(value = "/searchjobs", method = RequestMethod.GET)
	public String searchJobs(@RequestParam("searchString") Optional<String> searchString,
			  @RequestParam("expectedSalary") Optional<String> expectedSalary,
	//			@RequestParam("min") Optional<String> min,
	//			@RequestParam("max") Optional<String> max, 
			  @RequestParam("desiredLocation") Optional<String> desiredLocation,
			  
			  @RequestParam("nativeLocation") Optional<String> nativeLocation,
			  
			  @RequestParam("isWorking") Optional<String> isWorking,
			  @RequestParam("jobType") Optional<String> jobType,
			  @RequestParam("industry") Optional<String> industry,
			  @RequestParam("skillName") Optional<String> skillName,
	//		  @RequestParam("es") Optional<String> es,
			  Model model) {
		UserRegistration userRegistration = new UserRegistration();
		String search = "";
		if (!searchString.equals(Optional.empty())) {
			search = searchString.get();
			System.out.println(search);
		}
		if ((!nativeLocation.equals(Optional.empty())) && (nativeLocation.get()!="")) {
			System.out.println(nativeLocation.get());
			userRegistration.setNativeLocation(nativeLocation.get());
		}
		if ((!desiredLocation.equals(Optional.empty())) && (desiredLocation.get()!="")) {
			System.out.println(desiredLocation.get());
			userRegistration.setDesiredLocation(desiredLocation.get());
		}
		if ((!skillName.equals(Optional.empty())) && (skillName.get()!="")) {
			System.out.println(skillName.get());
			userRegistration.setSkillName(skillName.get());
		}
		if ((!expectedSalary.equals(Optional.empty())) && (expectedSalary.get()!="")) {
			System.out.println(expectedSalary.get());
			userRegistration.setExpectedSalary(expectedSalary.get());
		}
		if ((!industry.equals(Optional.empty())) && (industry.get()!="")) {
			System.out.println(industry.get());
			userRegistration.setIndustry(industry.get());
		}
		if ((!isWorking.equals(Optional.empty())) && (isWorking.get()!="")) {
			System.out.println(isWorking.get());
			userRegistration.setIsWorking(isWorking.get());
		}
		
//		if (!min.equals(Optional.empty()) && !max.equals(Optional.empty())) {
//			String salary = min.get()+","+max.get();
//			System.out.println(salary);
//			userRegistration.setExpectedSalary(salary);
//			}
		/*
		if (!companies.equals(Optional.empty()) && companies.get()!="") {
			System.out.println("comp");
			juserRegistration.setCompanyName(companies.get());
		}*/
		if (!jobType.equals(Optional.empty()) && (jobType.get()!="")) {
			String jobTypes = jobType.get();//+","+partTime.get();
			System.out.println(jobTypes);
			userRegistration.setJobType(jobTypes);
		}

		
		List<?> userDetail = userService.getAllUser(userRegistration);
		System.out.println(userDetail.size());
		int count=userDetail.size();
		model.addAttribute("jobs", userDetail);
		model.addAttribute("count",count);
		
		return "dashboard";
	}
//================================== user dashboard after test ==================================	
	@GetMapping("/userDashboard")
	public String ds(Model model) {
		String email=(String) model.getAttribute("email");	// geting session value
		List<UserRegistration> userRegistration=userService.getAllUserDetail(email);
		model.addAttribute("allUserStatus", userRegistration); 
		UserRegistration userRegistrations=new UserRegistration();
		model.addAttribute("update", userRegistrations);
		return "userDashboard";
	}

//============================ update user ======================================
	@PostMapping("/updateUser")		
	public String updateUser(@ModelAttribute("update") UserRegistration userRegistration,
							Model model) {
		
				String email=(String) model.getAttribute("email");
				boolean isUpdate=userService.updateUser(userRegistration,email);
				
				return "login";
	}
	
	// ========================== form =============================
	 @PostMapping("/form1")	
	  public String form2(@ModelAttribute("user") UserRegistration userRegistration,
			  Model model) {
		  userService.saveUser(userRegistration); 
		 
		  UserRegistration userRegistrations=new UserRegistration();
		  model.addAttribute("user", userRegistrations);		  
		  return "form2";
	}
	 @PostMapping("/form2")	
	  public String form3(@ModelAttribute("user") UserRegistration userRegistration,
			  Model model) {
		  String email=userRegistration.getEmail();		  
		  userService.saveUpdateUser(userRegistration,email); 
		  
		  UserRegistration userRegistrations=new UserRegistration();
		  model.addAttribute("user", userRegistrations);
		  return "form3";
	}
	
}







