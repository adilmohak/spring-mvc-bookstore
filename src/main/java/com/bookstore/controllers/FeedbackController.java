package com.bookstore.controllers;

import java.util.List;    
import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.ModelAttribute;    
import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestMethod;

import com.bookstore.beans.Feedback;
import com.bookstore.dao.FeedbackDao;   


@Controller
@RequestMapping("feedback")
public class FeedbackController {
	
	@Autowired
    FeedbackDao dao;
 
    @RequestMapping("/feedbackform")    
    public String showform(Model m){    
        m.addAttribute("command", new Feedback());  
        return "feedbackform";   
    }    

    @RequestMapping("/feedbacksuccess")    
    public String showsuccess(){ 
        return "thanks_feedback";   
    }    
    @RequestMapping(value="/save", method = RequestMethod.POST)    
    public String save(@ModelAttribute("feedback") Feedback feedback){    
        dao.save(feedback);    
        return "redirect:/feedback/feedbacksuccess";   
    }    
    
    @RequestMapping("/viewfeedbacks")    
    public String viewbooks(Model m){    
        List<Feedback> list = dao.getFeedbacks();    
        m.addAttribute("list",list);  
        return "viewfeedbacks";    
    }    
    
//    @RequestMapping(value="/editbook/{id}")    
//    public String edit(@PathVariable int id, Model m){    
//        Book book=dao.getBookById(id);    
//        m.addAttribute("command",book);  
//        return "bookeditform";    
//    }    
//    
//    @RequestMapping(value="/editsave",method = RequestMethod.POST)    
//    public String editsave(@ModelAttribute("book") Book book){    
//        dao.update(book);    
//        return "redirect:/book/viewbooks";    
//    }    
    
    @RequestMapping(value="/deletefeedback/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id){    
        dao.delete(id);    
        return "redirect:/feedback/viewfeedbacks";    
    }
}
