<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>iMovies - The Movie Experience</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Additional CSS for 3D Animations -->
    <style>
        body {
            background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)),
            url('https://via.placeholder.com/1920x1080') no-repeat center center fixed;
            background-size: cover;
            color: white;
            overflow-x: hidden;
        }

        .hero {
            padding: 5rem 2rem;
            text-align: center;
            animation: fadeIn 2s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .hero h1 {
            font-size: 4rem;
            text-shadow: 2px 2px 10px #000;
        }

        .hero p {
            font-size: 1.2rem;
        }

        .btn-custom {
            background-color: #ff5c5c;
            color: white;
            border: none;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .btn-custom:hover {
            transform: scale(1.1);
            box-shadow: 0 4px 20px rgba(255, 92, 92, 0.5);
        }

        /* Movie Card 3D Hover Effect */
        .movie-card {
            background: rgba(0, 0, 0, 0.6);
            border-radius: 10px;
            overflow: hidden;
            perspective: 1000px;
            transition: transform 0.5s ease;
            transform-style: preserve-3d;
        }

        .movie-card:hover {
            transform: rotateY(10deg) scale(1.05);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.5);
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
            color: #ffc107;
        }

        /* Section Separator with Glow Effect */
        .section-title {
            text-align: center;
            margin-bottom: 2rem;
            text-shadow: 0 0 20px rgba(255, 255, 255, 0.5);
        }

        .section-title::after {
            content: "";
            display: block;
            width: 80px;
            height: 4px;
            background: #ffc107;
            margin: 0.5rem auto;
            border-radius: 2px;
            animation: glow 1.5s infinite alternate;
        }

        @keyframes glow {
            from {
                box-shadow: 0 0 10px rgba(255, 193, 7, 0.8);
            }
            to {
                box-shadow: 0 0 20px rgba(255, 193, 7, 1);
            }
        }

        footer {
            text-align: center;
            margin-top: 3rem;
            padding: 1rem;
            background: rgba(0, 0, 0, 0.8);
        }
       body{
           background-image: url(photos/homepagebackgroundphoto.webp);
           background-size: cover;
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
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
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
<section class="hero">
    <div class="container">
        <h1 class="display-4">The Little Mermaid</h1>
        <p>2023 | PG | 2h 14min | Romance</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla commodo felis in lacinia auctor.</p>
        <div class="d-flex justify-content-center gap-3">
            <button class="btn btn-custom px-4 py-2">Watch Now</button>
            <button class="btn btn-outline-light px-4 py-2">+ My List</button>
        </div>
    </div>
</section>

<!-- Movies Section -->
<div class="container my-5">
    <h2 class="section-title">Trending Movies</h2>
    <div class="row g-4">
        <!-- Card 1 -->
        <div class="col-md-3">
            <div class="movie-card">
                <img src="photos/the%20littlemarmed.jpg" alt="Movie Poster">
                <div class="movie-info">
                    <h5>The Little Mermaid</h5>
                    <p>2023 | PG | 2h 14min</p>
                </div>
            </div>
        </div>
        <!-- Card 2 -->
        <div class="col-md-3">
            <div class="movie-card">
                <img src="photos/tank.jpg" alt="Movie Poster">
                <div class="movie-info">
                    <h5>Tank</h5>
                    <p>2023 | PG-13 | 1h 55min</p>
                </div>
            </div>
        </div>
        <!-- Card 3 -->
        <div class="col-md-3">
            <div class="movie-card">
                <img src="photos/45.jpg" alt="Movie Poster">
                <div class="movie-info">
                    <h5>45</h5>
                    <p>2023 | R | 2h 20min</p>
                </div>
            </div>
        </div>
        <!-- Card 4 -->
        <div class="col-md-3">
            <div class="movie-card">
                <img src="photos/noha.jpg" alt="Movie Poster">
                <div class="movie-info">
                    <h5>Noah Driver</h5>
                    <p>2023 | PG | 1h 45min</p>
                </div>
            </div>
        </div>
    </div>
</div>
<img  id="background" src="photos/homepage%20background%20photo.webp">

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
