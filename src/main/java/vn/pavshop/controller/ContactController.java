package vn.pavshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContactController extends BaseController {
	
	@GetMapping(value = "contact")
	public String contact() {
		return "contact";
	}
}
