<%-- 
    Document   : timetable
    Created on : 16-10-2022, 15:49:59
    Author     : Trường Xuân
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="helper" class="util.DateTimeHelper"/>
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
                <a href="../logout">logout</a> |
                <span> CAMPUS: FPTU-Hòa Lạc</span>
            </div>
            <span style="margin-left: 16px">Home | View Schedule</span>
        </div>
        <div align="center">
            <h2>Timetable</h2>
            Lecturer: <input type="text" readonly="readonly" value="${requestScope.lecturer.code}"/>
            <form id="form" action="timetable" method="GET" onsubmit="return validate();">
                <input type="hidden" name="lid" value="${param.lid}"/>
                From: <input id="from" type="date" name="from" value="${requestScope.from}"/>
                To: <input id="to" type="date" name="to" value="${requestScope.to}"/>
                <input type="submit" value="View"/> 
            </form><br>
            <table align="center" style="width: 100%">
                <thead style="background: #6b90da; box-shadow: 0px 2px #f5f5f5" align="center">
                    <tr>
                        <th rowspan="2">
                            Slot
                        </th>
                        <c:forEach items="${requestScope.dates}" var="d">
                            <th>${helper.getDayNameofWeek(d)}</th>
                            </c:forEach>
                    </tr>
                    <tr>
                        <c:forEach items="${requestScope.dates}" var="d">
                            <th>${d}</th>
                            </c:forEach>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${requestScope.slots}" var="slot" varStatus="loop">
                        <tr align="center">
                            <td style="box-shadow: 2px 2px #f5f5f5">${slot.id}</td>
                            <c:forEach items="${requestScope.dates}" var="d">
                                <td style="box-shadow: 2px 2px #f5f5f5">
                                    <c:forEach items="${requestScope.sessions}" var="ses">
                                        <c:if test="${helper.compare(ses.date,d) eq 0 and (ses.slot.id eq slot.id)}">
                                            <a href="takeatt?id=${ses.id}">${ses.group.name}-${ses.group.subject.name}</a>
                                            <br/>
                                            at ${ses.room.name} <br>
                                            <c:if test="${ses.attanded}">
                                                (<font color=green>Attended</font>)
                                            </c:if>
                                            <c:if test="${!ses.attanded}">
                                                (<font color=red>Not yet</font>)
                                            </c:if>
                                            <br> 
                                            <span style="background: #5cb85c; border-radius: 0.25em; padding: 0.2em 0.6em 0.3em;font-size: 75%">
                                                <font color=white>
                                                ${slot.description}
                                                </font>
                                            </span>
                                        </c:if>
                                    </c:forEach>

                                </td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
    <script>

            function validate() {
                var from = document.getElementById('from').value;
                var to = document.getElementById('to').value;
                if (from > to) {
                    alert("From lớn hơn To. Hãy nhập lại!");                 
                    return false;
                } else { 
                   return true;
                }
            }
        </script>
        
</html>
