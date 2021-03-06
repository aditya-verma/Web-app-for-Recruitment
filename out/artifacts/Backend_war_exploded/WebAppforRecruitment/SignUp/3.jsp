<%@ page import="java.sql.*" %>
<html lang="en">
<head>
    <link href="../css/datepicker.css" rel="stylesheet">
    <script src="../js/bootstrap-datepicker.js"></script>
    <script type="text/javascript">
        $(function() {
            $( "#PGDate" ).datepicker({
                format: "dd-mm-yyyy",
                viewMode: "months",
                minViewMode: "days",
                pickerPosition: "bottom-left"});

            $( "#UGDate" ).datepicker({
                format: "dd-mm-yyyy",
                viewMode: "months",
                minViewMode: "days",
                pickerPosition: "bottom-left"});
            $( "#12Date" ).datepicker({
                format: "dd-mm-yyyy",
                viewMode: "months",
                minViewMode: "days",
                pickerPosition: "bottom-left"});
            $( "#10Date" ).datepicker({
                format: "dd-mm-yyyy",
                viewMode: "months",
                minViewMode: "days",
                pickerPosition: "bottom-left"});
        });
    </script>
</head>
<body >
<%
    String PGdegree = "",PGdiscipline = "",PGinstitute = "",PGboard = "",PGdateOfPassing = "",PGdivision = "",PGpercentage = "";
    String UGdegree = "",UGdiscipline = "",UGinstitute = "",UGboard = "",UGdateOfPassing = "",UGdivision = "",UGpercentage = "";
    String degree12 = "",discipline12 = "",institute12 = "",board12 = "",dateOfPassing12 = "",division12 = "",percentage12 = "";
    String degree10 = "",discipline10 = "",institute10 = "",board10 = "",dateOfPassing10 = "",division10 = "",percentage10 = "";
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection((String)session.getAttribute("DatabaseHost"),(String)session.getAttribute("DatabaseUser"),(String)session.getAttribute("DatabasePassword"));
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM Educational_Qualification WHERE Qualification='Post Graduation' AND ApplicationNumber='"+session.getAttribute("ApplicationNumber")+"'");
        if (rs.next()){
            PGdegree = rs.getString("Degree");
            PGdiscipline = rs.getString("Discipline");
            PGinstitute = rs.getString("Institute");
            PGboard = rs.getString("BoardOrUniv");
            PGdateOfPassing = rs.getString("DateOfPassing");
            PGdivision = rs.getString("Division");
            PGpercentage = rs.getString("Percentage");
        }
        rs = stmt.executeQuery("SELECT * FROM Educational_Qualification WHERE Qualification='Graduation' AND ApplicationNumber='"+session.getAttribute("ApplicationNumber")+"'");
        if (rs.next()){
            UGdegree = rs.getString("Degree");
            UGdiscipline = rs.getString("Discipline");
            UGinstitute = rs.getString("Institute");
            UGboard = rs.getString("BoardOrUniv");
            UGdateOfPassing = rs.getString("DateOfPassing");
            UGdivision = rs.getString("Division");
            UGpercentage = rs.getString("Percentage");
        }
        rs = stmt.executeQuery("SELECT * FROM Educational_Qualification WHERE Qualification='10th' AND ApplicationNumber='"+session.getAttribute("ApplicationNumber")+"'");
        if (rs.next()){
            degree12 = rs.getString("Degree");
            discipline12 = rs.getString("Discipline");
            institute12 = rs.getString("Institute");
            board12 = rs.getString("BoardOrUniv");
            dateOfPassing12 = rs.getString("DateOfPassing");
            division12 = rs.getString("Division");
            percentage12 = rs.getString("Percentage");
        }
        rs = stmt.executeQuery("SELECT * FROM Educational_Qualification WHERE Qualification='12th' AND ApplicationNumber='"+session.getAttribute("ApplicationNumber")+"'");
        if (rs.next()){
            degree10 = rs.getString("Degree");
            discipline10 = rs.getString("Discipline");
            institute10 = rs.getString("Institute");
            board10 = rs.getString("BoardOrUniv");
            dateOfPassing10 = rs.getString("DateOfPassing");
            division10 = rs.getString("Division");
            percentage10 = rs.getString("Percentage");
        }
        con.close();
        stmt.close();    }
    catch (Exception e){}
