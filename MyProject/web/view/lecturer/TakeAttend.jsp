<%-- 
    Document   : TakeAttend
    Created on : 13-10-2022, 16:25:49
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
                            <span style="margin-left: 16px">Home | <a href="#">View Schedule</a></span>
        </div>
        <h2>Single activity Attendance</h2>
        <span>Attendance for <b>PRJ301</b> with lecturer <b>sonnt5</b> at Slot 1 on Monday 10/10/2022 in Room DE203</span>
        
        <table align="center" style="width: 100%">
            <thead style="background: #6b90da; box-shadow: 0px 2px #f5f5f5"  align="center">
                <tr>
                    <th>NO</th>
                    <th>GROUP</th>
                    <th>CODE</th>
                    <th>NAME</th>
                    <th>STATUS</th>
                    <th>COMMENT</th>
                    <th>TAKER</th>
                    <th>RECORD TIME</th>
                </tr>
            </thead>
            <tbody align="center">
                <tr style="box-shadow: 0px 2px #f5f5f5">
                    <td>1</td>
                    <td>SE1645</td>
                    <td>HE161586</td>
                    <td>Vũ Xuân Trường</td>
                    <td>
                        <input type="radio" name="status1" value="" /> Present
                        <input type="radio" name="status1" value="" /> Absent
                    </td>
                    <td><input type="text" name="cmt" value="" /></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="box-shadow: 0px 2px #f5f5f5">
                    <td>1</td>
                    <td>SE1645</td>
                    <td>HE161586</td>
                    <td>Vũ Xuân Trường</td>
                    <td>
                        <input type="radio" name="status2" value="" /> Present
                        <input type="radio" name="status2" value="" /> Absent
                    </td>
                    <td><input type="text" name="cmt" value="" /></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="box-shadow: 0px 2px #f5f5f5">
                    <td>1</td>
                    <td>SE1645</td>
                    <td>HE161586</td>
                    <td>Vũ Xuân Trường</td>
                    <td>
                        <input type="radio" name="status3" value="" /> Present
                        <input type="radio" name="status3" value="" /> Absent
                    </td>
                    <td><input type="text" name="cmt" value="" /></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="box-shadow: 0px 2px #f5f5f5">
                    <td>1</td>
                    <td>SE1645</td>
                    <td>HE161586</td>
                    <td>Vũ Xuân Trường</td>
                    <td>
                        <input type="radio" name="status4" value="" /> Present
                        <input type="radio" name="status4" value="" /> Absent
                    </td>
                    <td><input type="text" name="cmt" value="" /></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="box-shadow: 0px 2px #f5f5f5">
                    <td>1</td>
                    <td>SE1645</td>
                    <td>HE161586</td>
                    <td>Vũ Xuân Trường</td>
                    <td>
                        <input type="radio" name="status5" value="" /> Present
                        <input type="radio" name="status5" value="" /> Absent
                    </td>
                    <td><input type="text" name="cmt" value="" /></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="box-shadow: 0px 2px #f5f5f5">
                    <td>1</td>
                    <td>SE1645</td>
                    <td>HE161586</td>
                    <td>Vũ Xuân Trường</td>
                    <td>
                        <input type="radio" name="status6" value="" /> Present
                        <input type="radio" name="status6" value="" /> Absent
                    </td>
                    <td><input type="text" name="cmt" value="" /></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="box-shadow: 0px 2px #f5f5f5">
                    <td>1</td>
                    <td>SE1645</td>
                    <td>HE161586</td>
                    <td>Vũ Xuân Trường</td>
                    <td>
                        <input type="radio" name="status7" value="" /> Present
                        <input type="radio" name="status7" value="" /> Absent
                    </td>
                    <td><input type="text" name="cmt" value="" /></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="box-shadow: 0px 2px #f5f5f5">
                    <td>1</td>
                    <td>SE1645</td>
                    <td>HE161586</td>
                    <td>Vũ Xuân Trường</td>
                    <td>
                        <input type="radio" name="status8" value="" /> Present
                        <input type="radio" name="status8" value="" /> Absent
                    </td>
                    <td><input type="text" name="cmt" value="" /></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="box-shadow: 0px 2px #f5f5f5">
                    <td>1</td>
                    <td>SE1645</td>
                    <td>HE161586</td>
                    <td>Vũ Xuân Trường</td>
                    <td>
                        <input type="radio" name="status9" value="" /> Present
                        <input type="radio" name="status9" value="" /> Absent
                    </td>
                    <td><input type="text" name="cmt" value="" /></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr style="box-shadow: 0px 2px #f5f5f5">
                    <td>1</td>
                    <td>SE1645</td>
                    <td>HE161586</td>
                    <td>Vũ Xuân Trường</td>
                    <td>
                        <input type="radio" name="status10" value="" /> Present
                        <input type="radio" name="status10" value="" /> Absent
                    </td>
                    <td><input type="text" name="cmt" value="" /></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
        <div align="center">
        <input type="submit" value="Add" />
        </div>
    </body>
</html>
