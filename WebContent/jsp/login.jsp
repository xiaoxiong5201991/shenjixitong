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
      
       <input id="ztreeJson" type="hidden" value='${ztreeJson}'/>
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
        		
        		};
        	
        	
        	$(document).ready(function () {
                $.ajax({
                    type: "post",
                    contentType: "application/json",
                    url: "http://localhost:8080/shenjixitong/login/loadZtree",
                    data: "{}",
                    dataType: "json",
                    success: function (result) {
                        var zNodes = result.result;
                        alert(zNodes);
                        $.fn.zTree.init($("#tree"), setting, zNodes);
                    }
                });
            });
        	
      /*   	var ztreeJson;
        	var zNodes;
        	var nodes;
        	var treeObj
        	var t;
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
        		
        		};
        		$(function(){
        			$("#form-departname").focus(function(){
        				$("#mymodal").modal("toggle");
        			});
        			
        			$("#selectTreenodeBtn").click(function(){
        			    treeObj = $.fn.zTree.getZTreeObj("tree");
        				nodes = treeObj.getSelectedNodes();
        				$("#form-departname").val(nodes[0].name)
        				$('#mymodal').modal('hide');
        			});
        			
        			ztreeJson=$("#ztreeJson").val();
        		
        			alert(ztreeJson);
        		    zNodes = $.toJSON(ztreeJson);
        			alert(zNodes);
        			 t = $("#tree");
        			 alert(zNodes);
        			 t = $.fn.zTree.init(t, setting, zNodes);
        			
        		});
 */
	/* var zNodes =[
		{id:1, pId:0, name:"[core] 基本功能 演示", open:true},
		{id:101, pId:1, name:"最简单的树 --  标准 JSON 数据", file:"core/standardData"},
		{id:102, pId:1, name:"最简单的树 --  简单 JSON 数据", file:"core/simpleData"},
		{id:103, pId:1, name:"不显示 连接线", file:"core/noline"},
		{id:104, pId:1, name:"不显示 节点 图标", file:"core/noicon"},
		{id:105, pId:1, name:"自定义图标 --  icon 属性", file:"core/custom_icon"},
	

		{id:2, pId:0, name:"[excheck] 复/单选框功能 演示", open:false},
		{id:201, pId:2, name:"Checkbox 勾选操作", file:"excheck/checkbox"},
		{id:206, pId:2, name:"Checkbox nocheck 演示", file:"excheck/checkbox_nocheck"},
		{id:207, pId:2, name:"Checkbox chkDisabled 演示", file:"excheck/checkbox_chkDisabled"},
		{id:208, pId:2, name:"Checkbox halfCheck 演示", file:"excheck/checkbox_halfCheck"},
	

		{id:3, pId:0, name:"[exedit] 编辑功能 演示", open:false},
		{id:301, pId:3, name:"拖拽 节点 基本控制", file:"exedit/drag"},
		{id:302, pId:3, name:"拖拽 节点 高级控制", file:"exedit/drag_super"},
		{id:303, pId:3, name:"用 zTree 方法 移动 / 复制 节点", file:"exedit/drag_fun"},
	

		{id:4, pId:0, name:"大数据量 演示", open:false},
		{id:401, pId:4, name:"一次性加载大数据量", file:"bigdata/common"},
		{id:402, pId:4, name:"分批异步加载大数据量", file:"bigdata/diy_async"},
		{id:403, pId:4, name:"分批异步加载大数据量", file:"bigdata/page"},

		{id:5, pId:0, name:"组合功能 演示", open:false},
		{id:501, pId:5, name:"冻结根节点", file:"super/oneroot"},
		{id:502, pId:5, name:"单击展开/折叠节点", file:"super/oneclick"},
		{id:503, pId:5, name:"保持展开单一路径", file:"super/singlepath"},
		{id:504, pId:5, name:"添加 自定义控件", file:"super/diydom"},
	

		{id:6, pId:0, name:"其他扩展功能 演示", open:false},
		{id:601, pId:6, name:"隐藏普通节点", file:"exhide/common"},
		{id:602, pId:6, name:"配合 checkbox 的隐藏", file:"exhide/checkbox"},
		{id:603, pId:6, name:"配合 radio 的隐藏", file:"exhide/radio"}
	]; */

	/* $(document).ready(function(){
		var t = $("#tree");
		alert(zNodes);
		t = $.fn.zTree.init(t, setting, zNodes);
	});
 */
 

</script>

        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
            <![endif]-->

        </body>

        </html>