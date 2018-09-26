<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored="false" %> 
      <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <div class="container">
        ProductDetails<br>
          <div class="page-info">
             <div class="panel panel-warning">ProductDetails</div>
              <div class="panel panel-body">
              <img src="<c:url value='/resources/images/${productObj.id}.jpg'></c:url>">
<!-- <br>${productObj} --> 
             <b>Product Name:</b>${productObj.productname} <br>
             <b>Product Descripton:</b>${productObj.productdescription} <br>
             <b>Product Price:</b>${productObj.price} <br>
             <b>Product Quantity:</b>${productObj.quantity} <br>
             <b>Category:</b>${productObj.category.categoryname} <br>
             <button class="btn btn-lg"><span class="glyphicon glyphicon-shopping-cart"></span></button>
             </div>
          </div>
   </div>
<a href="<c:url value='/all/getallproducts'></c:url>">Browse all products</a>
</body>
</html>
