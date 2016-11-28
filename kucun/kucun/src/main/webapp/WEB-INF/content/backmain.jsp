<%@page import="org.springframework.context.annotation.Import"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="/public/backpublic.jsp"%>
<%@page import="Entity.*"%>
<title>后台主页</title>
<script type="text/javascript">
	$(function() {
		var treeData=[{
			text:"库存管理",
			children:[{
				text:"库存查询",
				attributes:{
					url:"backMenDian"
				}
			},{
				text:"库存分析",
				attributes:{
					url:"houtaidingdanguanli"
				}
			}]
			},{
			text:"销售管理",
			children:[{
				text:"销售明细查询",
				attributes:{
					url:"backXiaoShou"
				}
			},{
				text:"录入操作",
				children:[{
					text:"销售录入",
					attributes:{
						url:"luru"
					}
				},{
					text:"客户录入",
					attributes:{
						url:"xiaoshou"
					}
				}
				]
			
			}]
		}];
		
		// 实例化树菜单
		$("#tree").tree({
			data:treeData,
			lines:true,
			onClick:function(node){
				if(node.attributes){
					openTab(node.text,node.attributes.url);
				}
			}
		});
		// 新增Tab
		function openTab(text,url){
			if($("#tt").tabs('exists',text)){
				$("#tt").tabs('select',text);
			}else{
				var content="<iframe frameborder='0' scrolling='auto' style='width:100%;height:100%' src="+url+"></iframe>";
				$("#tt").tabs('add',{
					title:text,
					closable:true,
					content:content
				});
			}
		}
		

						});

</script>
</head>
<body class="easyui-layout">
	<!--后面操作系统头部  -->
	<div data-options="region:'north',title:'欢迎来到库存后台管理系统',split:true"
		style="height: 100px;">
		<%
			if (session.getAttribute("user") != null) {
				User user = (User) session.getAttribute("user");
		%>
		<p>
			欢迎管理员：<%=user.username%></p>

	</div>
	<!--后台操作系统左边的选项框  -->
	<div data-options="region:'west',title:'系统操作',split:true"
		style="width: 250px;">
		<div id="menu" class="easyui-accordion" data-options="fit:true">
			<%
				if (user.getRenquanxian().getShenFen().equals("1")) {
			%>
			<div title="总部业务管理" data-options="iconCls:'icon-save'"
				style="overflow: auto; padding: 10px;">
				<ul>
					<li id="kucun"><span class="new" title="backZongBu">库存管理</span></li>
					<li><span class="new"  title="JsChart">销售管理</span></li>
				</ul>
			</div>
			<%
				} else {
			%>
			<!-- 第二个管理 -->
			<div id="menu" title="门店业务管理" data-options="selected:true"
				style="padding: 10px; overflow: auto;">
				<ul id="aa" class="easyui-tree">
					 
                        <div>
                               <ul id="tree"></ul>
                   
                        </div>
                  
				</ul>


			</div>
			<%
				}

				} else {
			%>
			<div>
				<a href="backlogin">宝贝，我们先登陆好吗</a>
			</div>

			<%
				}
			%>
		</div>
	</div>
	<!--后台操作系统的具体操作页面  -->
	<div data-options="region:'center',title:'操作内容'"
		style="padding: 1px; background: #eee;">
		<div id="tt" class="easyui-tabs" data-options="fit:true">
			<div title="系统缺省页面" style="padding: 20px; display: none;">
				后台操作内容主页</div>
		</div>
	</div>
</body>
</html>