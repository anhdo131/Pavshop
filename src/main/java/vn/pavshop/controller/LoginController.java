package vn.pavshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController extends BaseController {

	@RequestMapping(path = "/login" , method = RequestMethod.GET)
	public String login() {
		return "login";
	}
}