%>
<form class="text-center" method="post" action="">
    <label class="label text-center"><h4 class="h4"><strong>Post Graduation Details</strong></h4></label>
    <div class="form-row form-group">
        <div class="col-sm-4">
            <input type="text" class="form-control" value="Post Graduation" disabled>
        </div>
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Degree" name="PGDegree" value="<%=UGdegree%>" required>
        </div>
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Discipline" name="PGDiscipline" value="<%=UGdiscipline%>" required>
        </div>
    </div>
    <div class="row form-group">
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Institute" name="PGInstitute" value="<%=UGinstitute%>" required>
        </div>
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Board/University" name="PGBoard" value="<%=UGboard%>">
        </div>
        <div class="col-sm-4">
            <input type="text" pattern="[0-9-]+" class="form-control" placeholder="Enter Date" id="PGDate" name="PGDate" value="<%=UGdateOfPassing%>" required>
        </div>
    </div>
    <div class="row form-group">
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Division" name="PGDivision" value="<%=UGdivision%>">
        </div>
        <div class="col-sm-4">
            <input type="text" pattern="[0-9.%]+" class="form-control" placeholder="Enter Percentage/CGPA" name="PGPercentage" value="<%=UGpercentage%>">
        </div>
    </div>

    <label class="label text-center"><h4 class="h4"><strong>Graduation Details</strong></h4></label>
    <div class="row form-group">
        <div class="col-sm-4">
            <input type="text" class="form-control" value="Graduation" disabled>
        </div>
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Degree" name="UGDegree" required value="<%=PGdegree%>">
        </div>
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Discipline" name="UGDiscipline" required value="<%=PGdiscipline%>">
        </div>
    </div>
    <div class="row form-group">
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Institute" name="UGInstitute" required value="<%=PGinstitute%>">
        </div>
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Board/University" name="UGBoard" value="<%=PGboard%>">
        </div>
        <div class="col-sm-4">
            <input type="text" pattern="[0-9-]+" class="form-control" placeholder="Enter Date" id="UGDate" name="UGDate" required value="<%=PGdateOfPassing%>">
        </div>
    </div>
    <div class="row form-group">
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Division" name="UGDivision" required value="<%=PGdivision%>">
        </div>
        <div class="col-sm-4">
            <input type="text" pattern="[0-9.%]+" class="form-control" placeholder="Enter Percentage/CGPA" name="UGPercentage" required value="<%=PGpercentage%>">
        </div>
    </div>

    <label class="label text-center"><h4 class="h4"><strong>12<sup>th</sup> Details</strong></h4></label>
    <div class="row form-group">
        <div class="col-sm-4">
            <input type="text" class="form-control" value="12th" disabled>
        </div>
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Degree" name="12Degree" value="<%=degree12%>">
        </div>
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Discipline" name="12Discipline" required value="<%=discipline12%>">
        </div>
    </div>
    <div class="row form-group">
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Institute" name="12Institute" required value="<%=institute12%>">
        </div>
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Board/University" name="12Board" required value="<%=board12%>">
        </div>
        <div class="col-sm-4">
            <input type="text" pattern="[0-9-]+" class="form-control" placeholder="Enter Date"  id="12Date" name="12Date" required value="<%=dateOfPassing12%>">
        </div>
    </div>
    <div class="row form-group">
        <div class="col-sm-4">
            <input type="text"  class="form-control" placeholder="Enter Division" name="12Division" required value="<%=division12%>">
        </div>
        <div class="col-sm-4">
            <input type="text" pattern="[0-9.%]+" class="form-control" placeholder="Enter Percentage/CGPA" name="12Percentage" required value="<%=percentage12%>">
        </div>
    </div>

    <label class="label text-center"><h4 class="h4"><strong>10<sup>th</sup> Details</strong></h4></label>
    <div class="row form-group">
        <div class="col-sm-4">
            <input type="text" class="form-control" value="10th" disabled>
        </div>
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Degree" name="10Degree" value="<%=degree10%>">
        </div>
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Discipline" name="10Discipline" required value="<%=discipline10%>">
        </div>
    </div>
    <div class="row form-group">
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Institute" name="10Institute" required value="<%=institute10%>">
        </div>
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Board/University" name="10Board" required value="<%=board10%>">
        </div>
        <div class="col-sm-4">
            <input type="text" pattern="[0-9-]+" class="form-control" placeholder="Enter Date" id="10Date" name="10Date" required value="<%=dateOfPassing10%>">
        </div>
    </div>
    <div class="row form-group">
        <div class="col-sm-4">
            <input type="text" class="form-control" placeholder="Enter Division" name="10Division" required value="<%=division10%>">
        </div>
        <div class="col-sm-4">
            <input type="text"pattern="[0-9.%]+" class="form-control" placeholder="Enter Percentage/CGPA" name="10Percentage" required required value="<%=percentage10%>">
        </div>
    </div>
    <div class="col-md-12 mb-3" style="margin: 0;text-align: center">
        <button class="btn btn-primary" name="btn-educationalqualification"  type="submit">Submit</button>
        <button class="btn btn-dark " id="reset"  type="reset">Reset</button>
    </div>
