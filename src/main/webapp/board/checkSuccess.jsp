<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	 var num = "<%= request.getParameter("num") %>";

  	if (window.name == "update") {
    	window.opener.parent.location.href = "BoardServlet?command=board_update_form&num=" + num;
  	} else if (window.name == "delete") {
    	alert('삭제되었습니다.');
    	window.opener.parent.location.href = "BoardServlet?command=board_delete&num=" + num;
  	}
	window.close();
</script>
</body>
</html>