/**
 * 
 */
package com.lms.restController;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lms.model.Books;
import com.lms.service.LmsService;

/**
 * @author dell
 *
 */

@Controller
public class MainController {

	@Autowired
	private LmsService lmsService;
	
	
	@GetMapping(value = "/sayHello")
	public String sayhello() {
		return "hello Akshay !!";
	}


	@GetMapping(value = "/")
	public String init(HttpServletRequest req) {
		req.setAttribute("books", lmsService.finalAllBooks());
		req.setAttribute("MODE", "BOOK_VIEW");
		return "index";
	}
	
	
	/*@GetMapping(value = "/findAllBooks")
	public Collection<Books> findAllBooks() {
		return lmsService.finalAllBooks();
	}*/
	
	@GetMapping(value = "/updateView")
	public String findOne(@RequestParam long id, HttpServletRequest req) {
		System.out.println("id in controller:::"+id);
		req.setAttribute("books", lmsService.findOne(id));
		System.out.println("after finding book::::::");
		req.setAttribute("MODE", "BOOK_EDIT");
		return "index";	
		
	}
}

