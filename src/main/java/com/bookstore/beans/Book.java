package com.bookstore.beans;

public class Book {
	private int id;    
	private String title;    
	private String author;    
	private String description; 
	private String genre;    
	private int copy;    
	private float price;   
	    
	public int getId() {    
	    return id;    
	}    
	public void setId(int id) {    
	    this.id = id;    
	}    
	public String getTitle() {    
	    return title;    
	}    
	public void setTitle(String title) {    
	    this.title = title;    
	}    
	public String getAuthor() {    
	    return author;    
	}    
	public void setAuthor(String author) {    
	    this.author = author;    
	}    
	public String getDescription() {    
	    return description;    
	}    
	public void setDescription(String description) {    
	    this.description = description;    
	}    
	public float getPrice() {    
	    return price;    
	}    
	public void setPrice(float price) {    
	    this.price = price;    
	}    
	public String getGenre() {    
	    return genre;    
	}    
	public void setGenre(String genre) {    
	    this.genre = genre;    
	} 
	public int getCopy() {    
	    return copy;    
	}    
	public void setCopy(int copy) {    
	    this.copy = copy;    
	}
}
