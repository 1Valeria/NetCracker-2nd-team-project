<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
		<script src="<c:url value="/resources/js/requests/addClaimRequest.js"/>"></script>
		<style>
			<%@ include file="/assets/css/style.css" %>
		</style>
	</head>
	<body >
	<div class = 'wrapper' id="wrapper" >
		<c:choose>
			<c:when test="${command == 'findAll' && claim.size() > 0}">
				<c:forEach  var="k" begin="0" end="${claim.size()-1}">
					<div class = "data_string">
						<c:out value="Type = ${claim[k].getType().getTypeEn()}   "/>
						<c:out value="check in date${claim[k].getCheckInDate()}   "/>
						<c:out value="check out date${claim[k].getCheckOutDate()}   "/>
						<c:out value="STATUS = ${claim[k].getStatus()}   "/>
					</div>
					<hr/>
				</c:forEach>
			</c:when>
			<c:when test="${command == 'findAll' && claim.size() == 0}">
				<c:out value="Claims absend"/>
			</c:when>
			<c:when test="${command == 'addClaim'}">
			<form>
				<input type="hidden" name="command" value="addClaimRequest"/>
				<div class="addNewRequest">
						<ul class="dropdown">
								<li class="dropdown-top">
									<p class="dropdown-top">Enter Type</p>
									<ul class="dropdown-inside">
											<c:forEach  var="k" begin="0" end="${type.size()-1}">
												<li class = "floatType">
													<c:out value="${type[k].getTypeEn()}"/>
													<input type="radio" class="button" name="type" id="type" value="${type[k].getId()}"/>
												</li>
											</c:forEach>

									</ul>
								</li>
							dateIn <input type="text" name="checkInDate"  id="checkInDate" />
							dateOut <input type="text" name="checkOutDate" id="checkOutDate"/>
							<input type="hidden" name="login" id="login" value="${user.getId()}"/>
						</ul>

				</div>
				<input type="button" value="Add new request" onclick="addClaimRequest()"/>
			</form>
			</c:when>
			<c:when test="${command == null}">
				<input type="button" value="Add claim" onclick="addClaimCommand('addClaim')"/>
				<input type="button" value="Find all" onclick="addClaimCommand('findAll')"/>
			</c:when>

		</c:choose>
	</div>
	</body>
</html>