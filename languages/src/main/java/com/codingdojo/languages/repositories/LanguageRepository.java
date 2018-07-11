package com.codingdojo.languages.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.languages.models.Language;

@Repository
public interface LanguageRepository extends CrudRepository<Language, Long> {
//	retrieves all the books from the database
	List<Language> findAll();
//	finds a language by their name
	List<Language> findByNameContaining(String search);
//	counts how many of the given version there are
	Long countByVersionContaining(String search);
//	deletes a language by name
	Long deleteByNameStartingWith(String search);
}
