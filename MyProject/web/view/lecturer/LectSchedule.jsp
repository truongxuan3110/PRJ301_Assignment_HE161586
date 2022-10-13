<%-- 
    Document   : LectSchedule
    Created on : 13-10-2022, 16:52:46
    Author     : Trường Xuân
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
                <h1 align="center"><span>FPT University Academic Portal</span>
                </h1>
        </div>
        <div style="background: #ccccff">
        <div style="float: right; margin-right: 16px;">
                        <a href="#">
                            <span>sonnt5</span></a> | <a href="#">logout</a> |
                <span> CAMPUS: FPTU-Hòa Lạc</span>
                    </div>
                            <span>Home | View Schedule</span>
        </div>
    <h2>Activities for
        <span>SonNT5 (Ngô Tùng Sơn)</span></h2>
    <div>
        <p><b>Chú thích:</b> <br>
            Các phòng bắt đầu bằng AL thuộc tòa nhà Alpha. VD: AL...<br />
            Các phòng bắt đầu bằng BE thuộc tòa nhà Beta. VD: BE,..<br />
            Các phòng bắt đầu bằng G thuộc tòa nhà Gamma. VD: G201,...<br />
            Các phòng tập bằng đầu bằng R thuộc khu vực sân tập Vovinam.<br/>
            Các phòng bắt đầu bằng DE thuộc tòa nhà Delta. VD: DE,..<br/>
			Little UK (LUK) thuộc tầng 5 tòa nhà Delta
        </p>
    </div>
        <div align="center">
            Lecturer:<input type="text" name="lecturer" value="" /><input type="submit" value="View" />
        </div>
        <table align="center">
            <thead>
                <tr style="background: #3366ff">
                    <th rowspan="2">
                        From - To <br>
                        <select>
                            <option selected="selected" value="1">10/10/2022 - 16/10/2022</option>
                            <option value="2">17/10/2022 - 23/10/2022</option>
                        </select>
                    </th>
                    <th align="center">Mon</th>
                    <th align="center">Tue</th>
                    <th align="center">Wed</th>
                    <th align="center">Thu</th>
                    <th align="center">Fri</th>
                    <th align="center">Sat</th>
                    <th align="center">Sun</th>
                </tr>
                <tr>
                    <th align="center">10/10/2022</th>
                    <th align="center">11/10/2022</th>
                    <th align="center">12/10/2022</th>
                    <th align="center">13/10/2022</th>
                    <th align="center">14/10/2022</th>
                    <th align="center">15/10/2022</th>
                    <th align="center">16/10/2022</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Slot 1</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>Slot 2</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>Slot 3</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>Slot 4</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>Slot 5</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>Slot 6</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
            </tbody>
        </table>
    
    <p>
        <b>More note / Chú thích thêm</b>:
    </p>
    <div>
        <ul>
            <li>(<font color='green'>attended</font>): sonnt5 had attended this activity / Ngô Tùng Sơn đã tham gia hoạt động này</li>
            <li>(<font color='red'>absent</font>): sonnt5 had NOT attended this activity / Ngô Tùng Sơn đã vắng mặt buổi này</li>   
            <li>(-): no data was given / chưa có dữ liệu</li> 
        </ul>
    </div>
    </body>
</html>
