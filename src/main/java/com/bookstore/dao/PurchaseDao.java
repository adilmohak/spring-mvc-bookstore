package com.bookstore.dao;

import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;

import com.bookstore.beans.Purchase;

//id, name, phone, books, quantity, total_price, date_purchased

public class PurchaseDao {  
	JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    
	public int save(Purchase p){    
	    String sql="insert into purchase_detail(name, phone, books, quantity, total_price) values('"+p.getName()+"', '"+p.getPhone()+"', '"+p.getBooks()+"',  "+p.getQuantity()+", "+p.getTotalPrice()+")";    
	    return template.update(sql);    
	}    
	public int update(Purchase p){    
	    String sql="update book set name='"+p.getName()+"', phone='"+p.getPhone()+"', books='"+p.getBooks()+"', quantity="+p.getQuantity()+", total_price="+p.getTotalPrice()+"";    
	    return template.update(sql);    
	}
	public int delete(int id){    
	    String sql="delete from purchase_detail where id="+id+"";    
	    return template.update(sql);    
	}    
	public Purchase getPurchaseById(int id){    
	    String sql="select * from purchase_detail where id=?";    
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Purchase>(Purchase.class));    
	}
	public List<Purchase> getPurchases(){    
	    return template.query("select * from purchase_detail",new RowMapper<Purchase>(){    
	        public Purchase mapRow(ResultSet rs, int row) throws SQLException {    
	        	Purchase e = new Purchase();    
	            e.setId(rs.getInt(1));    
	            e.setName(rs.getString(2));    
	            e.setPhone(rs.getString(3));      
	            e.setBooks(rs.getString(4)); 
	            e.setQuantity(rs.getInt(5));        
	            e.setTotalPrice(rs.getFloat(6));    
	            e.setDatePurchased(rs.getString(4)); 
	            return e;    
	        }    
	    });    
	} 

}
