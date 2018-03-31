/**
 * 
 */
package com.lms.lmsDao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.lms.model.Books;

/**
 * @author dell
 *
 */

@Repository
public interface LmsRepository extends CrudRepository<Books, Long> {

	
	
}
