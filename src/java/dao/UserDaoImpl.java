/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.sql.DataSource;
import mapper.UserMapper;
import model.User;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;

/**
 *
 * @author KATY
 */
public class UserDaoImpl implements UserDao{
    private DataSource dataSource;
    ArrayList <User> mylist = new ArrayList<>();
    
    public UserDaoImpl() {
    }

    public UserDaoImpl(DataSource dataSource) {
        this.dataSource = dataSource;
    }
    
    @Override
    public ArrayList selectAllUsers(){
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        String sql = "Select * from user";
        ArrayList <User> mylist =(ArrayList) jdbcTemplate.query(sql, new UserMapper());
        return mylist;
    }
    
    @Override 
    public int addUser(User u){
        SimpleJdbcInsert simpleJdbcInsert = new SimpleJdbcInsert(dataSource).withTableName("User");
        Map<String, Object> parameters = new HashMap<String, Object>();
        parameters.put("name", u.getName());
        parameters.put("surname", u.getSurname());
        parameters.put("password", u.getPassword());
        return simpleJdbcInsert.execute(parameters);
    }
    
    @Override
    public User checkUser(User u){
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        String name = u.getName();
        User user = (User)jdbcTemplate.queryForObject("Select * From user where name = ?", new Object[]{name}, new UserMapper());
        
       //String sql= "Select * From user Where name = :name";
 
     // SqlParameterSource namedParameters = new BeanPropertySqlParameterSource(u);
      //namedParameterJdbcTemplate.queryForObject(sql, namedParameters, String.class);

       return user;
    }
    

    
    
}
