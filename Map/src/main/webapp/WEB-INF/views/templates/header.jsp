<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath">${pageContext.request.contextPath }</c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오 API 연습</title>
<style>
	body, html {
		height: 100%;
		width: 100%;
	}
</style>
<link rel="stylesheet" href="${cpath }/resources/css/style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" integrity="undefined" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=38004bb9d6dd248d9c28f4bf6ba6a00f&libraries=services"></script>
</head>
<body>
<nav class="navbar navbar-light" style="background-color: #FFCC32">
  <div class="container-fluid">
    <a class="navbar-brand text-white" href="${cpath }">Navbar</a>
    <form class="d-flex">
    	<c:if test="${login == null }">
      		<a href="${cpath }/login" class="nav-item text-white">로그인</a>
      	</c:if>
    	<c:if test="${login != null }">
      		<a href="${cpath }/logout" class="nav-item text-white">로그아웃</a>
      	</c:if>
    </form>
  </div>
</nav>
