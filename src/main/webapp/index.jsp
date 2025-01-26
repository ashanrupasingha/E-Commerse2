<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="lk.ijse.DTO.ProductDTO" %>
<%@ page import="java.util.List" %>

<%
    String alertType = (String) request.getAttribute("alertType");
    String alertMessage = (String) request.getAttribute("alertMessage");
    List<ProductDTO> dataList = (List<ProductDTO>) request.getAttribute("homeProducts");
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>iMovies - The Movie Experience</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/styles.css">
    <style>
        body {
            background-color: #000;
            color: #fff;
        }
        .hero {
            background: url('photos/homepagebackgroundphoto.webp') no-repeat center center/cover;
            min-height: 80vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .movie-card {
            background: #111;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
            transition: transform 0.3s ease;
        }
        .movie-card:hover {
            transform: scale(1.05);
        }
        .movie-info {
            padding: 15px;
        }
    </style>
</head>

<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">iMovies</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="${pageContext.request.contextPath}/loadAllProducts">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="tranding.jsp">Trending</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="mylist.jsp">My List</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<section class="hero text-center text-white py-5">
    <div class="container">
        <h1 class="display-4">The Little Mermaid</h1>
        <p>2023 | PG | 2h 14min | Romance</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        <div class="d-flex justify-content-center gap-3">
            <a href="admin.jsp" class="btn btn-danger px-4 py-2">Watch Now</a>
            <a href="mylist.jsp" class="btn btn-outline-light px-4 py-2">My List</a>
        </div>
    </div>
</section>

<!-- Alert Messages -->
<% if (alertMessage != null) { %>
<div class="container">
    <div class="alert alert-<%= alertType %>" role="alert">
        <%= alertMessage %>
    </div>
</div>
<% } %>

<!-- Movies Section -->
<div class="container my-5">
    <h2 class="section-title text-center text-warning mb-4">Trending Movies</h2>
    <div class="row g-4">
        <% if (dataList != null && !dataList.isEmpty()) { %>
        <% for (ProductDTO productDTO : dataList) { %>
        <div class="col-md-3">
            <div class="movie-card">
                <img src="photos/<%= productDTO.getImagePath() %>" alt="Movie Poster" class="img-fluid">
                <div class="movie-info text-center">
                    <h5 class="text-warning"><%= productDTO.getName() %></h5>
                    <p><%= productDTO.getDescription() %></p>
                    <p>$<%= productDTO.getPrice() %></p>
                </div>
            </div>
        </div>
        <% } %>
        <% } else { %>
        <div class="col-12 text-center">
            <p class="text-muted">No movies available at the moment.</p>
        </div>
        <% } %>
    </div>
</div>

<!-- Footer -->
<footer class="bg-dark text-white text-center p-4">
    <p>&copy; 2025 iMovies. All Rights Reserved.</p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
