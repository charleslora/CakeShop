<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page isELIgnored="false" %> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- JQuery -->
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css">


</head>
<body>

    <div class="contaner">
      <nav class="navbar navbar-inverse">
         <div class="navabar-header">
         <a href=""class="navbar-brand"><img src="resources/images/dragon.jpg"
         alt="NIIT" height="30px" width="50px"></a>
         		<button type="button" class="navbar-toggle collapsed" 
   data-toggle="collapse" data-target="#navbardemo" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
          </button>
          </div>
          <div class="collapse navbar-collapse" id="navbardemo">
            <ul class="nav navbar-nav">
             <li><a href="home">Home</a></li>
               <li><a href="aboutus">About Us</a></li>
               <li><a href="getallproducts">Browse all products</a></li>
                <li>
                 <li class="dropdown"><a href="#" class="dropdown-toggle"
                    data-toggle="dropdown">Select By Category<span class="caret"></span></a>
       
        
                    <ul class="dropdown-menu">
                    <li><a href="#">Kitchen and Dining</a></li>
                      <li>
                         <li class="dropdown"><a href="#" class="dropdown-toggle"
                           data-toggle="dropdown">Furniture<span class="caret"></span></a>
                              <ul class="dropdown-menu">
           
                              <li><a href="#">Kitchen Furniture</a></li>
                              <li><a href="#">chair</a></li>
                              </ul>
                      </li>
                             <li><a href="#">ALL</a></li>
                   </ul>
        
                 </li>
                  <li><a href="<c:url value='/admin/addproduct'></c:url>">Add Product</a></li>
                  <li><a href="<c:url value='/admin/getupdateform/{id}'></c:url>">Edit Product</a></li>
                  
             <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
        
                <li><a href="<c:url value='/all/registrationform'></c:url>">Sign
							Up</a></li>
					<!--  <li><a href="<c:url value='/login'></c:url>">Sign In</a></li>
					-->
                 <li><a href="#">Sign Out</a></li>
       
            </ul>
           </div>
   
        </nav>
   </div>

</body>
</html>
