/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author KATY
 */
public class UserMapper implements RowMapper{

    public UserMapper() {
    }
    
    @Override
    public User mapRow(ResultSet rs, int i) throws SQLException{
        User u = new User();
        u.setName(rs.getString(1));
        u.setSurname(rs.getString(2));
        u.setPassword(rs.getString(3));
        return u;
        
    }

    
}
