/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attandance;
import model.Session;
import model.Student;

/**
 *
 * @author Trường Xuân
 */
public class AttandanceDBContext extends DBContext<Attandance> {

    @Override
    public void insert(Attandance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Attandance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Attandance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Attandance get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Attandance> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Attandance getBySesidAndStdid(int sesid, int stdid) {
        Attandance att = null;
        try {
            String sql = "Select * FROM Attandance where sesid=? and stdid=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sesid);
            stm.setInt(2, stdid);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                att = new Attandance();
                Session s = new Session();
                s.setId(sesid);
                att.setSession(s);
                att.setDescription(rs.getString("description"));
                Student st = new Student();
                st.setId(stdid);
                att.setStudent(st);
                att.setRecord_time(rs.getString("record_time"));
                att.setPresent(rs.getBoolean("present"));

            }
        } catch (SQLException ex) {
            Logger.getLogger(AttandanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return att;
    }
    public Map<Integer, Double> getNOAbsent(int gid) {
        Map<Integer, Double> list = new HashMap<>();
        SessionDBContext ses = new SessionDBContext();
        try {
            String sql = "select s.stdid, sum(case present when 0 then 1 else 0 end) as [NumberOfAbsent]\n"
                    + "from Session ses inner join [Group] g on ses.gid = g.gid\n"
                    + "							inner join Subject sub on sub.subid = g.subid\n"
                    + "						inner join Student_Group sg on sg.gid = g.gid\n"
                    + "						inner JOIN [Student] s ON s.stdid = sg.stdid\n"
                    + "                       LEFT JOIN Attandance a ON s.stdid = a.stdid AND ses.sesid = a.sesid\n"
                    + "					   where g.gid = ?\n"
                    + "					   group by s.stdid";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, gid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.put(rs.getInt("stdid"), Math.round((rs.getInt("NumberOfAbsent") * 100.0 / ses.getTotalSlotByGid(gid)) * 10) / 10.0);
            }
            return list;
        } catch (SQLException e) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }
}


