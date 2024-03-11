<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoteTraker</title>

<%@include file="/jsp/bootstraplinks.jsp" %>
  <style>
   body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

.container {
  max-width: 13s00px;
  margin: 0 auto;
  
}

h1 {
  text-align: center;
}

.image-container {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 20px;
}

.image-item {
  overflow: hidden;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease;
}

.image-item:hover {
  transform: scale(1.05);
}

.image-item img {
  width: 100%;
  height: auto;
  object-fit: cover;
  vertical-align: middle;
}

    </style>
</head>
<body>

<div class="container">
<%@include file="/jsp/header.jsp" %>



<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="https://source.unsplash.com/900x400/? save notes" class="d-block w-100" alt="Placeholder Image 1">
        <div class="carousel-caption">
          <h1>Welcome to NoteTaker</h1>
          <p>Start taking notes and stay organized with NoteTaker. Keep track of your tasks, ideas, and more, all in one place.</p>
          <a href="#" class="btn btn-primary btn-lg">Get Started</a>
        </div>
      </div>
      <div class="carousel-item">
        <img src="https://source.unsplash.com/900x400/? kepp notes" class="d-block w-100" alt="Placeholder Image 2">
        <div class="carousel-caption">
          <h1>Welcome to NoteTaker</h1>
          <p>Start taking notes and stay organized with NoteTaker. Keep track of your tasks, ideas, and more, all in one place.</p>
          <a href="#" class="btn btn-primary btn-lg">Get Started</a>
        </div>
      </div>
      <div class="carousel-item">
        <img src="https://source.unsplash.com/900x400/? write notes" class="d-block w-100" alt="Placeholder Image 3">
        <div class="carousel-caption">
          <h1>Welcome to NoteTaker</h1>
          <p>Start taking notes and stay organized with NoteTaker. Keep track of your tasks, ideas, and more, all in one place.</p>
          <a href="#" class="btn btn-primary btn-lg">Get Started</a>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
<%@include file="/jsp/footer.jsp" %>

</div>

</body>
</html>