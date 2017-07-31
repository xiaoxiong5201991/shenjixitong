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
<link href="/shenjixitong/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
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
					<li class="active"><a class="" href="#"> <span
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
			<li class="active"><a href="charts.html"><span
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
				<li class="active">立项阶段信息维护</li>
			
			</ol>
		</div>
		<!--/.row-->
		
			<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
		
					<div class="panel-body">
						 <button class="btn btn-success btn-lg" type="button">项目基本信息维护</button> 
                      <button class="btn btn-info btn-lg" type="button">审计对象维护</button>
                      <button class="btn btn-info btn-lg" type="button">审计项目人员维护</button>
                      <button class="btn btn-info btn-lg" type="button">审计项目问题维护</button>
                      <button class="btn btn-info btn-lg" type="button">立项结束</button>
					</div>
					</div>
					</div>
					</div>
					

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">项目基本信息：</div>
					<div class="panel-body">
					<form role="form">
						<table class="table table-bordered">
		
							<tbody>
								<tr>
									<td><label  for="itemName" >项目名称：</label></td>
									<td></td>
								</tr>
								
								<tr>
									<td><label  for="itemNum" >项目编号：</label></td>
									<td></td>
								</tr>
								
								
								
								<tr>
									<td><label  for="itemName" >项目实施机构：</label></td>
									<td></td>
									
								</tr>
									<tr>
										<td><label for="itemName">项目类型：</label></td>
										<td></td>

									</tr>
									
									
									
									<tr>
										<td><label for="itemName">审计性质：</label></td>
										<td></td>

									</tr>
									
									
									
									
									<tr>
									<td><label  for="datepicker11" >审计进点日期：</label></td>
									<td></td>
									
								</tr>
								
								<tr>
									<td><label  for="datepicker12" >审计结束日期：</label></td>
									<td></td>
									
								</tr>
								
								<tr>
									<td><label  for="" >审计参与人数：</label></td>
									<td></td>
									
								</tr>
								
								
						
								
								<tr>
									<td><label  for="itemName" >审计期限：</label></td>
									 <td><input id=""  type="text" class="form-control" style="width:130px;float:left;">
									<div style="float:left; line-height:30px;">——</div>
									<input id=""  type="text" class="form-control" style="width:130px;"></td> 
									
								</tr>
								
								
									<tr>
									<td><label  for="itemName" >项目说明：</label></td>
									<td></td>
									
								</tr>
								
								<tr>
									<td><label  for="itemName" >立项人：</label></td>
									<td>丘杰雄</td>
									
								</tr>
							</tbody>
						</table>
					
                     </form>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">审计对象列表：</div>
					<div class="panel-body">
					<table class="table table-bordered">
							<thead>
								<tr>
									<th>审计对象名称</th>
									<th>审计对象补充信息</th>
									
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>				
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">审计项目人员列表：</div>
					<div class="panel-body">
					<table class="table table-bordered">
							<thead>
								<tr>
									<th>项目人员名称</th>
									<th>项目人员所在机构</th>
									<th>工作角色</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>				
					</div>
				</div>


				<div class="panel panel-default">
					<div class="panel-heading">审计项目问题列表：</div>
					<div class="panel-body">
					<table class="table table-bordered">
							<thead>
								<tr>
									<th>问题定性</th>
									<th>问题描述</th>
									<th>录入人</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>				
					</div>
				</div>

			</div>
		</div>
		<!--/.row-->
	</div>

	<script src="/shenjixitong/js/jquery-1.11.1.min.js"></script>
	<script src="/shenjixitong/js/bootstrap.min.js"></script>
    <script src="/shenjixitong/js/bootstrap-datetimepicker.min.js"></script>
    <script src="/shenjixitong/js/bootstrap-datetimepicker.zh-CN.js"></script>
	<script>
	
	$('#datepicker11').datetimepicker({
		minView: "month", 
		　　format: "yyyy-mm-dd", 
		　　language: 'zh-CN', 
		　　autoclose:true 
		    });
	$('#datepicker12').datetimepicker({
		minView: "month", 
		　　format: "yyyy-mm-dd", 
		　　language: 'zh-CN', 
		　　autoclose:true 
		    });
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

		$(function() {
			$('#sub-item-1').collapse('show')
		});
	</script>
</body>

</html>
