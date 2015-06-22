<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<style type="text/css">
	.content {
		width:100%;
		height:auto;
	}
	
	.content .c-nav-box {
		width:100%;
		height:50px;
		background:#1CBD9D;
	}
	
	.content .c-nav-box .c-nav {
		width:1000px;
		height:50px;
		margin:0 auto;
	}
	
	.content .c-nav-box .c-nav ul li { 
		list-style:none;
		float:left;
		padding-right:40px;
	}
	
	.content .c-nav-box .c-nav ul li:hover {
		background:#646464;
	}
	
	.content .c-nav-box .c-nav i,span {
		float:left; 
		text-align:center;
	}
	.content .c-nav-box .c-nav i {
		display:block;
		color:#f3f3f3;
		font-size:30px;
		line-height:49px;
		margin:0 15px;
	}
	
	.content .c-nav-box .c-nav span {
		font-size:16px;
		color:#fff;
		display:block;
		line-height:49px;
	}
	
	.action {
		background:#646464;
	}

	.content .c-seat {
		width:1000px;
		height:150px;
		margin:0 auto;
		background:#fff;
	}
	
	.content .c-seat .c-s-box {
		width:990px;
		height:110px;
		padding:10px;
	}
	
	.content .c-seat .c-s-box ul li {
		list-style:none;
		float:left;
		width:235px;
		height:100px;
		margin-right:10px;
		padding-top:10px;
		border:1px solid #ddd;
		box-shadow:1px 1px 10px #f0f0f0;
	}
	
	.content .c-seat .c-s-box ul li:hover {
		border:1px solid #1CBD9D;
		box-shadow:1px 1px 10px #f0f0f0;
	}
	
	.content .c-seat .c-s-box ul li,a,span {
		text-align:center;	
		color:#1CBD9D;
	}
	.content .c-seat .c-s-box .buy {
		color:red;
	}
	
	.content .business {
		width:100%;
		background:#fafafa;
		height:300px;
		border-top:1px solid #f0f0f0;
	}
	
	.content .business .b-box {
		width:1000px;
		height:80px;
		margin:0 auto;
	}
	
	.content .business .b-box .b-title {
		width:1000px;
		height:80px;
	}
	.content .business .b-box .b-title .b-t-line,.b-t-title {
		float:left;
		margin-top:40px;
		line-height:30px;
		font-size:20px;
		margin-right:10px;
	}	
	
	.content .business .b-box .b-title .b-t-line {
		width:10px;
		height:30px;
		display:block;
		background:#1CBD9D;
	}
	
	.content .business .b-box .b-list {
		width:990px;
		height:110px;
		padding:10px;	
	}
	
	.content .business .b-box .b-list ul li {
		list-style:none;
		float:left;
		width:235px;
		height:100px;
		margin-right:10px;
		padding-top:10px;
		border:1px solid #ddd;
		box-shadow:1px 1px 10px #f0f0f0;
	}	
		
	.content .business .b-box .b-list ul li i,a,span {
		display:block;
		text-align:center;	
		color:#1CBD9D;
	}
	
	.content .business .b-box .b-list  ul li i{
		font-size:24px;	
		line-height:30px;
	}
	
	
	.content .thing {
		width:100%;
		background:#fff;
		height:300px;
		border-top:1px solid #f0f0f0;
	}
	
	.content .thing .t-box {
		width:1000px;
		height:80px;
		margin:0 auto;
	}
	
	.content .thing .t-box .t-title {
		width:1000px;
		height:80px;
	}
	
	.content .thing .t-box .t-title .t-t-line,.t-t-title {
		float:left;
		margin-top:40px;
		line-height:30px;
		font-size:20px;
		margin-right:10px;
		color:#f90 ;
	}	
	
	.content .thing .t-box .t-title .t-t-line {
		width:10px;
		height:30px;
		display:block;
		background:#f90 ;
	}
	
	.content .thing .t-box .t-list ul li {
		list-style:none;
		float:left;
		width:235px;
		height:100px;
		margin-right:10px;
		padding-top:10px;
		border:1px solid #ddd;
		box-shadow:1px 1px 10px #f0f0f0;
	}
	
	.content .thing .t-box .t-list ul li i,a,span {
		display:block;
		text-align:center;	
		color:#1CBD9D;
	}
	
	.content .thing .t-box .t-list ul li i{
		font-size:24px;	
		line-height:30px;
	}
	
	.content .page {
		width:100%;
		background:#fafafa;
		height:300px;
		border-top:1px solid #f0f0f0;
	}
	
	.content .page .p-box {
		width:1000px;
		height:80px;
		margin:0 auto;
	}
	
	.content .page .p-box .p-title {
		width:1000px;
		height:80px;
	}
	
	.content .page .p-box .p-title .p-t-line,.p-t-title {
		float:left;
		margin-top:40px;
		line-height:30px;
		font-size:20px;
		margin-right:10px;
		color:#646464 ;
	}	
	
	.content .page .p-box .p-title .p-t-line {
		width:10px;
		height:30px;
		display:block;
		background:#646464 ;
	}	
	
	.content .page .p-box .p-list ul li {
		list-style:none;
		float:left;
		width:235px;
		height:100px;
		margin-right:10px;
		padding-top:10px;
		border:1px solid #ddd;
		box-shadow:1px 1px 10px #f0f0f0;
	}
	
	.content .page .p-box .p-list ul li i,a,span {
		display:block;
		text-align:center;	
		color:#1CBD9D;
	}
	
	.content .page .p-box .p-list ul li i{
		font-size:24px;	
		line-height:30px;
	}
	
	
