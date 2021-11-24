package com.bookstore.beans;


// id, name, phone, books, quantity, total_price, date_purchased

public class Purchase {
	private int id;    
	private String name;    
	private String phone;    
	private String books; 
	private int quantity;
	private double total_price;  
	private String date_purchased; 
	
	public int getId() {    
	    return id;    
	}    
	public void setId(int id) {    
	    this.id = id;    
	}
	public String getName() {    
	    return name;    
	}
	public void setName(String name) {    
	    this.name = name;    
	}
	public String getPhone() {    
	    return phone;    
	}
	public void setPhone(String phone) {    
	    this.phone = phone;    
	}
	public String getBooks() {    
	    return books;    
	}
	public void setBooks(String books) {    
	    this.books = books;    
	}
	public String getDatePurchased() {    
	    return date_purchased;    
	}
	public void setDatePurchased(String date_purchased) {    
	    this.date_purchased = date_purchased;    
	}
	public int getQuantity() {    
	    return quantity;    
	}
	public void setQuantity(int quantity) {    
	    this.quantity = quantity;    
	}
	public double getTotalPrice() {    
	    return total_price;    
	}
	public void setTotalPrice(double total_price) {    
	    this.total_price = total_price;    
	}
}
