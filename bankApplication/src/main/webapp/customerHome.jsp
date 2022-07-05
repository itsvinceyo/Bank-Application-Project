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

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<script>

function transfer(acc,accamount){
	console.log(accamount)
	document.forms[0].acc_num.value = acc;
	document.forms[0].accamount.value = accamount;
	
	document.forms[0].action= "customerServlet";
	document.forms[0].method= 'post';
	document.forms[0].submit();
	}
</script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
<!-- <form action="/customerServlet" method="post"> -->
<h1 style="text-align:center;">Hi ${message2}, Welcome To Online Banking</h1>
<h2>Account Details</h2>
<table>
  <tr>
    <th>Account Number</th>
    <th>Current Balance</th>
  </tr>
  <tr>
  <td>${accno}</td>
  <td>SGD ${accamount}</td>
  </tr>
  </table>
<br><br>
<h2>Loan Details</h2>

<table>
  <tr>
    <th>Loan Account Number</th>
    <th>Loan Amount</th>
    <th>Loan Paid</th>
    <th>Loan Balance</th>
  </tr>
  <tr>
  <td>${l_acc}</td>
  <td>SGD ${l_amount}</td>
  <td>SGD ${l_paid}</td>
  <td>SGD ${l_balance}</td>
  </tr>
  </table>

<br><br>
<td><button type = "button" onclick = "transfer('${accno}','${accamount}')">Transfer Money</button>
<button>Transaction History</button>
<button>Apply Loan</button></td>

<input type="hidden" id="acc_num" name="acc_num">
<input type="hidden" id="accamount" name="accamount">

</form>
</body>
</html>