</style>

<div class="content">
	<!-- 内容导航开始 -->
	<div class="c-nav-box">
		<div class="c-nav">
			<ul>
				<li class="action"><a href="#online"><i class="iconfont">&#xe62f;</i><span>在线订座</span></a></li>
				<li><a href="#tea"><i class="iconfont">&#xe645;</i><span>商务订购</span></a></li>
				<li><a href="#cup"><i class="iconfont">&#xe676;</i><span>精品茶具</span></a></li>
				<li><a href="#draw"><i class="iconfont">&#xe68f;</i><span>名家书画</span></a></li>
			</ul>
		</div>
	</div>
	<!-- 内容导航结束 -->
	
	<!-- 在线订座 开始 -->
	<div class="c-seat">
		<div class="c-s-box">
			<ul>
				<li>
					
					<a href="javascript:void(0);" >我要来开会</a>
					<a href="javascript:void(0);">已有88982323人定购</a>
					<a href="javascript:void(0);" class="buy">点击预定</a>
				</li>
				<li>
					
					<a href="javascript:void(0);">我只喝茶</a>		
					<a href="javascript:void(0);">已有88982323人定购</a>
					<a href="javascript:void(0);" class="buy">点击预定</a>		
				</li>
				<li>
					
					<a href="javascript:void(0);">我来下盘棋</a>	
					<a href="javascript:void(0);">已有88982323人定购</a>
					<a href="javascript:void(0);" class="buy">点击预定</a>
				</li>
				<li>
					
					<a href="javascript:void(0);">我需要安静</a>	
					<a href="javascript:void(0);">已有88982323人定购</a>
					<a href="javascript:void(0);" class="buy">点击预定</a>
				</li>
			</ul>
		</div>
	</div>
	<!-- 在线订座 结束 -->
	
	<!-- 商务订制 开始 -->
	<div class="business"  id="tea">
		<div class="b-box">
			<!-- 标题部分 -->
			<div class="b-title">
				<i class="b-t-line"></i>
				<a href="javascript:void(0);" class="b-t-title">商务定制名茶</a>
			</div>
			
			<!-- 订制内容 -->
			<div class="b-list">
				<ul>
					<li>
						<a href="javascript:void(0);">我要来开会</a>
						<a href="javascript:void(0);">已有88982323人定购</a>
						<a href="javascript:void(0);" class="buy">点击预定</a>
					</li>
					<li>
						<a href="javascript:void(0);">我只喝茶</a>		
						<a href="javascript:void(0);">已有88982323人定购</a>
						<a href="javascript:void(0);" class="buy">点击预定</a>		
					</li>
					<li>
						<a href="javascript:void(0);">我来下盘棋</a>	
						<a href="javascript:void(0);">已有88982323人定购</a>
						<a href="javascript:void(0);" class="buy">点击预定</a>
					</li>
					<li>
						<a href="javascript:void(0);">我需要安静</a>	
						<a href="javascript:void(0);">已有88982323人定购</a>
						<a href="javascript:void(0);" class="buy">点击预定</a>
					</li>
				</ul>				
			</div>
		</div>
	</div>
	<!-- 商务订制 结束 -->
	
	<!-- 茶具商品 开始 -->
	<div class="thing"  id="cup">
		<div class="t-box">
			<!-- 标题部分 -->
			<div class="t-title">
				<i class="t-t-line"></i>
				<a href="javascript:void(0);" class="t-t-title">茶具套装</a>
			</div>
			
			<!-- 订制内容 -->
			<div class="t-list">
				<ul>
					<li>
						<a href="javascript:void(0);">我要来开会</a>
						<a href="javascript:void(0);">已有88982323人定购</a>
						<a href="javascript:void(0);" class="buy">点击预定</a>
					</li>
					<li>
						<a href="javascript:void(0);">我只喝茶</a>		
						<a href="javascript:void(0);">已有88982323人定购</a>
						<a href="javascript:void(0);" class="buy">点击预定</a>		
					</li>
					<li>
						<a href="javascript:void(0);">我来下盘棋</a>	
						<a href="javascript:void(0);">已有88982323人定购</a>
						<a href="javascript:void(0);" class="buy">点击预定</a>
					</li>
					<li>
						<a href="javascript:void(0);">我需要安静</a>	
						<a href="javascript:void(0);">已有88982323人定购</a>
						<a href="javascript:void(0);" class="buy">点击预定</a>
					</li>
				</ul>				
			</div>
		</div>
	</div>
	<!-- 茶具商品  结束 -->
	
	
	<!-- 名家书画 开始 -->
	<div class="page">
		<div class="p-box">
			<!-- 标题部分 -->
			<div class="p-title">
				<i class="p-t-line"></i>
				<a href="javascript:void(0);" class="p-t-title" id="draw">名人字画</a>
			</div>
			
			<!-- 订制内容 -->
			<div class="p-list">
				<ul>
					<li>
						<a href="javascript:void(0);">我要来开会</a>
						<a href="javascript:void(0);">已有88982323人定购</a>
						<a href="javascript:void(0);" class="buy">点击预定</a>
					</li>
					<li>
						<a href="javascript:void(0);">我只喝茶</a>		
						<a href="javascript:void(0);">已有88982323人定购</a>
						<a href="javascript:void(0);" class="buy">点击预定</a>		
					</li>
					<li>
						<a href="javascript:void(0);">我来下盘棋</a>	
						<a href="javascript:void(0);">已有88982323人定购</a>
						<a href="javascript:void(0);" class="buy">点击预定</a>
					</li>
					<li>
						<a href="javascript:void(0);">我需要安静</a>	
						<a href="javascript:void(0);">已有88982323人定购</a>
						<a href="javascript:void(0);" class="buy">点击预定</a>
					</li>
				</ul>					
			</div>
		</div>
	</div>
	<!-- 名家书画  结束 -->	
	
	<script type="text/javascript">
		$(".c-seat,.page,.thing,.business").on("click",function(){
			window.location.href = "${basePath}buy/shelf";
			
		});
	</script>
</div>