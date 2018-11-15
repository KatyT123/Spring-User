/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UserDao;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
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
public class LogInSpringController {
    
    @Autowired
    private UserDao userDao;
    
     @RequestMapping(value = "loginform.htm")
     public String ShowRegisterForm(ModelMap model){
        User user = new User();
        model.addAttribute("user", user);
        return "loginform";
    }
    
     @RequestMapping(value = "/checklogin.htm", method = RequestMethod.GET)
     public String addUser(ModelMap model, User user, HttpSession session){
        model.addAttribute("user", user); 
        String password = user.getPassword();
        user = userDao.checkUser(user);
        if (BCrypt.checkpw(password, user.getPassword())){
            session.setAttribute("user", user);
            ArrayList<User> result = userDao.selectAllUsers();
            model.addAttribute("result", result);
            return "userlist";
        }
        else
        return "error";
    }
    }

