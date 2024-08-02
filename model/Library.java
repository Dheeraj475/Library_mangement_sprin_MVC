package com.librarysprinmvc.model;

public class Library {

	private int id;
	private String bookName;
	private String author;
	private int price;
	private String status;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Library() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Library(int id, String bookName, String author, int price, String status) {
		super();
		this.id = id;
		this.bookName = bookName;
		this.author = author;
		this.price = price;
		this.status = status;
	}

	@Override
	public String toString() {
		return "BEC_Library [id=" + id + ", bookName=" + bookName + ", author=" + author + ", price=" + price
				+ ", status=" + status + "]";
	}

}
