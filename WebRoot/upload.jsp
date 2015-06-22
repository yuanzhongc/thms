<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@page import="com.thms.util.YzUpload"%>
<%
	//设置请求的编码和输出的编码
	request.setCharacterEncoding("UTF-8");//这个解决请求的乱码的问题
	response.setCharacterEncoding("UTF-8");//这个服务器传输给浏览器端中文的乱码问题
	

	//检查文件上传的请求是否使用了multipart/form-data
	String uid = (String)session.getAttribute("uid");
	String uuid = request.getParameter("uid");
	String fileUrl = YzUpload.getUploadFile(request, response,uuid);
	if(StringUtils.isNotEmpty(fileUrl)){
		session.setAttribute("face", fileUrl);
		out.print(fileUrl);
	}else{
		out.print("fail");
	}
	
%>

