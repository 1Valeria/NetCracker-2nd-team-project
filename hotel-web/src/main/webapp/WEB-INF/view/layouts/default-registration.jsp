<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Registration page</title>

		<style>
			p{
				color: rgba(253, 255, 0, 0.75);
			}
		</style>

	</head>
	<body>
		<a href="index.jsp">
			<img align="right" src="/assets/images/NetCracker.png" width="400" height="100" alt="Я старался)"/>
		</a>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<h2><p align="center">Registration</p></h2>

		<%--	header тут точно не нужен	--%>
		<%--<tiles:insertAttribute name="header"/>--%>
		<tiles:insertAttribute name="main"/>
		<tiles:insertAttribute name="footer"/>
		
	</body>
</html>