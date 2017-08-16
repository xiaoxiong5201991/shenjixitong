<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap Login Form Template</title>

	<!-- CSS -->

	<link rel="stylesheet" href="/shenjixitong/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="/shenjixitong/css/font-awesome.min.css">
	<link rel="stylesheet" href="/shenjixitong/css/form-elements.css">
	<link rel="stylesheet" href="/shenjixitong/css/style1.css">
	<link rel="stylesheet" href="/shenjixitong/css/zTreeStyle.css">
	<link rel="stylesheet" href="/shenjixitong/css/metroStyle.css">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
            <![endif]-->

            <!-- Favicon and touch icons -->
            <link rel="shortcut icon" href="/shenjixitong/ico/favicon.png">
            <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/shenjixitong/ico/apple-touch-icon-144-precomposed.png">
            <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/shenjixitong/ico/apple-touch-icon-114-precomposed.png">
            <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/shenjixitong/ico/apple-touch-icon-72-precomposed.png">
            <link rel="apple-touch-icon-precomposed" href="/shenjixitong/ico/apple-touch-icon-57-precomposed.png">

        </head>

        <body>
      
       
        	<!-- Top content -->
        	<div class="top-content">

        		<div class="inner-bg">
        			<div class="container">
        				<div class="row">
        					<div class="col-sm-8 col-sm-offset-2 text">
        						<h1><strong>中国人民银行</strong> 审计整改核销辅助管理系统</h1>
        					</div>
        				</div>
        				<div class="row">
        					<div class="col-sm-6 col-sm-offset-3 form-box">
        						<div class="form-top">
        							<div class="form-top-left">
        								<h3>请登录：</h3>
        							</div>
        							<div class="form-top-right">
        								<i class="fa fa-key"></i>
        							</div>
        						</div>
        						<div class="form-bottom">
        							<form role="form" action="" method="post" class="login-form">

        								<div class="form-group">
        									<label  for="form-username">机构名称：</label>
        									<input id="form-departNum" type="hidden" value=""/>
        									<input type="text" name="form-username" placeholder="请选择机构名称" class="form-username form-control" id="form-departname">
        								</div>

        								<div class="form-group">
        									<label  for="form-username">用户名：</label>
        									<input type="text" name="form-username" placeholder="请输入用户名" class="form-username form-control" id="form-username">
        								</div>

        								<div class="form-group">
        									<label  for="form-password">密码：</label>
        									<input type="password" name="form-password" placeholder="请输入密码" class="form-password form-control" id="form-password">
        								</div>

        								<button type="submit" class="btn">登录</button>
        							</form>
        						</div>


        						<div class="modal fade" id="mymodal">
        							<div class="modal-dialog">
        								<div class="modal-content">
        									<div class="modal-header">
        										<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        										<h4 class="modal-title">请选择机构名称：</h4>
        									</div>
        									<div class="modal-body" style="height: 500px;overflow:scroll;">
        										
        										<ul id="tree" class="ztree" style="width:260px; overflow:auto;">
        											

        										</ul>


        									</div>
        									<div class="modal-footer">
        									   <button type="button" class="btn btn-primary" id="selectTreenodeBtn">选择</button>
        									   <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        										
        									</div>
        								</div><!-- /.modal-content -->
        							</div><!-- /.modal-dialog -->
        						</div><!-- /.modal -->

        					</div>
        				</div>
        				
        			</div>
        		</div>

        	</div>


        	<!-- Javascript -->
        	<script src="/shenjixitong/js/jquery-1.11.1.min.js"></script>
        	<script src="/shenjixitong/bootstrap/js/bootstrap.min.js"></script>
        	<script src="/shenjixitong/js/jquery.backstretch.min.js"></script>
        	<script src="/shenjixitong/js/scripts.js"></script>
        	<script src="/shenjixitong/js/jquery.ztree.all.min.js"></script>
            <script src="/shenjixitong/js/jquery.json-2.4.js"></script>
        	<script type="text/javascript">
        	var treeObj;
        	var nodes;
        	var parentNode;
        	var setting = {
        			view: {
        				dblClickExpand: true
        			},
        			data: {
        				simpleData: {
        					enable:true,
        					idKey: "dId",
        					pIdKey: "pId",
        					rootPId: ""
        				}
        			},
        			key:{
        				name:"name"
        			},
        			callback:{
        				beforeClick: zTreeBeforeClick
        			}
        		};
        	
        	function zTreeBeforeClick(treeId, treeNode, clickFlag) {
        		return !treeNode.isParent;
        	};
        	
        	$(function(){
    			$("#form-departname").focus(function(){
    				$("#mymodal").modal("toggle");
    			});
    			
    			$("#selectTreenodeBtn").click(function(){
    			    treeObj = $.fn.zTree.getZTreeObj("tree");
    				nodes = treeObj.getSelectedNodes();
    				parentNode=nodes[0].getParentNode();
    				$("#form-departname").val(parentNode.name+nodes[0].name);
    				$("#form-departNum").val(nodes[0].serialNum);
    				$('#mymodal').modal('hide');
    			});
        	});
        	
        	
        	$(document).ready(function () {
                $.ajax({
                    type: "post",
                    contentType: "application/json",
                    url: "http://localhost:8080/shenjixitong/login/loadZtree",
                    data: "{}",
                    dataType: "json",
                    success: function (result) {
                        var zNodes = result.result;
                       
                        $.fn.zTree.init($("#tree"), setting, zNodes);
                    }
                });
            });
        	
   
</script>

        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
            <![endif]-->

        </body>

        </html>