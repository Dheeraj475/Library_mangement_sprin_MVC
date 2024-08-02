package com.libraryspringmvc.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;

import com.librarysprinmvc.model.Library;

@Service
public class BookService {

	private static List<Library> books = new ArrayList<>();

	static {

		Library b1 = new Library(1, "Learn React", "Code with harry", 00, "available");
		Library b2 = new Library(2, "The secret", "Rhonda byrne", 350, "available");
		Library b3 = new Library(3, "Atomic habits", "James clear", 200, "available");
		Library b4 = new Library(4, "Learn C++", "Telusko", 2210, "available");
		Library b5 = new Library(5, "Learn Next js", "Kirill Konshin", 1900, "available");

		books.add(b1);
		books.add(b2);
		books.add(b3);
		books.add(b4);
		books.add(b5);

	}

	public List<Library> displayAllBooks() {
		return books;
	}

	public String addOrUpdateBooks(Library book) {
		String actions = "added";
		for (int i = 0; i < books.size(); i++) {
			if (books.get(i).getId() == book.getId()) {
				books.set(i, book);
				actions = "updated";
				return actions;
			}
		}

		books.add(book);
		return actions;
	}

	public Library getBookById(int id) {
		for (Library book : books) {
			if (book.getId() == id) {
				return book;
			}
		}
		return null;
	}

	public void deleteBook(int id) {
		Iterator<Library> iterator = books.iterator();
		while (iterator.hasNext()) {
			Library book = iterator.next();
			if (book.getId() == id) {
				iterator.remove();
				break;
			}
		}
	}
}
