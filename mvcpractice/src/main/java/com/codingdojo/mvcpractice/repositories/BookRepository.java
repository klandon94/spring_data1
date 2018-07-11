package com.codingdojo.mvcpractice.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.mvcpractice.models.Book;

@Repository
public interface BookRepository extends CrudRepository<Book, Long> {
//	retrieves all the books from the database
	List<Book> findAll();
//	finds a book by their description
	List<Book> findByDescriptionContaining(String search);
//	counts how many titles contain a certain string
	Long countByTitleContaining(String search);
//	deletes a book that starts with a specific title
	Long deleteByTitleStartingWith(String search);
}
