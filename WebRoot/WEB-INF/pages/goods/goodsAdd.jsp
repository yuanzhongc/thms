<%@page import="com.thms.bean.Unit"%>
<%@page import="com.thms.bean.GoodsType"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>惠宇茶舍 - 添加商品</title>
<meta name="pragma" content="no-cache">
<meta name="cache-control" content="no-cache">
<meta name=X-UA-Compatible content="IE=edge,chrome=1"> 
<meta name="expires" content="0">
<meta name="keywords"
	content="惠宇茶舍,茶舍,惠宇,惠州,惠阳,品茗,喝茶,纯静,纯静空间,休闲,休闲舒适,棋牌,商务">
<meta name="description" content="惠宇茶舍网上订座">
<%@include file="../../../include.jsp"%>
<link rel="stylesheet" type="text/css" href="${basePath}js/upload/tz-upload.css">
<script type="text/javascript" src="${basePath}js/upload/tz_upload.js"></script>
<style type="text/css">
body {
	background: #ddd;
	font-family: "微软雅黑";
}

.nav {
	width:100%;
	height:60px;
	background:#646464;
	border-top:5px solid #f0f0f0;
}

.active{
	background:#999;
}

.nav .nav-box {
	width:1000px;
	height:60px;
	margin:0 auto;
	
}
.nav .nav-box .nav-title:hover {
	background:#999;
}

.nav .nav-box ul li {
	list-style: none;
	float: left;
	width:95px;
	text-align:center;
	height:60px;
	line-height:60px;
	color:#fff;
}

.nav .nav-box ul li a {
	color:#fff;
	display:block;
	font-size:16px;
}

.panel {
	width:1000px;
	height:auto;
	background:#fafafa;
	margin:0 auto;
	padding:30px 0px;
	border:1px solid #fafafa;
	margin-bottom:30px;
}

.panel .p-title {
	padding-left:20px;
}

.panel .p-items {
	width:1000px;
	margin:0 auto;
	margin-bottom:30px;
}

.panel .p-items .i-title {
	width:980px;
	height:40px;
	background:#f3f3f3;
	line-height:50px;
	padding-left:20px;
	margin-bottom:15px;
	font-size:13px;
}

.panel .p-items .item {
	width:900px;
	height:35px;
	margin:0 auto;
	margin-bottom:10px;
}

.panel .p-items .item .inputbox {
	width:900px;
}
.panel .p-items .item .inputbox #gname {
	width:550px;
}
.panel .p-items .item .inputbox #gprice,#gqty {
	width:100px;
}
.panel .p-items .item .inputbox #gdescription {
	width:550px;
}
.panel .p-items .opt-name {
	width:130px;
	text-align:right;
	font-size:14px;
	line-height:30px;
}
.panel .p-items .item .inputbox .inputleft {
	display:block;
}
.panel .p-items .item .inputbox #inp-select {
	width:250px;
	height:34px;
	padding:3px 12px;
	font-size:13px;
}
.panel .p-items .item .inputbox .inputright {
	width:315px;
	height:25px;
	padding:3px 8px;
	border:1px solid #ddd;
}
.panel .p-items .item .inputbox .inputright,.uploadbtn {
	float:left;
}
.panel .p-items .item .downbox {
	width:110px;
	height:30px;
	display:block;
	float:left;
	font-size:14px;
	margin-left:15px;
}
.panel .p-items .item .downbox .downtype {
	width:30px;
}
.panel .p-items .uploadbtn{
	width:80px;
	height:30px;
	margin-left:15px;
	border:1px solid #ddd;
	text-align:center;
	line-height:30px;
	font-size:12px;
	display:block;
	background:#f3f3f3;
}

.panel .p-items .p-button {
	width:auto;
	background:#fafafa;
	float:left;
}

.panel .p-items .p-button .button {
	width:120px;
	height:40px;
	line-height:40px;
	color:#fff;
	text-align:center;
	display:block;
	background:#1CBD9D;

}
</style>
</head>

