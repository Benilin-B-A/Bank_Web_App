<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.bank.enums.AccountType"%>
<%@ page import="com.bank.enums.Status"%>
<%@page import="com.bank.pojo.Account"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.bank.services.CustomerServices"%>
<%@page import="org.json.JSONObject"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Profile</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
 
</head>

<body>

	<div>
		
		<jsp:include page="header.jsp" />
		
		<jsp:include page="customerNav.jsp" />
	
	</div>  <br><br><br><br>
									
	<%
	JSONObject customer=(JSONObject) request.getAttribute("customerDetails"); 
	%>

	<div class="columnBodyContainer loginFormPadding">
	
		<div class="transactionContainer ">
	
							<table class="table-format2">
						
								<tr>
									<td class="font3">Customer ID</td>
									<td class="font2"><%=customer.get("ID")%></td>
								</tr>
								
								<tr>
									<td class="font3">Name</td>
									<td class="font2"><%=customer.get("name")%></td>
								</tr>
															
								<tr>
									<td class="font3">D:O:B</td>
									<td class="font2"><%=customer.get("DOB")%></td>
								</tr>
															
								<tr>
									<td class="font3">Phone</td>
									<td class="font2"><%=customer.get("phone")%></td>
								</tr>
															
								<tr>
									<td class="font3">Email</td>
									<td class="font2"><%=customer.get("mail")%></td>
								</tr>
															
								<tr>
									<td class="font3">Address</td>
									<td class="font2"><%=customer.get("address")%></td>
								</tr>
															
								<tr>
									<td class="font3">Aadhar Number</td>
									<td class="font2"><%=customer.get("aadharNum")%></td>
								</tr>
															
								<tr>
									<td class="font3">Pan Number</td>
									<td class="font2"><%=customer.get("panNum")%></td>
								</tr>
															
								<tr>
									<td class="font3">No. Of Accounts</td>
									<td class="font2"><%=customer.get("noOfAcc")%></td>
								</tr>
														
							</table>
							
			<div class="innerLoginFormContainer">
				<img src="<%=request.getContextPath()%>/images/Bio.svg" alt="Bio">
			
			<div class="profileButtonContainer">
				<a href="ChangePassword"><button class="button-2">Change Password</button></a> 
					
				<a href="ChangePin"><button class="button-2">Change TPIN</button></a>
			</div>
			</div>

		</div>		
	</div>

</body>

</html>