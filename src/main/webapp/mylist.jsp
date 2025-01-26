<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>My List - iMovies</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        /* Background and Font Customizations */
        body {
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0.9), rgba(25, 25, 25, 1)), url('https://via.placeholder.com/1920x1080') no-repeat center center fixed;
            background-size: cover;
            color: white;
            font-family: 'Poppins', sans-serif;
        }

        .navbar {
            background-color: rgba(0, 0, 0, 0.8);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }

        /* Title Section */
        .movie-list h2 {
            font-size: 3rem;
            text-transform: uppercase;
            font-weight: bold;
            background: linear-gradient(90deg, #ff8a00, #e52e71);
            -webkit-background-clip: text;
            color: transparent;
        }

        /* Movie Cards Styling */
        .movie-card {
            background: rgba(0, 0, 0, 0.8);
            border-radius: 15px;
            overflow: hidden;
            position: relative;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.6);
            transform-style: preserve-3d;
            transition: transform 0.4s, box-shadow 0.4s;
        }

        .movie-card:hover {
            transform: translateY(-10px) rotateX(3deg);
            box-shadow: 0 10px 30px rgba(255, 193, 7, 0.5);
        }

        .movie-card img {
            width: 100%;
            height: auto;
        }

        .movie-info {
            padding: 1rem;
            text-align: center;
        }

        .movie-info h5 {
            color: #ffcc00;
        }

        .movie-info p {
            color: #ddd;
        }

        .action-buttons {
            text-align: center;
            margin-top: 1rem;
        }

        .btn-remove {
            background-color: #e52e71;
            color: white;
            border: none;
            padding: 0.5rem 1rem;
            border-radius: 5px;
            font-size: 1rem;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .btn-remove:hover {
            transform: scale(1.1);
            box-shadow: 0 4px 10px rgba(255, 105, 180, 0.6);
        }

        .btn-remove:active {
            transform: scale(0.95);
        }

        .btn-add {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 0.5rem 1rem;
            border-radius: 5px;
            font-size: 1rem;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            margin-left: 0.5rem;
        }

        .btn-add:hover {
            transform: scale(1.1);
            box-shadow: 0 4px 10px rgba(40, 167, 69, 0.6);
        }

        .btn-add:active {
            transform: scale(0.95);
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 1rem;
            margin-top: 2rem;
            background: rgba(0, 0, 0, 0.9);
            border-top: 1px solid rgba(255, 255, 255, 0.1);
        }

        footer p a {
            color: #ff8a00;
            text-decoration: none;
        }

        footer p a:hover {
            text-decoration: underline;
        }

        /* Animation Effect on Cards */
        .movie-card img {
            transition: transform 0.3s ease;
        }

        .movie-card:hover img {
            transform: scale(1.1);
        }

    </style>
</head>

<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">iMovies</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="tranding.jsp">Trending</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#">My List</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- My List Section -->
<div class="container movie-list">
    <h2 class="text-center mb-5">My List</h2>
    <div class="row g-4">
        <!-- Movie Card 1 -->
        <div class="col-md-3">
            <div class="movie-card">
                <img src="photos/images.jpeg" alt="Movie Poster">
                <div class="movie-info">
                    <h5>The Covenant</h5>
                    <p>2023 | War/Action | 2h 3min</p>
                </div>
                <div class="action-buttons">
                    <button class="btn btn-remove">Remove</button>
                    <button class="btn btn-add">Add to Cart</button>
                </div>
            </div>
        </div>
        <!-- Movie Card 2 -->
        <div class="col-md-3">
            <div class="movie-card">
                <img src="photos/65.jpg" alt="Movie Poster">
                <div class="movie-info">
                    <h5>65</h5>
                    <p>2023 | Sci-Fi/Thriller | 1h 55min</p>
                </div>
                <div class="action-buttons">
                    <button class="btn btn-remove">Remove</button>
                    <button class="btn btn-add">Add to Cart</button>
                </div>
            </div>
        </div>
        <!-- Movie Card 3 -->
        <div class="col-md-3">
            <div class="movie-card">
                <img src="photos/the%20littlemarmed.jpg" alt="Movie Poster">
                <div class="movie-info">
                    <h5>The Little Mermaid</h5>
                    <p>2023 | Romance/Fantasy | 2h 14min</p>
                </div>
                <div class="action-buttons">
                    <button class="btn btn-remove">Remove</button>
                    <button class="btn btn-add">Add to Cart</button>
                </div>
            </div>
        </div>
        <!-- Movie Card 4 -->
        <div class="col-md-3">
            <div class="movie-card">
                <img src="photos/shark%20attack.jpg" alt="Movie Poster">
                <div class="movie-info">
                    <h5>Shark Attack</h5>
                    <p>2023 | Horror/Action | 1h 45min</p>
                </div>
                <div class="action-buttons">
                    <button class="btn btn-remove">Remove</button>
                    <button class="btn btn-add" onclick="location.href='placeorder.jsp'">Add to Cart</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="bg-dark text-white p-4 text-center mt-auto fixed-bottom">
    <p>&copy; 2025 iMovies. All Rights Reserved.</p>
    <p>
        <a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a>
    </p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
