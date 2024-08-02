package com.libraryspringmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.libraryspringmvc.service.BookService;
import com.librarysprinmvc.model.Library;

@Controller
@RequestMapping("/book")
public class BookController {
	
	@Autowired
	private BookService service;
	
	@RequestMapping("/display")
	public ModelAndView diplayBookInfo() {
		ModelAndView mv = new ModelAndView("displayAllBooks");
		List<Library> books = service.displayAllBooks();
		mv.addObject("books",books);
		return mv;
	}
	
	@RequestMapping("/addBook")
	public ModelAndView addBook() {
		ModelAndView mv = new ModelAndView("addBook");
		Library book = new Library();
		mv.addObject("command", book);
		return mv;
	}
	
	@RequestMapping(value="/saveBook",method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("book") Library book) {
		ModelAndView mv = new ModelAndView("displayAllBooks");
		String action = service.addOrUpdateBooks(book);
		List<Library> books = service.displayAllBooks();
		mv.addObject("books", books);
		mv.addObject("msg", book.getBookName() + ("added".equals(action) ? " added successfully" : " updated successfully")); 																								// redirect
		return mv;
		
	}
	
	@RequestMapping("/editBook/{id}")
	public ModelAndView edit(@PathVariable int id) {
		ModelAndView mv = new ModelAndView("editBook");
		Library book = service.getBookById(id);
		mv.addObject("command", book);
		return mv;
	}

	@RequestMapping("/deleteBook/{id}")
	public ModelAndView delete(@PathVariable int id) {
		ModelAndView mv = new ModelAndView("displayAllBooks");
		Library book = service.getBookById(id);
		service.deleteBook(id);
		List<Library> books = service.displayAllBooks();
		mv.addObject("books", books);
		if (book != null) {
			mv.addObject("msg", book.getBookName() + " deleted successfully");
		}
		return mv;

	}
	

}
