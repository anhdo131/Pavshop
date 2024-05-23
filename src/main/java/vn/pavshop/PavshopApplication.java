package vn.pavshop;


import org.apache.catalina.security.SecurityConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Import;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import vn.pavshop.config.SpringSecurityConfig;

@SpringBootApplication
@ComponentScan(basePackages = "vn.pavshop")
public class PavshopApplication {

	public static void main(String[] args) {
		SpringApplication.run(PavshopApplication.class, args);
	}

}
