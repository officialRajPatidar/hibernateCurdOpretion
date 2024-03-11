<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>

<%@include file="/jsp/bootstraplinks.jsp" %>
</head>
<body>
<div class="container">
<%@include file="/jsp/header.jsp" %>

<h1>Please fill your note detail</h1>
<br>
<% String suss = (String)request.getAttribute("suc"); %>
<font style="color: green; text-align: center;"><%=(suss!=null)? suss:""%>
</font>
<form action="SaveNoteServlate"  method="post">
  <div class="form-group">
    <label for="litle">Note title</label>
    <input name = "title" type="text"  required  class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter title here..">
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
 
 <textarea name="content" required  id ="content" class="form-control" placeholder="enter your content" style="height: 300px;"></textarea>
  </div>
  <div class="container text-center" >
  <button type="submit" class="btn btn-primary">Add</button>
</div>
</form>
<%@include file="/jsp/footer.jsp" %>

</div>
</body>
</html>