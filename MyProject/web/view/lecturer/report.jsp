<%-- 
    Document   : report
    Created on : 26-10-2022, 23:41:07
    Author     : Trường Xuân
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Student" %>
<%@ page import="model.Session" %>
<%@ page import="model.Attandance" %>
<%@ page import="dal.AttandanceDBContext" %>
<%@ page import="pageNumber.*, java.util.*, java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body  style="margin-left: 5%; margin-right: 5%">
        <div>
            <h1 align="center"><span>FPT University Academic Portal</span>
            </h1>
        </div>
        <div style="background: #f5f5f5; padding-top: 10px; padding-bottom: 10px" items="${requestScope.lecturer}" var="l">
            <div style="float: right; margin-right: 16px;">
                <a href="../logout">logout</a> |
                <span> CAMPUS: FPTU-Hòa Lạc</span>
            </div>
            <span style="margin-left: 16px">Home | 
                <a href="timetable?lid=${sessionScope.lecturer.getId()}">View Schedule</a>
            </span>
        </div>
        <table align="center" style="width: 100%">
            <thead style="background: #6b90da; box-shadow: 0px 2px #f5f5f5" align="center">
                <tr>
                    <th>CODE</th>
                    <th>Name</th>
                    <th>Percent</th>
                        <% int j=1;%>
                        <c:forEach items="${requestScope.sessionList}" var="i">

                        <th><a href="takeatt?id=${i.getId()}">Slot <%=j%></a></th>
                            <% j++; %>
                        </c:forEach>
                </tr>
            </thead>
            <tbody align="center">

                <%
        if(request.getAttribute("studentList") != null){
            ArrayList<Student> students = new ArrayList<Student>();
            students = (ArrayList<Student>)request.getAttribute("studentList");
            Map<Integer, Double> map = (Map<Integer, Double>)request.getAttribute("map");
            for(Student s :students){
                %>
                <tr>
                    <td><%=s.getCode()%></td>
                    <td><%=s.getName()%></td>
                    <% for (Map.Entry<Integer, Double> m : map.entrySet()) {
                        if(m.getKey() == s.getId()){
                    %>
                    <td><%=m.getValue()%>%</td>

                    <%      }
                        }
                        if(request.getAttribute("sessionList") != null){
                            AttandanceDBContext attDB = new AttandanceDBContext();
                            ArrayList<Session> sessionList = new ArrayList<Session>();
                            sessionList = (ArrayList<Session>) request.getAttribute("sessionList");
                            for(Session ss :sessionList){
                                Attandance att = attDB.getBySesidAndStdid(ss.getId(), s.getId());
                                if(att != null){
                    %>
                    <td><font color=<%=att.isPresent() == true ? "green" : "red"%>><%=att.isPresent() == true ? "P" : "A"%></font></td>    
                        <%          }
                                else{%> 
                    <td>-</td>
                                    <%}
                                          }
                                           }
                    %>
                </tr>
                <%
                        }
                    }
                %>

            </tbody>
        </table>
    </body>
</html>
