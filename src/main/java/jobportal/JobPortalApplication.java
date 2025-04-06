package jobportal;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class JobPortalApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(JobPortalApplication.class, args);
	}
 //  docker build -t jobportal-0.0.1 .
//	docker run -p 8080:8080 jobportal-0.0.1
	//
	//  docker manifest inspect jobportal-0.0.1:latest
	
	///  docker manifest create my_manifest_list:latest jobportal-0.0.1:latest


}
