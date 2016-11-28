<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="/public/backpublic.jsp" %>
<title>后台用户登录</title>
<style type="text/css">
.input {
	margin-top: 10px;
}

 #button {
	text-align: right;
}
</style>
<script type="text/javascript">
	$(function() {
		$("#submit").click(function() {
			$("#form1").form("submit", {
				url : 'Goods_add',
				success : function() {
					$("#form1").form("reset");
					parent.$("#tianjia").window("close");
					parent.$("#good").treegrid("reload");
				}
			});
		});
		$("#reset").click(function() {
			$("#form1").form("reset");

		});

	});
</script>
</head>
<body>



	<form id="form1" method="post"
		enctype="multipart/form-data">
		<div class="input">
			<label>客户姓名:</label> <input class="easyui-textbox" style="width: 200px"
				name="cname">
		</div>
		<div class="input">
			<label>客户电话:</label> <input class="easyui-textbox" style="width: 200px"
				name="cphone">
		</div>
		<div class="input">
			<label>出货目的地:</label> <input class="easyui-textbox" style="width: 200px"
				name="caddress">
		</div>
	    <div class="input" class="button">
			<a id="submit" 
				class="easyui-linkbutton" data-options="iconCls:'icon-save'"  >保存</a>
				<a id="reset"
				class="easyui-linkbutton" data-options="iconCls:'icon-undo'"  >重置</a>
		</div>
	
	</form>





</body>
</html>