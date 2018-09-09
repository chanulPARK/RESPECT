<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set value="${pageContext.request.contextPath}" var="path"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello Spring</title>
    
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<!-- 부트스트랩관련 라이브러리 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>


<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<%-- <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.min.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath }/resources/assets/bootstrap/js/bootstrap.min.js"></script> --%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
<link rel="stylesheet" href="${path }/resources/css/Footer-Dark.css">

<style type="text/css">
	/* *{
        font-family: '나눔고딕' !important;
        margin: 0;
        padding: 0;
        
    }
    a{
        color: inherit; text-decoration: none;
    }
    a:hover{
        color: orange;
        text-decoration: none;
    }
    p{
        margin:0;
    }
    ul{
        list-style: none;
    }
    ul>li{
        float: left;
    }

    @media (max-width: 350px) {
        .fixed-top {
            max-width: 340px;
            margin:0;
            padding: 0;
        }
    } */
</style>

</head>
<body>
	<div class="fixed-top" style="background: white;">
        <div class="container mt-1">
        <nav class="navbar">
            <div class="row ml-3">
                <div id="weather-temp" class="mr-2">
                    <a href="#">
                        <p>제주시</p>
                        <sub>25.0 ℃</sub>
                    </a>
                </div>
                <div id="weather-picture" style="padding-top: 10px;">
                    <img src="https://www.visitjeju.net/image/weather/weather_g_cloud_l.png" alt="">
                </div>
            </div>
            <div class="row justify-content-between mr-3">
                <div class="col-6">
                    <a class="btn btn-outline-warning" href="#">회원가입</a>
                </div>         
                <div class="col-6">
                    <a class="btn btn-outline-warning" href="#">로그인</a> 
                </div>      
            </div>
        </nav>
        </div>

        <hr style="margin: 0; padding:0; border-top: 1px solid #dfdfdf;">
        
        <div class="container">
            <nav class="navbar navbar-light navbar-expand-md">
                    <a class="navbar-brand" href="#">
                        <!-- <img class="img-fluid" src="image/if_viadeo_2308135.png" style="max-width: 70px; max-height: 70px;"> -->
                    </a>
                    <button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navcol-1">
                        <ul class="nav navbar-nav ml-auto mx-auto">
                            <li class="nav-item mr-3" role="presentation"><a class="nav-link" href="#">관광지</a></li>
                            <li class="nav-item mr-3" role="presentation"><a class="nav-link" href="#">숙소</a></li>
                            <li class="nav-item mr-3" role="presentation"><a class="nav-link" href="#">여행 큐레이션</a></li>
                            <li class="dropdown mr-3"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">제주이야기 </a>
                                <div class="dropdown-menu" role="menu"><a class="dropdown-item" role="presentation" href="#">First Item</a><a class="dropdown-item" role="presentation" href="#">Second Item</a><a class="dropdown-item" role="presentation" href="#">Third Item</a></div>
                            </li>
                            <li class="nav-item mr-3" role="presentation"><a class="nav-link" href="${path }/meet/meetList.do">번개</a></li>
                        </ul>
                    </div>
                </nav>
        </div>
        
        

    </div>
    