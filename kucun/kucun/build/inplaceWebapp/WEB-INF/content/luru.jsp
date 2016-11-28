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
			<label>商品名称:</label> <input class="easyui-textbox" style="width: 200px"
				name="goodsname">
		</div>
		<div class="input">
			<label>销售价格:</label> <input class="easyui-textbox" style="width: 200px"
				name="price">
		</div>
		<div class="input">
			<label>销售数量:</label> <input class="easyui-textbox" style="width: 200px"
				name="number">
		</div>
		
		<div class="input">
			<label>销售客户:</label> <input class="easyui-textbox" 
				 style="width: 200px" name="tid">
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