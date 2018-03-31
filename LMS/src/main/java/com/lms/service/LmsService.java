/**
 * 
 */
package com.lms.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lms.lmsDao.LmsRepository;
import com.lms.model.Books;

/**
 * @author dell
 *
 */

@Service
public class LmsService {

	@Autowired
	private LmsRepository lmsRepository;
	
	public Collection<Books> finalAllBooks() {
		
		List<Books> bookList = new ArrayList<Books>();

		for(Books book : lmsRepository.findAll())
		{
			bookList.add(book);
		}		
		return bookList;
	}
			public String findOne(long id) {
				
			Optional<Books> book = lmsRepository.findById(id);
			System.out.println("book::::::::"+book.toString());
			return book.toString();
			
			}


}










