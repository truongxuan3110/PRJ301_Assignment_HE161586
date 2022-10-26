<%-- 
    Document   : att
    Created on : 22-10-2022, 09:10:43
    Author     : Trường Xuân
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="margin-left: 5%; margin-right: 5%">
        <div>
            <h1 align="center"><span>FPT University Academic Portal</span>
            </h1>
        </div>
        <div style="background: #f5f5f5; padding-top: 10px; padding-bottom: 10px" items="${requestScope.lecturer}" var="l">
            <div style="float: right; margin-right: 16px;">
                <a href="#">logout</a> |
                <span> CAMPUS: FPTU-Hòa Lạc</span>
            </div>
            <span style="margin-left: 16px">Home | 
                <a href="timetable?lid=${requestScope.ses.lecturer.id}">View Schedule</a>
            
            </span>
        </div>
            
        Take attendance for Group: ${requestScope.ses.group.name} <br/>
        Subject: ${requestScope.ses.group.subject.name} <br/>
        Room: ${requestScope.ses.room.name} <br/>
        Date: ${requestScope.ses.date} <br>
        Time: ${requestScope.ses.slot.description}<br/>
        Attended: <span style="color: red;"> ${requestScope.ses.attanded?"Yes":"No"} </span>
        
        <form action="takeatt" method="POST" align="center">
            <input type="hidden" name="sesid" value="${param.id}"/>
            <table align="center" style="width: 100%">
                <thead style="background: #6b90da; box-shadow: 0px 2px #f5f5f5"  align="center">
                <tr>
                    <th>NO</th>
                    <th>GROUP</th>
                    <th>CODE</th>
                    <th>NAME</th>
                    <th>STATUS</th>
                    <th>COMMENT</th>
                    <th>RECORD TIME</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.ses.atts}" var="a" varStatus="loop">
                 <tr>
                    <td>${loop.index+1}</td>
                    <td>${requestScope.ses.group.name}</td>
                    <td>${a.student.code}
                    <input type="hidden" name="stdid" value="${a.student.id}"/>
                    </td>
                    <td>${a.student.name}</td>
                    <td><input type="radio"
                               <c:if test="${a.present}">
                               checked="checked"
                               </c:if>
                               name="present${a.student.id}" value="present" /> Present
                    <input type="radio"
                               <c:if test="${!a.present}">
                               checked="checked"
                               </c:if>
                               name="present${a.student.id}" value="absent" /> Absent</td>
                    <td><input type="text" name="description${a.student.id}" value="${a.description}" /></td>
                    <td>${a.record_time}</td>
                </tr>   
                    
                </c:forEach>
            </tbody>
            </table>
            <input type="submit" value="Save"/>
        </form>
    </body>
</html>
