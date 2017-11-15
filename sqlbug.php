<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>sql注入演示代码</title>
</head>

<body>
<form action="" method="post">
	请输入用户名：<input type="text" name="user" /><br/>
    请输入密码：<input type="text" name="pwd" /><br/>
    <input type="submit" name="sub" value="确定"/>
</form>
<?php
	if(isset($_POST['sub'])){
		mysql_connect("localhost","root","") or die('服务器不存在');
		mysql_select_db("db_test12");
		mysql_query('set names utf8');
		$user = $_POST['user'];
		$pwd = $_POST['pwd'];
		$sql = "select * from tb_user where (user='$user') and(pwd = '$pwd')";
		$r = mysql_query($sql);
		if($row = mysql_fetch_array($r)){
			echo '登录成功';  //如果用户名和密码都输入 1' or '1'='1 那么就会登录成功
		}else{
			echo '登录失败';
		}
		
		
	}
?>
</body>
</html>