</form>
</body>
<%

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection((String)session.getAttribute("DatabaseHost"),(String)session.getAttribute("DatabaseUser"),(String)session.getAttribute("DatabasePassword"));
        Statement st = con.createStatement();
        if (request.getParameter("btn-educationalqualification") != null) {
            String qualification = "";
            String degree = "";
            String discipline = "";
            String institute = "";
            String board = "";
            String dateOfPassing = "";
            String division = "";
            String percentage = "";
            String sql="";
            int res1=0,res2=0,res3=0,res4=0;

            qualification = "Post Graduation";
            degree = request.getParameter("PGDegree");
            discipline = (request.getParameter("PGDiscipline"));
            institute = request.getParameter("PGInstitute");
            board = request.getParameter("PGBoard");
            dateOfPassing = request.getParameter("PGDate");
            division = request.getParameter("PGDivision");
            percentage = request.getParameter("PGPercentage");
            ResultSet rs= st.executeQuery("SELECT * FROM Educational_Qualification WHERE Qualification='Post Graduation' AND ApplicationNumber='"+session.getAttribute("ApplicationNumber")+"'");
            if(rs.next()){
                res1 = st.executeUpdate("UPDATE Educational_Qualification SET Degree = '"+degree+
                        "', Discipline = '"+discipline+
                        "', Institute = '"+institute+
                        "', BoardOrUniv = '"+board+
                        "', DateOfPassing = '"+dateOfPassing+
                        "', Division = '"+division+
                        "', Percentage = '"+percentage+
                        "' WHERE ApplicationNumber='"+session.getAttribute("ApplicationNumber")+"' AND Qualification='Post Graduation'");
            }
            else{
                sql = "insert into Educational_Qualification (ApplicationNumber,Qualification,Degree,Discipline,Institute,BoardOrUniv,DateOfPassing,Division,Percentage) " +
                        "values ('"+session.getAttribute("ApplicationNumber")+"','" + qualification + "','"
                        + degree + "','" + discipline + "', '"
                        + institute + "','" + board + "','"
                        + dateOfPassing + "','" + division
                        + "','" + percentage + "')";
                res1 = st.executeUpdate(sql);
            }


            qualification = "Graduation";
            degree = request.getParameter("UGDegree");
            discipline = (request.getParameter("UGDiscipline"));
            institute = request.getParameter("UGInstitute");
            board = request.getParameter("UGBoard");
            dateOfPassing = request.getParameter("UGDate");
            division = request.getParameter("UGDivision");
            percentage = request.getParameter("UGPercentage");
            rs= st.executeQuery("SELECT * FROM Educational_Qualification WHERE Qualification='Graduation' AND ApplicationNumber='"+session.getAttribute("ApplicationNumber")+"'");
            if(rs.next()){
                res2 = st.executeUpdate("UPDATE Educational_Qualification SET Degree = '"+degree+
                        "', Discipline = '"+discipline+
                        "', Institute = '"+institute+
                        "', BoardOrUniv = '"+board+
                        "', DateOfPassing = '"+dateOfPassing+
                        "', Division = '"+division+
                        "', Percentage = '"+percentage+
                        "' WHERE ApplicationNumber='"+session.getAttribute("ApplicationNumber")+"' AND Qualification='Graduation'");
            }
            else {
                sql = "insert into Educational_Qualification (ApplicationNumber,Qualification,Degree,Discipline,Institute,BoardOrUniv,DateOfPassing,Division,Percentage) " +
                        "values ('"+session.getAttribute("ApplicationNumber")+"','" + qualification + "','"
                        + degree + "','" + discipline + "', '"
                        + institute + "','" + board + "','"
                        + dateOfPassing + "','" + division
                        + "','" + percentage + "')";
                res2 = st.executeUpdate(sql);
            }


            qualification = "12th";
            degree = request.getParameter("12Degree");
            discipline = (request.getParameter("12Discipline"));
            institute = request.getParameter("12Institute");
            board = request.getParameter("12Board");
            dateOfPassing = request.getParameter("12Date");
            division = request.getParameter("12Division");
            percentage = request.getParameter("12Percentage");
            rs= st.executeQuery("SELECT * FROM Educational_Qualification WHERE Qualification='12th' AND ApplicationNumber='"+session.getAttribute("ApplicationNumber")+"'");
            if(rs.next()){
                res3 = st.executeUpdate("UPDATE Educational_Qualification SET Degree = '"+degree+
                        "', Discipline = '"+discipline+
                        "', Institute = '"+institute+
                        "', BoardOrUniv = '"+board+
                        "', DateOfPassing = '"+dateOfPassing+
                        "', Division = '"+division+
                        "', Percentage = '"+percentage+
                        "' WHERE ApplicationNumber='"+session.getAttribute("ApplicationNumber")+"' AND Qualification='12th'");
            }
            else {
                sql = "insert into Educational_Qualification (ApplicationNumber,Qualification,Degree,Discipline,Institute,BoardOrUniv,DateOfPassing,Division,Percentage) " +
                        "values ('"+session.getAttribute("ApplicationNumber")+"','" + qualification + "','"
                        + degree + "','" + discipline + "', '"
                        + institute + "','" + board + "','"
                        + dateOfPassing + "','" + division
                        + "','" + percentage + "')";
                res3 = st.executeUpdate(sql);
            }

            qualification = "10th";
            degree = request.getParameter("10Degree");
            discipline = (request.getParameter("10Discipline"));
            institute = request.getParameter("10Institute");
            board = request.getParameter("10Board");
            dateOfPassing = request.getParameter("10Date");
            division = request.getParameter("10Division");
            percentage = request.getParameter("10Percentage");
            rs= st.executeQuery("SELECT * FROM Educational_Qualification WHERE Qualification='10th' AND ApplicationNumber='"+session.getAttribute("ApplicationNumber")+"'");
            if(rs.next()){
                res4 = st.executeUpdate("UPDATE Educational_Qualification SET Degree = '"+degree+
                        "', Discipline = '"+discipline+
                        "', Institute = '"+institute+
                        "', BoardOrUniv = '"+board+
                        "', DateOfPassing = '"+dateOfPassing+
                        "', Division = '"+division+
                        "', Percentage = '"+percentage+
                        "' WHERE ApplicationNumber='"+session.getAttribute("ApplicationNumber")+"' AND Qualification='10th'");
            }
            else {
                sql = "insert into Educational_Qualification (ApplicationNumber,Qualification,Degree,Discipline,Institute,BoardOrUniv,DateOfPassing,Division,Percentage) " +
                        "values ('"+session.getAttribute("ApplicationNumber")+"','" + qualification + "','"
                        + degree + "','" + discipline + "', '"
                        + institute + "','" + board + "','"
                        + dateOfPassing + "','" + division
                        + "','" + percentage + "')";
                res4 = st.executeUpdate(sql);
            }
            if (res1>0&&res2>0&&res3>0&&res4>0){
                %><div class="alert alert-success text-center">Information Saved. Please Refresh the page!</div> <%
            }
            else {
                %><div class="alert alert-warning text-center">Information Not Saved. Please try again!</div> <%
            }
        }
        con.close();
        st.close();
    }
    catch (com.mysql.cj.jdbc.exceptions.CommunicationsException e){
%><div class="alert-danger text-center">Check Your Internet Connection!</div><%
    }
    catch(Exception e)
    {
%><div class="alert-danger text-center"><%out.println(e);%></div><%
    }
%>
</body>
</html>