<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="/public/backpublic.jsp" %>
<title>后台用户管理</title>
<script>
function add() {
	 $('#tianjia').window({
			width:400,
			height:300,
			title:'添加',
			cache:false,
			content:'<iframe src="${pageContext.request.contextPath}/luru" frameborder="0" width="100%" height="100%"/>'
	 });
	
}

function search() {
	$('#back-user').datagrid('load', {
		gid : $.trim($('input[name="gname"]').val()), //过滤空格并且传递name=goodname的input的参数值
		mid : $.trim($('input[name="mname"]').val()),
	

	});
}


$(function(){
  $('#gname').combobox({    
    url:'Goods_getAllGoods',    
    valueField:'id',    
    textField:'name'

  });
    $('#mname').combobox({    
    url:'MenDian_getAllMenDian',    
    valueField:'id',    
    textField:'name' 
  
  });

	$('#back-user').datagrid({    
	    with:600,
	    title:'后台商品编辑',
	    pageSize:5,
	    pageList:[5,10,15],
	    columns:[[    
	        {field:'id',title:'序号',width:200,checkbox:true,},  
	        {field:'Gid',title:'商品',width:200,editor:{type:'text',options:{required:true,},},formatter: function(value,row,index){
				if (row.goods){
					return row.goods.name;
				} else {
					return value;
				}
			},
	        },    
	   
	        {field:'kucun',title:'库存',width:200,editor:{type:'text',options:{required:true,},},},    
	        {field:'q',title:'运量',sortable:true,width:200,editor:{type:'text',options:{required:true,},},}, 
	        {field:'ROP',title:'预警量',sortable:true,width:200}, 
	        {field:'lasttime',title:'上次进货时间',width:200}, 
	        {field:'xuqiuyuce',title:'需求预测',sortable:true,width:200}
	    ]],   
		fitColumns:true,
		pagination:true,
		remoteSort:false,
		multiSort:true,
		nowrap:false,
		rownumbers:true,
		toolbar:'#tb',
	    striped:true,
	    url:'KuCun_getAllKuCun.action',
      


	
	  });
});
</script>
</head>
<body>
	<table id="back-user" action=""></table>
	<div id="tb">
		<div style="padding: 5px;">
			<!-- <a id="btn" href="#" class="easyui-linkbutton"
				data-options="iconCls:'icon-add'" onClick="add()">添加</a> <a id="btn"
				href="#" class="easyui-linkbutton"
				data-options="iconCls:'icon-edit'" onClick="obj.remove();">删除</a> <a
				id="save" href="#" class="easyui-linkbutton"
				data-options="iconCls:'icon-save'" onClick="obj.save();"
				style="display: none;">保存</a> <a id="redo" href="#"
				class="easyui-linkbutton" data-options="iconCls:'icon-undo'"
				onclick="obj.redo();" style="display: none;">取消编辑</a>  -->
				根据商品名称查询：
				<select class="easyui-textbox" id="gname" name="gname" data-options="iconCls:'icon-search'" style="width: 180px"
				prompt="请输入你要查询的用户名"></select>
				<a id="btn" href="#" class="easyui-linkbutton"
				data-options="iconCls:'icon-add'" onClick="add()">添加</a> 
			
				<button id="btn"  class="easyui-linkbutton"  data-options="iconCls:'icon-search'" onClick="search()">查询</button>
		</div>

	</div>
	<div id="tianjia"></div>




</body>
</html>