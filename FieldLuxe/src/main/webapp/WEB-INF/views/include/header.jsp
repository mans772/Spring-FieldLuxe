<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family:Malgun Gothic;
}

.topnav {
	overflow: hidden;
	background-color: #fefaff;
}

.header-logo {
	font-family:Malgun Gothic;
}

.topnav a {
	float: left;
	display: block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
	font-family:Malgun Gothic;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

/* .topnav a.active {
  background-color: #2196F3;
  color: white;
} */
.topnav .search-container {
	float: right;
}

.topnav input[type=text] {
	padding: 6px;
	margin-top: 8px;
	font-size: 14px;
	border: none;
}

.topbar-menu {
	float: right;
}

.topnav .search-container button {
	float: right;
	padding: 6px 10px;
	margin-top: 8px;
	margin-right: 16px;
	background: #ddd;
	font-size: 17px;
	border: none;
	cursor: pointer;
}

.topnav .search-container button:hover {
	background: #ccc;
}

.topnav .icon {
	display: none;
}

/* @media screen and (max-width: 600px) {
  .topbar-menu {
	float:none;
  }
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
} */
@media screen and (max-width: 600px) {
	.topnav a:not (:first-child ) {
		display: none;
	}
	.topnav a.icon {
		float: right;
		display: block;
	}
}

@media screen and (max-width: 600px) {
	.topnav.responsive {
		position: relative;
	}
	.topnav.responsive .icon {
		position: absolute;
		right: 0;
		top: 0;
	}
	.topnav.responsive a {
		float: none;
		display: block;
		text-align: left;
	}
}

.navbar-text {
	font-size: 30px;
	text-color: #e80e53;
}
</style>
</head>
<body>

	<div class="topnav" id="myTopnav">
		<div class="header-logo">
			<a class="navbar-text" href="<c:url value='/'/>"
				style="margin-left: 40px; font-size: 25px; color: #460f6e;">Field Luxe
				<img src="<c:url value='/img/logo.png'/>" style="width: 40px;">
			</a>
		</div>
		<div class="topbar-menu" style="margin-top: 22px">
			<a></a> <a href="<c:url value='/product/'/>" style="font-size:14px;">모두보기</a>
			<sec:authorize access="isAnonymous()">
					<a href="<c:url value='/login'/>" style="font-size:14px;">로그인</a>
			</sec:authorize>
			<sec:authorize access="isAuthenticated() and hasRole('ROLE_USER')">
					<a href="<c:url value='/logout'/>" style="font-size:14px;">로그아웃</a>
					<a href="member/<sec:authentication property='principal.email'/>" style="font-size:14px;">마이페이지</a>
			</sec:authorize>
					<a href="javascript:void(0);" class="icon" onclick="myFunction()">
					<i class="fa fa-bars"></i>
			</a>


			<div class="search-container">
				<form action="<c:url value='/product/'/>">
					<input type="text" placeholder="상품 검색" name="keyword">
					<button type="submit"><i class="fa fa-search"></i></button>
				</form>
			</div>


		</div>
	</div>

	<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>

</body>
</html>
