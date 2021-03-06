<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>	
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=basePath %>css/all.css">
<link rel="stylesheet" href="<%=basePath %>css/lmpublish.css">
<title>图书发布</title>
</head>
<body>
<jsp:include page="/pages/mainPage/head.jsp"></jsp:include>
<div id = "publish">
	<div id = "pleft">
		<h2 id = "psubtitle">图书发布</h2><br/>
	</div>
	<form action="/SH_Books/PublishBookServlet" method="post" enctype="multipart/form-data">
		<div id = "pright">
			<div id = "prightleft">
				书名：&nbsp;<input type="text" name="bookName"/>&nbsp;&nbsp;<br/>
				作者：&nbsp;<input type="text" name ="author"/>&nbsp;&nbsp;<br/>
				新旧：&nbsp;<select id = "pselect" name = "pselect">
						<option value="10">
							全新
						</option>
						<option value="9">
							九成新
						</option>
						<option value="8">
							八成新
						</option>
						<option value="5">
							五成新
						</option>
						<option value="4">
							五成新以下
						</option>
					</select>&nbsp;&nbsp;<br/>
<!--				
				原价：&nbsp;<input type="text" name ="oldPrice"/>&nbsp;元<br/>
 -->
				价格：&nbsp;<input type="text" name ="nowPrice"/>&nbsp;元<br/>
<!--  				
				书籍详情：
			       <input type="radio" name = "xiangqing" checked="checked"/>专业书
			       <input type="radio" name = "xiangqing" />课外书<br/>
 -->			
 				ISBN：&nbsp;<input type="text" name = "isbn"/>&nbsp;&nbsp;<br/>
 				出版日期：&nbsp;<input type="text" name = "publicYear"/>&nbsp;&nbsp;&nbsp;&nbsp;<br/>
 			</div>
			<div id = "prightright">
				&nbsp;&nbsp;数量：&nbsp;&nbsp;<input id = "pshuliang" type="text" name ="bookNum" value="1"/>&nbsp;<br/>
				专业：&nbsp;<select id = "pzhuanye" name="selectzhuanye">
					<c:forEach items="${sessionScope.major}" var="item">
						<option value="${item.id}">${item.name}--${item.grade}年级</option>
					</c:forEach>
				</select><br/>
				联系电话： <input type="text" name = "tel"/><br/>
				<div id = "pdiv">
					<p id = "pdescription">商品描述：</p> 
					 <textarea name="description" id = "ptextArea" rows="5" cols="5" ></textarea><br/>
				</div>
				上传图片： <input id = "pselect" type="file" name = "image" />
			</div>
			<br/>
			<br/>
			<div id = "prightdown">
				<div id = "pdowntop">
				<!-- 
					<input type="checkbox" name = "pchoice" value="zhengpin"/>正品
				-->
					<input type="checkbox" name = "pchoice1" value="keyijia"/>可议价
					<input type="checkbox" name = "pchoice2" value="wubiji"/>无笔记<br/>
				</div>
				<div id = "pdowndown">
					<input id = "pbutton" type="submit" value="发布"/>
					<input id = "pbutton" type="reset" value="重置"/>
				</div>
			</div>
		</div>
	</form>
</div>
<jsp:include page="/pages/mainPage/foot.jsp"></jsp:include>
</body>
</html>