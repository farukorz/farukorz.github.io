<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script
  src="https://code.jquery.com/jquery-1.12.4.min.js"
  integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
  crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script type="text/javascript" src="jquery-barcode.min.js"></script>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<script>
function load2(){
	
	document.getElementById("txt_input_str").focus();	
}
function txt_keyPress(sender,event){
	
	try
	{
	    if (event.keyCode == 13)
	    {
	        if(sender != "")
	        {
	        	if(sender == "txt_input_str"){
	        		
	        		doOK();
	        	}
	    	}
		}
	}
	catch (ex)
	{
// 		playSound(false,ex);//GlobalPara.BeepMessageBox(ex.Message);
	}
}

function doOK(){
	//qrcode input輸入
	var inputStr=document.getElementById("txt_input_str").value;
	if(inputStr==""){
		playSound(false,"請輸入資料");
		document.getElementById("txt_input_str").focus();
		return;
	}
	

	$("#pwa_dataMatrix").barcode(inputStr, // Value barcode (dependent on the type of barcode)
								 "datamatrix", // type (string)
 								{output:'css',
// 								 barwidth:'500px',
// 								 barheight:'500px',
								 bgColor:'#91876e',	
								 moduleSize: 8,
								 showHRI: false
								 });
	
	
}

</script>

<body onload="load2()">

    
    	<form method="POST" action="" name="post">
    	</form>
    		<div style="width:100vw; float:left;">
	         		<label for="txt_input_str">條碼</label>
	         		<input type="text" name="lname" id="txt_input_str" value="" onkeydown="txt_keyPress('txt_input_str',event)">
    		</div>
<!--        		<div id="pwa_qrcode" href="" style="width:100vw;"></div> -->
       		<div id="pwa_dataMatrix" href="" style="width:100vw;"></div>
       		

</body>
</html>