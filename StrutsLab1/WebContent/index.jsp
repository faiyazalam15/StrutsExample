<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags"  prefix="s"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title> 
<s:head />
<s:actionerror/>
</head>
<body>
<h1>Sturts Student Form</h1>
<s:form action="regController" method="get">
<s:textfield label="Enter The Student ID" name="st.sid"></s:textfield>
<s:textfield label="Enter The Student Name" name="st.sname"></s:textfield>
<s:password label="Enter The Password" name="st.pwd"></s:password>
<s:select label="State" list="{'Jharkhand','Bihar'}" name="st.state"></s:select>
<s:radio list="{'Male','Female'}" name="st.gen" label="Gender"></s:radio>
<s:checkboxlist list="{'Cricket','Song','Movie'}" label="Select Your Hobbies" name="st.hob"></s:checkboxlist>
<s:submit value="Submit"></s:submit>
</s:form>
</body>
</html>