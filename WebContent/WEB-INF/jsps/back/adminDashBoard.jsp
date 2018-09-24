<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;//+ "/";
%><!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="vickie">
<link rel="shortcut icon"
	href="<%=basePath%>/resources/img/favicon.html">
<title>蓝领劳务对接网</title>

<!-- Bootstrap core CSS -->
<link href="<%=basePath%>/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=basePath%>/resources/css/bootstrap-reset.css"
	rel="stylesheet">
<!--external css-->
<link
	href="<%=basePath%>/resources/assets/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<link
	href="<%=basePath%>/resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
	rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet"
	href="<%=basePath%>/resources/css/owl.carousel.css" type="text/css">
<!-- Custom styles for this template -->
<link href="<%=basePath%>/resources/css/style.css" rel="stylesheet">
<link href="<%=basePath%>/resources/css/style-responsive.css"
	rel="stylesheet" />
<link href="<%=basePath%>/resources/css/sweet-alert.css"
	rel="stylesheet" />
</head>

<body>

	<section id="container" class="">
		<!--header start-->
		<header class="header white-bg">
			<div class="sidebar-toggle-box">
				<div data-original-title="隐藏侧边栏" data-placement="right"
					class="icon-reorder tooltips" style="font-size: 35px;"></div>
			</div>
			<!--logo start-->
			<a href="${pageContext.request.contextPath }/admin/adminDashBoard"
				class="logo" style="font-size: 35px; padding-left: 20px"><strong
				style="color: black;">蓝领劳务<span>对接网</span></strong>－后台管理</a>
			<!--logo end-->
			<div class="top-nav " style="margin-top: 20px">
				<!--search & user info start-->
				<ul class="nav pull-right top-menu">
					<!-- user login dropdown start-->
					<c:if test="${admin!=null }">
						<li class="dropdown"><a data-toggle="dropdown"
							class="dropdown-toggle"><span class="username">
									${admin.admin_name } </span> <b class="caret"></b> </a>
							<ul class="dropdown-menu extended logout">
								<li><a
									href="${pageContext.request.contextPath }/admin/adminLogout"
									id="logout"><span><i class="icon-key"></i><b>退出登录</b></span></a></li>
							</ul></li>
					</c:if>
					<c:if test="${admin==null }">
						<li><a
							href="${pageContext.request.contextPath }/admin/adminLogin"><span
								class="username"> 请登录 </span></a></li>
					</c:if>

					<!-- user login dropdown end -->
				</ul>
				<!--search & user info end-->
			</div>
		</header>
		<!--header end-->

		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu">
					<li class="active"><a class=""
						href="${pageContext.request.contextPath }/admin/adminDashBoard">
							<i class="icon-dashboard"></i> <span>概况</span>
					</a></li>
					<li class=" "><a class=""
						href="${pageContext.request.contextPath }/admin/adminUser"> <i
							class="icon-user"></i> <span>用户管理</span>
					</a></li>
					<li class=" "><a class=""
						href="${pageContext.request.contextPath }/admin/adminJob"> <i
							class="icon-suitcase"></i> <span>职位管理</span>
					</a></li>

				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="row state-overview">
					<div class="col-lg-3 col-sm-6">
						<section class="panel">
							<div class="symbol terques">
								<i class="icon-user"></i>
							</div>



							<a href="${pageContext.request.contextPath }/admin/adminUser">
								<div class="value">
									<h1>${userSum }</h1>
									<p>用户</p>
								</div>

							</a>

						</section>
					</div>
					<div class="col-lg-3 col-sm-6">
						<section class="panel">
							<div class="symbol red">
								<i class="icon-tags"></i>
							</div>


							<a href="${pageContext.request.contextPath }/admin/adminJob">
								<div class="value">
									<h1>${jobSum }</h1>
									<p>职位</p>
								</div>
							</a>




						</section>
					</div>
				</div>



			</section>
		</section>
		<!--main content end-->

	</section>

	<!-- js placed at the end of the document so the pages load faster -->
	<script src="<%=basePath%>/resources/js/jquery.js"></script>
	<script src="<%=basePath%>/resources/js/jquery-1.8.3.min.js"></script>
	<script src="<%=basePath%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>/resources/js/jquery.scrollTo.min.js"></script>
	<script src="<%=basePath%>/resources/js/jquery.nicescroll.js"
		type="text/javascript"></script>
	<script src="<%=basePath%>/resources/js/jquery.sparkline.js"
		type="text/javascript"></script>
	<script
		src="<%=basePath%>/resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
	<script src="<%=basePath%>/resources/js/owl.carousel.js"></script>
	<script src="<%=basePath%>/resources/js/jquery.customSelect.min.js"></script>

	<!--common script for all pages-->
	<script src="<%=basePath%>/resources/js/common-scripts.js"></script>

	<!--script for this page-->
	<script src="<%=basePath%>/resources/js/sparkline-chart.js"></script>
	<script src="<%=basePath%>/resources/js/easy-pie-chart.js"></script>
	<script src="<%=basePath%>/resources/js/sweet-alert.js"></script>

	<script>
		function logout(e) {
			//alert(e);
			swal({
				title : "确定退出登录？",
				type : "warning",
				showCancelButton : true,
				confirmButtonColor : "#DD6B55",
				confirmButtonText : "退出登录",
				cancelButtonText : "取消",
				closeOnConfirm : false,
				closeOnCancel : true,
			}, function(isConfirm) {
				if (isConfirm) {
					location.href = e.target.href;
					//return true;
				} else {
					//return false;
				}
			});
			console.log('sdasdas', e);
			//e.stopPropagation()
			e.preventDefault();
		}

		$('#logout').on('click', logout);
	</script>

	<script>
		//owl carousel

		$(document).ready(function() {
			$("#owl-demo").owlCarousel({
				navigation : true,
				slideSpeed : 300,
				paginationSpeed : 400,
				singleItem : true

			});
		});

		//custom select box

		$(function() {
			$('select.styled').customSelect();
		});
	</script>

</body>
</html>

