<?php
include_once("dbcon.php");
//判断是否有权限
session_start();
if($_SESSION['admin']!=="admin"){
    echo "<script>location.href='../adminlogin.php';</script>";
}
$title=$_POST['title'];

$sql="INSERT INTO `articles`(`ID`, `title`) VALUES (null, '$title')";
$con =null;
if($result = $con->query($sql)){
    echo "{".'"code": 0,'.  '"msg": "发不成功"'."}";  //这个用来返回成功数据给layui
    //echo "发不成功";
}else{
    echo "失败"; $con ->error;
}
?>