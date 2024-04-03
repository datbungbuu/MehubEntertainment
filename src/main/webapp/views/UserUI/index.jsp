<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/50eedbacb3.js" crossorigin="anonymous"></script>
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	
<meta charset="UTF-8">
	<style type="text/css">
		.footer{
			 background: #289d8c;
			 color: white;
		}
		.footer ul{
			list-style: none;
		}
		.footer a{
			text-decoration: none;
			color: white;
		}
		.footer-title{
			color: white;
		}
	</style>
<title>Mehub</title>
</head>	
<body onload="pagecontent('home')">
	<div class="container-fluid">
		<!-- Header -->
		<%@include file="Layout/header.jsp"%>
		<!-- Header -->		
		
		<div class="container-fluid" style="max-width: 1200px">
		<div id="loadpage" class="row" ></div>
		</div>
		
		<!-- Footer -->
		<%@include file="Layout/footer.jsp"%>
		<!-- Footer -->	
		
		<!-- Send Video -->
		<%@include file="Layout/share_video.jsp"%>
		<!-- Send Video -->		
		
		<!-- Change Password -->
		<%@include file="Layout/change_password.jsp"%>
		<!-- Change Password -->
		
		<!-- Edit Profile -->
		<%@include file="Layout/edit_profile.jsp"%>
		<!-- Edit Profile -->
		
		
	</div>
	<script>	
	
	var pages = {
			home:`<div><%@include file="Layout/video_item.jsp"%></div>`,	
			myfar:`<div><%@include file="myFavorite.jsp"%></div>`,
	};
	
	function pagecontent(page){
		var contentRe;
		var contentDiv = document.getElementById("loadpage");
		switch (page) {
		case 'home':
			contentRe = pages.home;
			break;
		case 'mf':
			contentRe = pages.myfar;
			break;
		default:
			contentRe = pages.home;
			break;
		}
		contentDiv.innerHTML = contentRe;
	};
	
	$('#changeBTN').click(function() {
		$('#changePassMessage').text('');
		var cpcurrentpass = $('#cpcurrentpass').val();
		var cpnewpass = $('#cpnewpass').val();
		//var cpnewpassconfirm = $('#cpnewpassconfirm').val();
		var formData = {
				'cpcurrentpass':cpcurrentpass,
				'cpnewpass':cpnewpass,
				//'cpnewpassconfirm':cpnewpassconfirm
				};
		$.ajax({
			url: 'ChangePass',
			type: 'POST',
			data: formData
		}).then(function(data){
			$('#changePassMessage').text('Change Password Success !!');
		}).fail(function(error){
			$('#changePassMessage').text('Your Current Password Is Incorrect !!');
		});
	});		
	
	</script>	
</body>
</html>