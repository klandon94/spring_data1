package com.codingdojo.mvcpractice.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.mvcpractice.models.Book;
import com.codingdojo.mvcpractice.repositories.BookRepository;

@Service
public class BookService {
	private final BookRepository bookRepo;
	
	public BookService(BookRepository bookRepo) {
		this.bookRepo = bookRepo;
	}
	
//	retrieves all the books
	public List<Book> allBooks(){
		return bookRepo.findAll();
	}
//	creates a book
	public Book createBook(Book b) {
		return bookRepo.save(b);
	}
//	retrieves a book
	public Book findBook(Long id) {
		Optional<Book> optionalBook = bookRepo.findById(id);
		if (optionalBook.isPresent()) return optionalBook.get();
		else return null;
	}
//	updates a book
	public Book updateBook(Long id, String title, String desc, String lang, int pages) {
		Optional<Book> optionalBook = bookRepo.findById(id);
		if (optionalBook.isPresent()) {
			optionalBook.get().setTitle(title);
			optionalBook.get().setDescription(desc);
			optionalBook.get().setLanguage(lang);
			optionalBook.get().setNumberOfPages(pages);
			return bookRepo.save(optionalBook.get());
		}
		else return null;
	}
//	deletes a book
	public void deleteBook(Long id) {
		bookRepo.deleteById(id);
	}
}
