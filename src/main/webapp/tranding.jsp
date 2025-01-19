<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Trending Movies</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@picocss/pico@1/css/pico.min.css">
  <style>
    body {
      background-color: #121212;
      color: #fff;
      font-family: 'Arial', sans-serif;
    }

    /* Navbar Styling */
    nav {
      background: rgba(0, 0, 0, 0.9);
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
    }

    nav a {
      color: #ffcc00;
    }

    /* Hero Section */
    .hero {
      background-image: url('https://via.placeholder.com/1920x600');
      background-size: cover;
      background-position: center;
      height: 400px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      text-align: center;
    }

    .hero h1 {
      font-size: 3rem;
      font-weight: bold;
      color: #ffcc00;
      text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
    }

    .hero p {
      font-size: 1.2rem;
      color: #fff;
    }

    .hero button {
      margin-top: 1rem;
      padding: 10px 20px;
      background-color: #ff5733;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .hero button:hover {
      background-color: #ff6d47;
    }

    /* Trending Movies Section */
    .trending-section {
      margin-top: 2rem;
    }

    .movie-card {
      background: #222;
      border: 1px solid #333;
      border-radius: 8px;
      overflow: hidden;
      transition: transform 0.3s ease;
    }

    .movie-card:hover {
      transform: scale(1.05);
      box-shadow: 0px 10px 20px rgba(255, 105, 180, 0.3);
    }

    .movie-card img {
      width: 100%;
      height: 300px;
      object-fit: cover;
    }

    .movie-card h3 {
      padding: 0.8rem;
      font-size: 1.1rem;
      text-align: center;
    }

    .movie-card p {
      padding: 0 1rem 1rem 1rem;
      font-size: 0.9rem;
      color: #aaa;
      text-align: justify;
    }

    .movie-card button {
      display: block;
      margin: 10px auto 15px;
      padding: 8px 15px;
      background: #ffcc00;
      color: #000;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .movie-card button:hover {
      background: #ffaa00;
    }

    /* Footer Styling */
    footer {
      margin-top: 3rem;
      background-color: #000;
      text-align: center;
      padding: 1rem 0;
      font-size: 0.8rem;
    }

    footer a {
      color: #ffcc00;
      text-decoration: none;
    }

    footer a:hover {
      text-decoration: underline;
    }
  </style>
</head>

<body>
<!-- Navbar -->
<nav class="container-fluid">
  <ul>
    <li><strong>Trending Movies</strong></li>
  </ul>
  <ul>
    <li><a href="index.jsp">Home</a></li>
    <li><a href="#">Trending</a></li>
    <li><a href="mylist.jsp">My List</a></li>
    <li><a href="singin.jsp" role="button">Sign In</a></li>
  </ul>
</nav>

<!-- Hero Section -->
<section class="hero">
  <h1>Discover the Latest Trending Movies</h1>
  <p>Catch the most popular movies right now!</p>
  <button>Explore Now</button>
</section>

<!-- Trending Movies Section -->
<main class="container trending-section">
  <h2>Trending Now</h2>
  <div class="grid">
    <!-- Movie Card 1 -->
    <div class="movie-card">
      <img src="photos/images.jpeg" alt="Movie 1">
      <h3>The Covenant</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi commodo felis tempor augue tristique.</p>
      <button>Watch Now</button>
    </div>
    <!-- Movie Card 2 -->
    <div class="movie-card">
      <img src="photos/65.jpg" alt="Movie 2">
      <h3>65</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi commodo felis tempor augue tristique.</p>
      <button>Watch Now</button>
    </div>
    <!-- Movie Card 3 -->
    <div class="movie-card">
      <img src="photos/avator2.jpg" alt="Movie 3">
      <h3>Avatar 2</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi commodo felis tempor augue tristique.</p>
      <button>Watch Now</button>
    </div>
    <!-- Movie Card 4 -->
    <div class="movie-card">
      <img src="photos/shark%20attack.jpg" alt="Movie 4">
      <h3>Shark Attack</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi commodo felis tempor augue tristique.</p>
      <button>Watch Now</button>
    </div>
  </div>
</main>

<!-- Footer -->
<footer class="container">
  <p>&copy; 2025 MovieMania. All Rights Reserved.</p>
  <small>
    <a href="#">Privacy Policy</a> • <a href="#">Terms of Service</a>
  </small>
</footer>
</body>

</html>
