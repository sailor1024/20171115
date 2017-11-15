<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>使用了ajax的验证码</title>
<script>
function yz(){
	var code = document.getElementById("code").value;

	if (code.length==4){
		
		try{
		    xmlhttp = new window.XMLHttpRequest();
	    }catch(e){
		 xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	    }
		
		xmlhttp.open("GET","yz.php?code="+code,true);
		
		xmlhttp.onreadystatechange =schange;
		xmlhttp.send();
		
	}else{
		document.getElementById("ph").src="error.png";
	}
	
}

function schange(){
	 if(xmlhttp.readyState==4 && xmlhttp.status==200){
	
		var rlt = xmlhttp.responseText;
		if (rlt == "r"){
			
			document.getElementById("ph").src="right.png";
		}else{
			document.getElementById("ph").src="error.png";
		}
		xmlhttp = null;
	}
}
</script>
</head>

<body>
   <form action="" method="post">
        <table>
   	 	<tr><td> <input type="text" name="code" onkeyup="yz()" size="10" id="code" style="height:30px; font-size:18px"/></td>
         <td><img src="code.php" onclick="this.src='code.php?id=Math.random()'"/><br/></td>
         <td> <div id="coderlt"><img id="ph" src="error.png" height="30" width="30"/></div></td>
         </tr>
       
        
   </form>
   
</body>
</html>