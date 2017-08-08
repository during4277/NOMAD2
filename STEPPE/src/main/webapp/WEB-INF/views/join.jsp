<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>steppe ȸ������</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link href="css/animate.min.css" rel="stylesheet"> 
	<link href="css/style.css" rel="stylesheet" />	
    <!-- =======================================================
        Theme Name: Day
        Theme URL: https://bootstrapmade.com/day-multipurpose-html-template-for-free/
        Author: BootstrapMade
        Author URL: https://bootstrapmade.com
    ======================================================= -->
    <style>
        .navbar-header{
            /*background-color: dimgrey;*/
        }  
    </style>
  </head>
  <body>
    <!--��� �޴���-->
	<header id="header">
        <nav class="navbar navbar-default navbar-static-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                   <div class="navbar-brand">
						<a href="main"><h1>steppe</h1></a>
					</div>
                </div>				
                <div class="navbar-collapse collapse">							
					<div class="menu">
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation"><a href="intro">steppe?</a></li>
							<li role="presentation"><a href="project">������Ʈ</a></li>
							<li role="presentation"><a href="freelancer">��������</a></li>
							<li role="presentation"><a href="manual">�̿���</a></li>
                            <li role="presentation"><a href="pms">������Ʈ ����</a></li>
                            <li role="presentation"><a href="lohin">�α���</a></li>
                            <li role="presentation"><a href="join">ȸ������</a></li>
						</ul>
					</div>
				</div>		
            </div>
        </nav>	
    </header>
    <div class="about">
		<div class="container">
            <h1 style="color:black;"></h1>
            	<div id="join">
					<form name="joinForm" method="post">
						<div class="input"><input type="text" id="userId" name="userId" placeholder="���̵�" autofocus /></div>
						<div class="span"><span id="notiId"></span></div>
						<div class="input"><input type="password" id="userPw" name="userPw" placeholder="��й�ȣ"  /></div>
						<div class="input"><input type="password" id="confirmPw" name="confirmPw" placeholder="��й�ȣ Ȯ��" /></div>
						<div class="span"><span id="notiPw"></span></div>
						<div class="input"><input type="text" id="userName" name="userName" placeholder="�̸�" /></div>
						<div class="span"><span id="notiName"></span></div>
						<div class="input"><input type="text" id="userPhone" name="userPhone" placeholder="�ڵ��� ��ȣ" /></div>
						<div class="span"><span id="notiPhone">ex)010-0000-0000</span></div>
						<div class="input"><input type="text" id="userEmail" name="userEmail" placeholder="�̸���" /></div>
						<div class="span"><span id="notiEmail"></span></div>
						<div class="input"><input type="text" id="userCode" name="userCode" placeholder="������ȣ" /></div>
						<div class="button"><input type="button" class="btn" onClick="sendCode()" value="������ȣ �߼�" /></div> 
						<div class="span"><span id="notiCode"></span></div>
						<div class="button"><input type="button" class="btn" onClick="join()" value="ȸ������" /></div> 
						<div class="button"><input type="button" class="btn" onClick="toIndex()" value="���ư���" /></div>
					</form>
				</div>   
        </div>
    </div>
	<hr>
    
    <div class="row"></div>
    <!--Ǫ�� ���� ����-->
	<div class="sub-footer">
		<div class="container">
			<div class="social-icon">
				<div class="col-md-4">
					
	     		</div>
			</div>
		</div>
	</div>	
				
			
			
	<div class="col-md-4 col-md-offset-4">
		<div class="copyright">
			&copy; Day Theme. All Rights Reserved.
              <div class="credits">
                  <!-- 
                      All the links in the footer should remain intact. 
                      You can delete the links only if you purchased the pro version.
                      Licensing information: https://bootstrapmade.com/license/
                      Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Day
                  -->
                  <a href="https://bootstrapmade.com/">Free Bootstrap Themes</a> by 
                  <a href="https://bootstrapmade.com/">BootstrapMade</a>
                  <br/>
                  <a href="#">��������</a>&nbsp;&nbsp;&nbsp;
                  <a href="#">faq</a>&nbsp;&nbsp;&nbsp;
                  <a href="#">�̿���</a>
              </div>
		</div>
	</div>						
	
	<!--Ǫ�� ���� ��-->
      
      
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.js"></script>		
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>	
	<script src="js/wow.min.js"></script>
	<script>wow = new WOW({}).init();</script>	
    
</body>

	<!-- <script>
		$(function() {
			var msg = '${joinMsg}';
			if(msg == "����")
				alert("ȸ�����Կ� �����߽��ϴ�. �ٽ� �õ����ּ���.");
		});
	
		
		function sendCode()
		{
			var flag = 1;
			var email = $('#userEmail').val();
			
			if(email!='')
			{
				$.ajax({
					type: 'POST',
					url: './sendCode',
					data: {flag:flag, userEmail:email},
					
					success:function(data)
					{
						var msg = data.split(",");
						console.log(data);
						$('#notiEmail').html(msg[0]);
						$('#notiCode').html(msg[1]);
					},
					
					error:function(error)
					{
						console.log(error);
					}
				}); 	
			}
			else
			{
				$('#notiEmail').html("�̸����� �Է����ּ���");
			}
		}
		
		function join()
		{	
				var id = $('#userId').val();
				var pw = $('#userPw').val();				
				var conPw = $('#confirmPw').val();			
				var name = $('#userName').val();				
				var phone = $('#userPhone').val();
				var email = $('#userEmail').val();			
				var code = $('#userCode').val();	
				
				$.ajax({
					type: 'POST',
					url: './checkJoinForm',
					data: {userId:id, userPw:pw, confirmPw:conPw, userName:name, 
						userPhone:phone, userEmail:email, userCode:code},
						
					success:function(data)
					{
						var msg = data.split(",");
						
						console.log(msg);
	
						$('#notiId').html(msg[0]);
						$('#notiPw').html(msg[1]);
						$('#notiName').html(msg[2]);
						$('#notiPhone').html(msg[3])
						$('#notiEmail').html(msg[4]);
						$('#notiCode').html(msg[5]);
						
						if(msg[9] == '0')
						{
							join.action = "./insertMember";
							join.submit();
						}
					},
					
					error:function(error)
					{
						console.log(error);
					}
				
		
		function toIndex()
		{
			join.action = "./index";
			join.submit();
		}
	</script> -->
</html>