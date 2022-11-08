/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AttandanceDBContext;
import dal.SessionDBContext;
import dal.StudentDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import model.Attandance;
import model.Session;
import model.Student;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author Trường Xuân
 */
public class ReportController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("gid") != null) {
            int gid = Integer.parseInt(request.getParameter("gid"));
            SessionDBContext sesDB = new SessionDBContext();
            StudentDBContext stdDB = new StudentDBContext();
            ArrayList<Session> sessionList = sesDB.listByGid(gid);
            ArrayList<Student> stds = stdDB.listbyGid(gid);

            AttandanceDBContext atd = new AttandanceDBContext();

            if (stds != null && sessionList != null) {
                request.setAttribute("studentList", stds);
                request.setAttribute("sessionList", sessionList);
            }
            int total = sesDB.getTotalSlotByGid(gid);
            request.setAttribute("total", total);
            Map<Integer, Double> map = atd.getNOAbsent(gid);

            request.setAttribute("map", map);

            request.getRequestDispatcher("../view/lecturer/report.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
