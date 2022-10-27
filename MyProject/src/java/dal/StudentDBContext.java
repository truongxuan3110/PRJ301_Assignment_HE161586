/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;

/**
 *
 * @author Trường Xuân
 */
public class StudentDBContext extends DBContext<Student> {

    @Override
    public void insert(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Student get(int id) {
//        try {
//            String sql = "Select * from Student s inner join Student_Group sg on s.stdid=sg.stdid where sg.gid=?";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setInt(1, id);
//            ResultSet rs = stm.executeQuery();
//            if (rs.next()) {
//                Student s = new ;
//                l.setId(rs.getInt("lid"));
//                l.setCode(rs.getString("lcode"));
//                l.setName(rs.getString("lname"));
//                return l;
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(LecturerDBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return null;
throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Student> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public ArrayList<Student> listbyGid(int gid) {
        ArrayList<Student> stds = null;
        try {
            String sql = "Select * from Student s inner join Student_Group sg on s.stdid=sg.stdid where sg.gid=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, gid);
            ResultSet rs = stm.executeQuery();
            if (rs != null) {
                stds = new ArrayList<>();

                while (rs.next()) {
                    Student s = new Student();
                    s.setId(rs.getInt("stdid"));
                    s.setCode(rs.getString("stdcode"));
                    s.setName(rs.getString("stdname"));
                    stds.add(s);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return stds;
    }
    public static void main(String[] args) {
        StudentDBContext stdDB = new StudentDBContext();
        ArrayList<Student> s = stdDB.listbyGid(1);
        for (Student student : s) {
            System.out.println(student);
        }
    }
}
