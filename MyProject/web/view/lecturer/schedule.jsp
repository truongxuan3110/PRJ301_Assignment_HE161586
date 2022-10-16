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
    <body style="margin-left: 5%; margin-right: 5%">
        <div>
                <h1 align="center"><span>FPT University Academic Portal</span>
                </h1>
        </div>
        <div style="background: #f5f5f5; padding-top: 10px; padding-bottom: 10px">
        <div style="float: right; margin-right: 16px;">
                        <a href="#">
                            <span>sonnt5</span></a> | <a href="#">logout</a> |
                <span> CAMPUS: FPTU-Hòa Lạc</span>
                    </div>
                            <span style="margin-left: 16px">Home | View Schedule</span>
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
        <table align="center" style="width: 100%">
            <thead style="background: #6b90da; box-shadow: 0px 2px #f5f5f5" align="center">
                <tr>
                    <th rowspan="2">
                        From - To <br>
                        <select>
                            <option selected="selected" value="1">10/10/2022 - 16/10/2022</option>
                            <option value="2">17/10/2022 - 23/10/2022</option>
                        </select>
                    </th>
                    <th>Mon</th>
                    <th>Tue</th>
                    <th>Wed</th>
                    <th>Thu</th>
                    <th>Fri</th>
                    <th>Sat</th>
                    <th>Sun</th>
                </tr>
                <tr>
                    <th>10/10/2022</th>
                    <th>11/10/2022</th>
                    <th>12/10/2022</th>
                    <th>13/10/2022</th>
                    <th>14/10/2022</th>
                    <th>15/10/2022</th>
                    <th>16/10/2022</th>
                </tr>
            </thead>
            <tbody align="center">
                <tr style="box-shadow: 0px 2px #f5f5f5">
                    <td>Slot 1 </td>
                    <td>
                        <p>
                            <a href='#'>SE1645-PRJ301-at DE203</a>
                                 <a> 
                                     <br/>(<font color=green>Attended</font>)<br/>
                                     <span style="background: #5cb85c; border-radius: 0.25em; padding: 0.2em 0.6em 0.3em;font-size: 75%"><font color=white>(7:30-9:00)</font></span><br/>
                                 </p>
                    </td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>
                        <p>
                            <a href='#'>SE1645-PRJ301-at DE203</a>
                                 <a> 
                                     <br/>(<font color=red>Not yet</font>)<br/>
                                     <span style="background: #5cb85c; border-radius: 0.25em; padding: 0.2em 0.6em 0.3em;font-size: 75%"><font color=white>(7:30-9:00)</font></span><br/>
                                 </p>
                    </td>
                    <td>-</td>
                </tr>
                <tr style="box-shadow: 0px 2px #f5f5f5; background: #f5f5f5">
                    <td>Slot 2</td>
                    <td>
                        <p>
                            <a href='#'>SE1645-PRJ301-at DE203</a>
                                 <a> 
                                     <br/>(<font color=green>Attended</font>)<br/>
                                     <span style="background: #5cb85c; border-radius: 0.25em; padding: 0.2em 0.6em 0.3em;font-size: 75%"><font color=white>(9:10-10:40)</font></span><br/>
                                 </p>
                    </td>
                    <td><p>
                            <a href='#'>SE1645-PRJ301-at DE203</a>
                                 <a> 
                                     <br/>(<font color=red>Not yet</font>)<br/>
                                     <span style="background: #5cb85c; border-radius: 0.25em; padding: 0.2em 0.6em 0.3em;font-size: 75%"><font color=white>(9:10-10:40)</font></span><br/>
                                 </p></td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>
                        <p>
                            <a href='#'>SE1645-PRJ301-at DE203</a>
                                 <a> 
                                     <br/>(<font color=red>Not yet</font>)<br/>
                                     <span style="background: #5cb85c; border-radius: 0.25em; padding: 0.2em 0.6em 0.3em;font-size: 75%"><font color=white>(9:10-10:40)</font></span><br/>
                                 </p>
                    </td>
                    <td>-</td>
                </tr>
                <tr style="box-shadow: 0px 2px #f5f5f5">
                    <td>Slot 3</td>
                    <td>
                        <p>
                            <a href='#'>SE1645-PRJ301-at DE203</a>
                                 <a> 
                                     <br/>(<font color=green>Attended</font>)<br/>
                                     <span style="background: #5cb85c; border-radius: 0.25em; padding: 0.2em 0.6em 0.3em;font-size: 75%"><font color=white>(10:50-12:20)</font></span><br/>
                                 </p>
                    </td>
                    <td>-</td>
                    <td>-</td>
                    <td>
                        <p>
                            <a href='#'>SE1645-PRJ301-at DE203</a>
                                 <a> 
                                     <br/>(<font color=red>Not yet</font>)<br/>
                                     <span style="background: #5cb85c; border-radius: 0.25em; padding: 0.2em 0.6em 0.3em;font-size: 75%"><font color=white>(10:50-12:20)</font></span><br/>
                                 </p>
                    </td>
                    <td>-</td>
                    <td>-</td>
                    <td>
                        <p>
                            <a href='#'>SE1645-PRJ301-at DE203</a>
                                 <a> 
                                     <br/>(<font color=red>Not yet</font>)<br/>
                                     <span style="background: #5cb85c; border-radius: 0.25em; padding: 0.2em 0.6em 0.3em;font-size: 75%"><font color=white>(10:50-12:20)</font></span><br/>
                                 </p>
                    </td>
                </tr>
                <tr style="box-shadow: 0px 2px #f5f5f5; background: #f5f5f5">
                    <td>Slot 4</td>
                    <td>
                        <p>
                            <a href='#'>SE1645-PRJ301-at DE203</a>
                                 <a> 
                                     <br/>(<font color=green>Attended</font>)<br/>
                                     <span style="background: #5cb85c; border-radius: 0.25em; padding: 0.2em 0.6em 0.3em;font-size: 75%"><font color=white>(12:50-14:20)</font></span><br/>
                                 </p>
                    </td>
                    <td>-</td>
                    <td>-</td>
                    <td>
                        <p>
                            <a href='#'>SE1645-PRJ301-at DE203</a>
                                 <a> 
                                     <br/>(<font color=red>Not yet</font>)<br/>
                                     <span style="background: #5cb85c; border-radius: 0.25em; padding: 0.2em 0.6em 0.3em;font-size: 75%"><font color=white>(12:50-14:20)</font></span><br/>
                                 </p>
                    </td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr style="box-shadow: 0px 2px #f5f5f5">
                    <td>Slot 5</td>
                    <td>
                        <p>
                            <a href='#'>SE1645-PRJ301-at DE203</a>
                                 <a> 
                                     <br/>(<font color=green>Attended</font>)<br/>
                                     <span style="background: #5cb85c; border-radius: 0.25em; padding: 0.2em 0.6em 0.3em;font-size: 75%"><font color=white>(14:30-16:00)</font></span><br/>
                                 </p>
                    </td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>
                        <p>
                            <a href='#'>SE1645-PRJ301-at DE203</a>
                                 <a> 
                                     <br/>(<font color=red>Not yet</font>)<br/>
                                     <span style="background: #5cb85c; border-radius: 0.25em; padding: 0.2em 0.6em 0.3em;font-size: 75%"><font color=white>(14:30-16:00)</font></span><br/>
                                 </p>
                    </td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr style="box-shadow: 0px 2px #f5f5f5; background: #f5f5f5">
                    <td>Slot 6</td>
                    <td>
                        <p>
                            <a href='#'>SE1645-PRJ301-at DE203</a>
                                 <a> 
                                     <br/>(<font color=green>Attended</font>)<br/>
                                     <span style="background: #5cb85c; border-radius: 0.25em; padding: 0.2em 0.6em 0.3em;font-size: 75%"><font color=white>(16:10-17:40)</font></span><br/>
                                 </p>
                    </td>
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
