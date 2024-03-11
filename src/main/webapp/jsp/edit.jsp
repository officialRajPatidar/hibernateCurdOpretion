<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Notes</title>
    <%@include file="/jsp/bootstraplinks.jsp" %>
  
</head>
<body>
  <div class="container">
    <%@include file="/jsp/header.jsp" %>
    <h1>Edit Your Note</h1>
    <%
        int noteId = request.getParameter("note_id") != null ? Integer.parseInt(request.getParameter("note_id").trim()) : 0;

        Session s = FactoryProvider.getFactory().openSession();

        Note note = (Note)s.get(Note.class, noteId);
    %>
    <form action="UpadateServlet"  method="post">
        <div class="form-group">
            <input value="<%= note != null ? note.getId() : "" %>" type="hidden" name="noteId">
            <label for="title">Note title</label>
            <input name="title" type="text" required class="form-control" id="title" aria-describedby="emailHelp" value="<%= note != null ? note.getTitle() : "" %>">

            <label for="content">Note Content</label>
            <textarea name="content" required id="content" class="form-control" placeholder="enter your content" style="height: 300px;"><%= note != null ? note.getContent() : "" %></textarea>
        </div>
        <div class="container text-center" >
            <button type="submit" class="btn btn-success">Save your note</button>
        </div>
    </form>
    <%@include file="/jsp/footer.jsp" %>
    
  </div>
</body>
</html>
 