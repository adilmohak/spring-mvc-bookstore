package com.bookstore.dao;

import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;  

import com.bookstore.beans.Book;


public class BookDao {  
	JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    
	public int save(Book p){    
	    String sql="insert into book(title, author, genre, description, copy, price) values('"+p.getTitle()+"', '"+p.getAuthor()+"', '"+p.getGenre()+"',  '"+p.getDescription()+"',  "+p.getCopy()+", "+p.getPrice()+")";    
	    return template.update(sql);    
	}    
	public int update(Book p){    
	    String sql="update book set title='"+p.getTitle()+"', author='"+p.getAuthor()+"', genre='"+p.getGenre()+"', description='"+p.getDescription()+"', copy="+p.getCopy()+", price="+p.getPrice()+" where id="+p.getId()+"";    
	    return template.update(sql);    
	}    
	public int delete(int id){    
	    String sql="delete from book where id="+id+"";    
	    return template.update(sql);    
	}    
	public Book getBookById(int id){    
	    String sql="select * from book where id=?";    
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Book>(Book.class));    
	}    
	public List<Book> getBooks(){    
	    return template.query("select * from book",new RowMapper<Book>(){    
	        public Book mapRow(ResultSet rs, int row) throws SQLException {    
	            Book e=new Book();    
	            e.setId(rs.getInt(1));    
	            e.setTitle(rs.getString(2));    
	            e.setAuthor(rs.getString(3));    
	            e.setGenre(rs.getString(4));     
	            e.setDescription(rs.getString(5));       
	            e.setCopy(rs.getInt(7));      
	            e.setPrice(rs.getFloat(8));     
	            return e;    
	        }    
	    });    
	} 

}
