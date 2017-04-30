<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello Hwan Blog</title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.4/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/webjars/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/webjars/github-com-origoni-startbootstrap-clean-blog/1.0.3/css/clean-blog.min.css">
</head>
<body>
	<!-- Navigation -->
    <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/post/list">Home</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="/post/write">Write Post</a>
                    </li>
                    <li>
                        <a href="https://github.com/jsme11/HwanBlog">Spring-Blog GitHub</a>
                    </li>
                    <li>
                        <a href="http://startbootstrap.com">BootStrap</a>
                    </li>
                    <li>
                     <!--
 					<c:if test="${user!=null}">   
 						<form action="/user/logout" method="post">
 							<button type="submit" class="btn">Disconnect</button>
 							<input type="hidden" name="_csrf" value="${_csrf.token}"></input>
 						</form>
 					</c:if>-->
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('https://raw.githubusercontent.com/BlackrockDigital/startbootstrap-clean-blog/master/img/home-bg.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1>Hwan's Blog</h1>
                        <hr class="small">
                        <span class="subheading">Welcome! ♬</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
 		<h3>Connect to Facebook</h3>
 
 		<form action="/connect/facebook" method="POST">
 			<input type="hidden" name="_csrf" value="${_csrf.token}"></input>
 		<div class="formInfo">
 				<p>You aren't connected to Facebook yet. Click the button to connect this application with your Facebook account.</p>
 			</div>
 			<p>
 				<button type="submit">Connect to Facebook</button>
 			</p>
 		</form>
 	</div>
 
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            	
			<c:forEach var="post" items="${postPage.content}">
				<div class="post-preview">
                    <a href="/post/${post.id}">
                        <h2 class="post-title">
                            <c:out value="${post.title}" escapeXml="true"></c:out>
                        </h2>
                        <h3 class="post-subtitle">
                            <c:out value="${post.subtitle}" escapeXml="true"></c:out>
                        </h3>
                    </a>
                    <p class="post-meta">Posted by <a href="#">${post.name}</a> on ${post.regDate}</p>
                </div>
                <hr>
			</c:forEach>
			
                <!-- Pager -->
                <ul class="pager">
    				<c:if test="${!postPage.first}">
    					<li class="previous">
       						 <a href="?page=${postPage.number-1}">&larr; Newer Posts</a>
    					</li>
    				</c:if>
    				<c:if test="${!postPage.last}">
    					<li class="next">
        					<a href="?page=${postPage.number+1}">Older Posts &rarr;</a>
    					</li>
    				</c:if>
				</ul>
            </div>
        </div>
    </div>

    <hr>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <ul class="list-inline text-center">
                        <li>
                            <a href="https://www.facebook.com/seonghwan.hwang.522">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="https://github.com/jsme11">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="https://twitter.com/">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                    </ul>
                    <p class="copyright text-muted">Powered By <a href="https://github.com/jsme11/HwanBlog">GitHub</a> | Skin designed by <a href="http://startbootstrap.com/template-overviews/clean-blog/">Start Bootstrap</a></p>
                </div>
            </div>
        </div>
    </footer>

	<script src="/webjars/jquery/2.1.3/dist/jquery.min.js"></script>
	<script src="/webjars/bootstrap/3.3.4/dist/js/bootstrap.min.js"></script>
</body>
</html>
