package controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model){
		return "index";
	}
	@RequestMapping("home.do")
	public String home(){
		return "index";
	}
	
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String login(){
		return "login";
	}
	
	@RequestMapping(value="/loginProc.do", method = RequestMethod.POST)
	public String loginProc(HttpServletRequest request, Model model, HttpSession session){
		String userId = (String)request.getParameter("userId");
		String password = (String)request.getParameter("password");
		System.out.println("userID : "+userId+"password : "+password);
		
		if(userId.equals("test") && password.equals("1234")){
			System.out.println("accessable id : right");
			session = request.getSession(true);
			session.setAttribute("userId", userId);
			session.setAttribute("password", password);
			return "member/memberInfo";
		}else
			model.addAttribute("msg", "msg");
		return "login";
	}
	@RequestMapping(value="/memberInfo.do")
	public String ownerPage(){
		return "member/memberInfo";
	}
	
	@RequestMapping(value="/logOut.do")
	public String logOut(HttpSession session, HttpServletRequest request){
		session = request.getSession(false);
		session.invalidate();
		return "index";
	}
}
