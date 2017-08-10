<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프로젝트 등록 페이지</title>
<style>
	html,body{
		width: 100%;
		height: 100%;
	}
	#container{
		width:70%;
		height:70%;
		margin: 40px auto;
	}
	#outer{
		display:table;
		width:100%;
		height:100%;
	}
	#inner{
		display:table-cell;
		vertical-align: middle;
		text-align: center;
	}
	#centered{
		position:relative;
		display:inline-block;
		
		width:50%;
		padding:1em;
	}
</style>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
</head>
<body>
	<div id="project">
		<div id="header">
		</div>
		
		<div id="container">
			<div id="outer">
				<div id="inner">
					<div id="centered">
					<h2>프로젝트 등록</h2>
					<form name="pInsert" action="insertProject" method="get" onsubmit="return check()">
						<select name="foodkind" id="foodkind" onchange="fkind(); >
						
						</select>
						<div id="secondCatagory"></div>
							
					</form>				
					</div>
				</div>
			</div>
		</div>
		
		<div id="footer">
		</div>
	</div>
	<script>
	function firstChange(pc1_id){
		 var selectBox = document.getElementById("firstCatagory");
		 var selectedValue = selectBox.options[selectBox.selectedIndex].value;
		 alert(selectedValue + '을  선택하셨습니다.');
	    	 $.ajax({
	    		 type:'get',
	    		 url : "/secondCatagory",
	    		 data : {pc1_id:pc1_id},
	    		 
		         success : function(data) {
		              $('#secondCatagory').html(data);
		              console.log(data);
		           },
		           error : function(error) {
		               console.log(error);
		            }   
		     }); 
	}
	</script>
</body>
</html>