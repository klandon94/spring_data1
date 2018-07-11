package com.codingdojo.lookify.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.lookify.models.Song;
import com.codingdojo.lookify.services.SongService;

@Controller
public class SongController {
	private final SongService songServ;
	
	public SongController(SongService songServ) {
		this.songServ = songServ;
	}
	
	@RequestMapping("")
	public String index() {
		return "/songs/index.jsp";
	}
	
	@RequestMapping("/dashboard")
	public String dash(Model model) {
		List<Song> songs = songServ.allSongs();
		model.addAttribute("songs", songs);
		return "/songs/dash.jsp";
	}
	
	@RequestMapping(value="/songs/{id}", method=RequestMethod.GET)
    public String getSong(Model model, @PathVariable("id") Long id ) {
    	Song song = songServ.findSong(id);
    	model.addAttribute("song", song);
    	return "/songs/show.jsp";
    }
	
	@RequestMapping("/songs/new")
    public String newSong(@ModelAttribute("song") Song song) {
    	return "/songs/new.jsp";
    }
	
	@RequestMapping(value="/songs/new", method=RequestMethod.POST)
    public String create(@Valid @ModelAttribute("song") Song song, BindingResult result) {
        if (result.hasErrors()) {
            return "/songs/new.jsp";
        } else {
            songServ.createSong(song);
            return "redirect:/dashboard";
        }
    }
	
	@RequestMapping(value="/search", method=RequestMethod.POST)
    public String search(@RequestParam("search") String search) {
    	return "redirect:/search/"+search;
    }
	
	@RequestMapping("/search/{artist}")
    public String result(Model model, @PathVariable("artist") String artist) {
    	List<Song> songs = songServ.findArtist(artist);
        model.addAttribute("songs", songs);
        model.addAttribute("search", artist);
        return "/songs/results.jsp";
    }
	
	@RequestMapping("/songs/topthree")
    public String top(Model model) {
    	List<Song> songs = songServ.topThree();
    	model.addAttribute("songs", songs);
    	return "/songs/topthree.jsp";
    }
	
	@RequestMapping("/songs/{id}/delete")
    public String destroy(@PathVariable("id") Long id) {
        songServ.deleteSong(id);
        return "redirect:/dashboard";
    }
	
	
}
