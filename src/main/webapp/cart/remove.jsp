<%@page import="cart.ListCartDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="cart.*"
    pageEncoding="UTF-8"%>
    <%
   		String idStr = request.getParameter("id");
    	if(idStr == null || idStr.isEmpty()){
    		response.sendRedirect(request.getContextPath() + "/common/errorPage.jsp?bookIdErr=1");
    		return;
    	}
    	
        CartService service = new HDCartService(new ListCartDAO());
    	if (service.remove(Integer.parseInt(idStr)))
    		response.sendRedirect(request.getContextPath() + "/cart/main.jsp");
    	else
    		response.sendRedirect(request.getContextPath() + "/common/errorPage.jsp?cartClearErr=1");

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>