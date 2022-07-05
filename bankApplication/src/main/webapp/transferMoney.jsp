<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
td {
  text-align: center;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<script>

	function cancel(){
	console.log("nidhin")
	document.forms[0].action= "customerServlet";
	document.forms[0].method= 'post';
	document.forms[0].submit();
	} 

 function transfermoney(){

	try {
		var f_account = document.getElementById("f_account").value;
		var t_account = document.getElementById("t_account").value;
		var amount = document.getElementById("amount").value;
		var accamount =document.getElementById("accamount").value;
		console.log(f_account + amount + accamount)
		
		
		
		if(!t_account){
			console.log(t_account);
			alert('Please enter recipient account number');
			return false;
		}
		if(!amount){
			console.log(amount);
			alert('Please enter the amount for transfering');
			return false;
		}

	} catch (e) {
		console.log(e);
	}
	if(amount < accamount){
		console.log("reached here")
		document.forms[0].action= "transfer";
		document.forms[0].method= 'post';
		document.forms[0].submit();
		} 
	else{
		alert('Insufficient balance. Current balance is SGD ' + accamount);
	}

/* 	document.forms[0].action= "customersubServlet";
	document.forms[0].method= 'post';
	document.forms[0].submit(); */
} 
</script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
<!-- <form action = "/customersubServlet" method = "post"> -->
<h1>Transfer Money</h1>
	 
<table>
<tr>
<td>From</td>
<td>To</td>
<td>Amount</td>
</tr>

<tr>
<td><input type = "text" readonly name="f_account" size="50" value=${accno} id="f_account"></td>
<td><input type = "text" name="t_account" size="50" id="t_account" placeholder="enter recipient's account number:"></td>
<td><input type = "text" name="amount" size="50" id="amount" placeholder="enter amount for transfering"></td>

</tr>



</table>
<br><br>

<td><button type = "button" onclick = "transfermoney()">Transfer</button>
<input type="submit" name="submit" value="Cancel"></td>

<input type="hidden" id="accamount" name="accamount" value= "${accamount}">

</form>
</body>
</html>