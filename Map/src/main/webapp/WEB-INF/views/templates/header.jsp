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
</head>
<body>
<nav class="navbar navbar-light" style="background-color: #FFCC32">
  <div class="container-fluid">
    <a class="navbar-brand text-white">Navbar</a>
    <form class="d-flex">
      <a href="${cpath }/login" class="nav-item text-white">로그인</a>
    </form>
  </div>
</nav>
