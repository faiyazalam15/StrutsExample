<html>
<head>
<script type="text/javascript">
function loadXMLDoc()
{
var xmlhttp;
var keys=document.dummy.sele.value
var urls="http://localhost:9999/Hello/db_fetch.jsp?ok="+keys
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
if (xmlhttp.readyState==4)
{
var some=xmlhttp.responseXML.documentElement;
document.getElementById("a").innerHTML=some.getElementsByTagName("empno")[0].childNodes[0].nodeValue;
document.getElementById("b").innerHTML=some.getElementsByTagName("empname")[0].childNodes[0].nodeValue;
document.getElementById("c").innerHTML=some.getElementsByTagName("empaddr")[0].childNodes[0].nodeValue;
}
}
xmlhttp.open("GET",urls,true);
xmlhttp.send();
}
</script>
</head>
<body>
 
<form name="dummy">
<select name="sele" onchange="loadXMLDoc()">
<option>value</option>
<option value="10">10</option>
<option value="20">20</option>
</select>
</form>
 
id: <span id="a"></span><br>
name: <span id="b"></span><br>
address: <span id="c"></span>
 
</body>
</html>