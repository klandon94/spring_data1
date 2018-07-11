package com.codingdojo.languages.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.languages.models.Language;
import com.codingdojo.languages.repositories.LanguageRepository;

@Service
public class LanguageService {
	private final LanguageRepository LanguageRepo;
	
	public LanguageService(LanguageRepository LanguageRepo) {
		this.LanguageRepo = LanguageRepo;
	}
	
//	retrieves all the Languages
	public List<Language> allLanguages(){
		return LanguageRepo.findAll();
	}
//	creates a Language
	public Language createLanguage(Language b) {
		return LanguageRepo.save(b);
	}
//	retrieves a Language
	public Language findLanguage(Long id) {
		Optional<Language> optionalLanguage = LanguageRepo.findById(id);
		if (optionalLanguage.isPresent()) return optionalLanguage.get();
		else return null;
	}
//	updates a Language
	public Language updateLanguage(Long id, String name, String creator, String version) {
		Optional<Language> optionalLanguage = LanguageRepo.findById(id);
		if (optionalLanguage.isPresent()) {
			optionalLanguage.get().setName(name);
			optionalLanguage.get().setCreator(creator);
			optionalLanguage.get().setVersion(version);
			return LanguageRepo.save(optionalLanguage.get());
		}
		else return null;
	}
//	deletes a Language
	public void deleteLanguage(Long id) {
		LanguageRepo.deleteById(id);
	}
}
