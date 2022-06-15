<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/admin/main.css">
</head>
<body>
<%@include file="../includes/header.jsp" %>
<div id="page-wrapper">
  <!-- 사이드바 -->
  <div id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <li class="sidebar-brand">
        <a href="#">관리자 페이지</a>
      </li>
      <li><a href="admin.members.go">회원 관리</a></li>
      <li><a href="admin.list.go">상품 목록</a></li>
      <li><a href="admin.reg">상품 등록</a></li>
  
    </ul>
  </div>
  <!-- /사이드바 -->

  <!-- 본문 -->
  <div id="page-content-wrapper">
    <div class="container-fluid">
      <h1 class="jumbotron" style="text-align: center; margin: 50px 0;">관리자 페이지</h1>
    </div>
  </div>
  <!-- /본문 -->
</div>
</body>
</html>