<body>
	<%@include file="../../../header.jsp"%>
	<%
		List<GoodsType> typs = new ArrayList<GoodsType>();
		typs = (List<GoodsType>) request.getAttribute("types");
		pageContext.setAttribute("typs", typs);
		List<Unit> units = new ArrayList<Unit>();
		units = (List<Unit>) request.getAttribute("units");
		pageContext.setAttribute("units", units);
	%>
	<!-- 后台导航 开始 -->
	<div class="nav"> 
		<div class="nav-box">
			<ul>
				<li class="bg-orange"><a href="${basePath }admin/admin.jxp">首页</a></li>
				<li><a href="javascript:void(0);" class="nav-title active">商品管理</a></li>
				<li><a href="javascript:void(0);" class="nav-title" style="color:orange">添加商品</a></li>
				<li><a href="${basePath }goods/edit" class="nav-title">编辑商品</a></li>
				<li><a href="${basePath }goodset/index" class="nav-title">设置</a></li>
			</ul>
		</div>		
	</div>
	<!-- 后台导航 结束 -->
	<!-- 后台首页展示区 -->
	<div class="panel">
		<div class="p-title fs18"><span class="iconfont">&#xe654;</span> 添加商品</div>
		<div class="p-items">
			<div class="i-title">商品信息</div>
			<div class="item">
				<div class="inputbox">
					<label class="inputleft">
						<i class="opt-name">(必选)-类别：</i>
						<select  id="inp-select">
							<option value="0">--请选择--</option>
							<c:forEach items="${types }" var="type">
								<option value="${type.id}">${type.name }</option>
							</c:forEach>
						</select>
					</label>
				</div>
			</div>
			<div class="item">
				<div class="inputbox">
					<input type="text" hidden="hidden" id="gid">
					<label class="inputleft">
					<i class="opt-name">(必填)-名称：</i>
						<input class="inputright" type="text" id="gname">
					</label>
				</div>
			</div>		
			<div class="item">
				<div class="inputbox">
					<label class="inputleft">
					<i class="opt-name">(必填)-单价(RMB)：</i>
						<input class="inputright" type="text" id="gprice">
					</label>
				</div>
			</div>					
			<div class="item">
				<div class="inputbox">
					<label class="inputleft">
						<i class="opt-name">(必填)-数量：</i>
						<input class="inputright" type="text" id="gqty">
					</label>
				</div>
			</div>	
			<div class="item">
				<div class="inputbox">
					<label class="inputleft">
						<i class="opt-name">(必填)-单位：</i>
						<select  id="inp-select">
							<option value="0">--请选择--</option>
							<c:forEach items="${units }" var="unit">
								<option value="${unit.id}">${unit.name }</option>
							</c:forEach>
						</select>
					</label>
				</div>
			</div>				
			<div class="item">
				<div class="inputbox" style="width:802px">
					<label class="inputleft">
						<i class="opt-name">(必填)-商品描述：</i>
						<input class="inputright" type="text" id="gdescription">
					</label>
				</div>
			</div>	
			<div class="item">
				<div class="p-button ml130 mr10">
					<a href="javascript:void create();" class="button">保存商品</a>
				</div>
			</div>									
		</div>
		<!-- 上传商品图片 开始  -->
		<div class="p-items">
			<div class="i-title">上传预览</div>
			<div class="item">
				<div class="inputbox">
					<label class="inputleft">
						<i class="opt-name">商品图片：</i>
						<input class="inputright" type="text" id="filename1" value="">
						<a href="javascript:void(0);"  class="uploadbtn text-def" id="uploadbtn1">上传图片</a>
					</label>
				</div>
			</div>
			<div class="item">
				<div class="inputbox">
					<label class="inputleft">
						<i class="opt-name">商品图片：</i>
						<input class="inputright" type="text" id="filename2">
						<a href="javascript:void(0);" class="uploadbtn text-def" id="uploadbtn2">上传图片</a>
					</label>
				</div>
			</div>			
		</div>
		<!-- 上传商品图片 结束 -->
		<!-- 销售属性 开始  -->
		<div class="p-items">
			<div class="i-title">销售属性</div>
			<div class="item">
				<i class="opt-name">库存扣减方式：</i>
				<label class="downbox"><input type="radio" name="downtype"> 预定扣库存</label>
				<label class="downbox"><input type="radio" name="downtype"> 付款扣库存</label>
			</div>
		</div>		
		<!-- 销售属性 结束 -->
		<div class="p-items" >
			<div class="i-title">提交信息</div>
			<div class="p-button ml190">
				<a href="javascript:void release();" class="button">保存并发布商品</a>
			</div>			
		</div>
	</div>
<div id="console"></div>
	<script type="text/javascript">
		 $.tzUpload({
				targetId:"uploadbtn1",
				url:getRootPath()+"/myupload",
				size:"10 MB",
				data:{"dir":"goods"},
				single:false,
				callback:function(data){
					var jdata = eval("("+data+")");
					if(jdata.success){
						$("#filename1").attr("value",jdata.url);
					}else{
						messageBox("很抱谦,文件上传失败!");
					}
				}
			});
		 $.tzUpload({
				targetId:"uploadbtn2",
				url:getRootPath()+"/myupload",
				size:"10 MB",
				data:{"dir":"goods"},
				single:false,
				callback:function(data){
					var jdata = eval("("+data+")");
					if(jdata.success){
						$("#filename2").attr("value",jdata.url);
					}else{
						messageBox("很抱谦,文件上传失败!");
					}
				}
			});	
		/** 添加商品 */
		function create(){
			 var typeId = $("#inp-select").val();
			 if(parseInt(typeId) == 0){
				 messageBox("请选择相应的商品类别!");
				 return false;
			 }
			 var name = $("#gname").val();
			 if(isEmpty(name)){
				 messageBox("请选择相应的商品名称!");
				 return false;
			 }
			 var price = $("#gprice").val();
			 if(isNaN(price) || parseInt(price) < 0){
				 messageBox("请选择相应的商品单价!");
				 return false;
			 }
			 
			 alert(price);
			 
			 
			 
		 }

		

   	</script>
</body>
</html>