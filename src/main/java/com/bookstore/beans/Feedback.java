package com.bookstore.beans;


// id, name, phone, email, feedback, date_created

public class Feedback {
	private int id;    
	private String name;    
	private String phone;    
	private String email; 
	private String feedback;
	private String date_created;
	    
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
	public String getEmail() {    
	    return email;    
	}
	public void setEmail(String email) {    
	    this.email = email;    
	}
	public String getFeedback() {    
	    return feedback;    
	}
	public void setFeedback(String feedback) {    
	    this.feedback = feedback;    
	}
	public String getDateCreated() {    
	    return date_created;    
	}
	public void setDateCreated(String date_created) {    
	    this.date_created = date_created;    
	}
}
