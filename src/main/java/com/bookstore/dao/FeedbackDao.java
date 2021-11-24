package com.bookstore.dao;

import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;    
import com.bookstore.beans.Feedback;


public class FeedbackDao {  
	JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    
	public int save(Feedback p){    
	    String sql="insert into feedback(name, phone, email, feedback) values('"+p.getName()+"', '"+p.getPhone()+"', '"+p.getEmail()+"',  '"+p.getFeedback()+"')";    
	    return template.update(sql);    
	}  
	public int delete(int id){    
	    String sql="delete from feedback where id="+id+"";    
	    return template.update(sql);    
	}    
	public Feedback getFeedbackById(int id){    
	    String sql="select * from feedback where id=?";    
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Feedback>(Feedback.class));    
	}
	public List<Feedback> getFeedbacks(){    
	    return template.query("select * from feedback",new RowMapper<Feedback>(){    
	        public Feedback mapRow(ResultSet rs, int row) throws SQLException {    
	            Feedback e=new Feedback();    
	            e.setId(rs.getInt(1));    
	            e.setName(rs.getString(2));    
	            e.setPhone(rs.getString(3));      
	            e.setEmail(rs.getString(4)); 
	            e.setFeedback(rs.getString(5));        
	            e.setDateCreated(rs.getString(6));
	            return e;    
	        }    
	    });    
	} 

}
