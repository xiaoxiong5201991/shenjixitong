<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lumino - Dashboard</title>

<link href="/shenjixitong/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/shenjixitong/css/styles.css" rel="stylesheet">

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body>
<!-- 	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>中国人民银行</span>审计核销辅助管理系统</a>
				<ul class="nav navbar-nav">
					<li class="active"><a href="">审计项目管理</a></li>
					<li><a href="">审计统计分析</a></li>
					<li><a href="">系统管理</a></li>
				</ul>


				<ul class="user-menu">
					<li class="dropdown pull-right"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"><span
							class="glyphicon glyphicon-user"></span> User <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#"> <span class="glyphicon glyphicon-user"></span>
									Profile
							</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-cog"></span>
									Settings</a></li>
							<li><a href="#"><span
									class="glyphicon glyphicon-log-out"></span> Logout</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav> -->

 <%@include file="top.jsp"%>
 <%@include file="left.jsp"%>
	<!-- <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">

		<ul class="nav menu">
			<li class="parent "><a href="#"> <span
					class="glyphicon glyphicon-pencil"></span> 立项阶段管理<span
					data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em
						class="glyphicon glyphicon-s glyphicon-plus"></em></span>
			</a>
				<ul class="children collapse" id="sub-item-1">
					<li><a class="" href="/shenjixitong/jsp/chuangjianxinshenjixiangmu.jsp"> <span
							class="glyphicon glyphicon-share-alt"></span> 创建新审计项目
					</a></li>
					<li><a class="" href="#"> <span
							class="glyphicon glyphicon-share-alt"></span> 立项阶段信息维护
					</a></li>
				</ul></li>
			<li role="presentation" class="divider"></li>
			<li class="parent "><a href="#"> <span
					class="glyphicon glyphicon-list"></span> 实施与报告阶段管理<span
					data-toggle="collapse" href="#sub-item-2" class="icon pull-right"><em
						class="glyphicon glyphicon-s glyphicon-plus"></em></span>
			</a>
				<ul class="children collapse" id="sub-item-2">
					<li><a class="" href="#"> <span
							class="glyphicon glyphicon-share-alt"></span> 审计通知书管理
					</a></li>
					<li><a class="" href="#"> <span
							class="glyphicon glyphicon-share-alt"></span> 调阅清单管理
					</a></li>
					<li><a class="" href="#"> <span
							class="glyphicon glyphicon-share-alt"></span> 工作底稿管理
					</a></li>
					<li><a class="" href="#"> <span
							class="glyphicon glyphicon-share-alt"></span> 事实确认及反馈管理
					</a></li>
					<li><a class="" href="#"> <span
							class="glyphicon glyphicon-share-alt"></span> 初步意见及反馈管理
					</a></li>
					<li><a class="" href="#"> <span
							class="glyphicon glyphicon-share-alt"></span> 审计报告及问题管理
					</a></li>
					<li><a class="" href="#"> <span
							class="glyphicon glyphicon-share-alt"></span>审计结论管理
					</a></li>
					<li><a class="" href="#"> <span
							class="glyphicon glyphicon-share-alt"></span> 其他审计文档管理
					</a></li>
				</ul></li>
			<li><a href="charts.html"><span
					class="glyphicon glyphicon-stats"></span> 整改和后续阶段管理</a></li>
			<li role="presentation" class="divider"></li>

		</ul>

	</div> -->
	<!--/.sidebar-->

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">审计项目管理</li>
				<li class="active">审计项目管理</li>
				<li class="active">立项阶段信息维护</li>
			</ol>
		</div>
		<!--/.row-->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">审计项目人员维护：</div>
					<div class="panel-body">
					
							    <table class="table table-bordered">
   <thead>
     <tr>
      
       <th>审计人员名称</th>
       <th>项目人员所在机构</th>
       <th>工作角色</th>
       <th>所在小组</th>
       <th>工作职责</th>
       <th>操作</th>
  
       
     </tr>
   </thead>
   <tbody>
     <tr>
      
    
       <td>熊头</td>
       <td>中国人民银行梅州市中心支行科技科</td>
       <td>组长</td>
       <td>科技审查小组</td>
     <td>负责收集、整理、汇总科技材料</td>
     <td><a>修改</a>
     <a>删除</a></td>
       
     </tr>
     <tr>
      
     
           <td>熊头</td>
       <td>中国人民银行梅州市中心支行科技科</td>
       <td>组长</td>
       <td>科技审查小组</td>
     <td>负责收集、整理、汇总科技材料</td>
     <td><a>修改</a>
     <a>删除</a></td>
       
     </tr>
   
   
   </tbody>
 </table>
							
					<button class="btn btn-primary btn-lg" type="button">新增</button>
					</div>
				</div>
			</div>
		</div><!--/.row-->
		
	</div>

	<script src="/shenjixitong/js/jquery-1.11.1.min.js"></script>
	<script src="/shenjixitong/js/bootstrap.min.js"></script>

	<script>
		!function($) {
			$(document)
					.on(
							"click",
							"ul.nav li.parent > a > span.icon",
							function() {
								$(this).find('em:first').toggleClass(
										"glyphicon-minus");
							});
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function() {
			if ($(window).width() > 768)
				$('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function() {
			if ($(window).width() <= 767)
				$('#sidebar-collapse').collapse('hide')
		})
	</script>
</body>

</html>
