package vn.pavshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AboutController extends BaseController {
	
	@GetMapping(value = "about")
	public String about() {
		return "about";
	}
	
}
