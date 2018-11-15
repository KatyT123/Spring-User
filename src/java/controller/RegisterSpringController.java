/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UserDao;
import java.util.List;
import model.User;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

/**
 *
 * @author KATY
 */
@Controller
public class RegisterSpringController {
    
    @Autowired
    private UserDao userDao;
    
    /*@RequestMapping(value = "userlist")
    public ModelAndView selectsAllUsers(){
        User user = new User();
        List<User> usersList = userDao.selectAllUsers();
        ModelAndView mv = new ModelAndView("userlist");
        mv.addObject("usersList", usersList);
        return mv;
        
    } */
    
    @RequestMapping(value = "/registerform.htm")
    public String ShowRegisterForm(ModelMap model){
        User user = new User();
        model.addAttribute("user", user);
        return "registerform";
    }
    
    @RequestMapping(value = "/registerhandling.htm", method = RequestMethod.GET)
    public String addUser(ModelMap model, User user){
       model.addAttribute("user", user);
       if(user.getPassword().equals(user.getConfirm_password())){
       String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()); 
       user.setPassword(hashed);
       int result  = userDao.addUser(user);
            if (result == 1) return "index";
            else return "error";
       }else return "error";
    }
    
    
}
