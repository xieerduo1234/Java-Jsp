<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>

<html>
  <body onload="disptime();">
  <FORM NAME="myform">
   <DIV align="center">
    <SCRIPT language="JavaScript"> 
     
     function disptime( ) 
     { 
     
     var time = new Date( ); //获得当前时间 
     var hour = time.getHours( ); //获得小时、分钟、秒 
     var minute = time.getMinutes( ); 
     var second = time.getSeconds( ); 
     var apm="AM"; //默认显示上午: AM 
     
     if (hour>12) //按12小时制显示 
     { 
      hour=hour-12; 
      apm="PM" ; 
     } 
     if (minute < 10) //如果分钟只有1位，补0显示 
      minute="0"+minute; 
     if (second < 10) //如果秒数只有1位，补0显示 
      second="0"+second; 
     /*设置文本框的内容为当前时间*/ 
     document.myform.myclock.value ="当前时间："+hour+":"+minute+":"+second+" "+apm; 
     /*设置定时器每隔1秒（1000毫秒），调用函数disptime()执行，刷新时钟显示*/ 
     var myTime = setTimeout("disptime()",1000); 
     
    } 
     
    </SCRIPT>
    <INPUT name="myclock" type="text" value="" size="19">
   
  </DIV>  
  </FORM>
  </body></html>
