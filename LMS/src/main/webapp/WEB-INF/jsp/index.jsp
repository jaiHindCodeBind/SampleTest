<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
  <title>LMS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">LMS</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">All Books</a></li>
      <li><a href="#">Order</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
<c:choose>
<c:when test="${MODE == 'BOOK_VIEW'}">

  <table class="table table-striped">
    <thead>
      <tr>
        <th>BOOK ID</th>
        <th>BOOK NAME</th>
        <th>AUTHOR</th>
        <th>PURCHASE DATE</th>
        <th>EDIT</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="books" items="${books}">
      <tr>
        <td>${books.id}</td>
        <td>${books.bookName}</td>
        <td>${books.author}</td>
        <td>${books.purchaseDate}</td>
        <td><a href="updateView?id=${books.id}"><div class="glyphicon glyphicon-pencil"></div></a></td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
  
  </c:when>
  
  <c:when test="${MODE == 'BOOK_EDIT'}"> 
  
  <div class="container">
  <h2>UPDATE BOOK INFO </h2>
  <form>
  alert("ala");
   <input type="hidden" class="form-control" value="${books.id}" id="id" name="id">   
  
    <div class="form-group">
      <label for="bookName">BOOK NAME:</label>
      <input type="text" class="form-control" value="${books.bookName}" id="book" placeholder="Enter Book Name" name="book">
    </div>
    <div class="form-group">
      <label for="author">AUTHOR NAME:</label>
      <input type="text" class="form-control" value="${books.author}" id="author" placeholder="Enter Author Name" name="author">
    </div>
    <div class="form-group">
      <label for="date">PURCHASE DATE:</label>
      <input type="text" class="form-control" value="${books.purchaseDate}" id="date" placeholder="Enter Date" name="date">
    </div>
    <button type="submit" class="btn btn-default">UPDATE</button>
  </form>
</div>
  
  </c:when>
  </c:choose>

  </div>

</body>
</html>
