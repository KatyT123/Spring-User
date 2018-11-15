/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import model.User;



/**
 *
 * @author KATY
 */
public interface UserDao {
    public ArrayList selectAllUsers();
    
    public int addUser(User u);
    
    public User checkUser(User u);
}
 
 