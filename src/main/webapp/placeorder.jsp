<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Place Order - iMovies</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        /* Background and Font Customizations */
        body {
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0.9), rgba(25, 25, 25, 1)),
            url('https://via.placeholder.com/1920x1080') no-repeat center center fixed;
            background-size: cover;
            color: white;
            font-family: 'Poppins', sans-serif;
        }

        .navbar {
            background-color: rgba(0, 0, 0, 0.8);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }

        /* Title Section */
        .order-section h2 {
            font-size: 3rem;
            text-transform: uppercase;
            font-weight: bold;
            background: linear-gradient(90deg, #ff8a00, #e52e71);
            -webkit-background-clip: text;
            color: transparent;
            text-align: center;
            margin-bottom: 1.5rem;
        }

        /* Product Cards Styling */
        .product-card {
            background: rgba(0, 0, 0, 0.8);
            border-radius: 15px;
            padding: 1.5rem;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.6);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(255, 193, 7, 0.5);
        }

        .product-card img {
            width: 100%;
            border-radius: 10px;
        }

        .product-info h5 {
            color: #ffcc00;
        }

        .product-info p {
            color: #ddd;
        }

        .quantity-input {
            max-width: 80px;
            text-align: center;
            font-size: 1.2rem;
        }

        .btn-remove, .btn-order {
            width: 100%;
            border-radius: 10px;
            font-size: 1.2rem;
            padding: 0.8rem;
        }

        .btn-remove {
            background-color: #e52e71;
            color: white;
        }

        .btn-remove:hover {
            background-color: #ff2f92;
        }

        .btn-order {
            background-color: #28a745;
            color: white;
        }

        .btn-order:hover {
            background-color: #218838;
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
    </style>
</head>

<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">iMovies</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="trending.jsp">Trending</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#">Place Order</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Place Order Section -->
<div class="container order-section">
    <h2>Place Your Order</h2>
    <div class="row g-4">
        <!-- Product 1 -->
        <div class="col-md-4">
            <div class="product-card text-center">
                <img src="photos/movie1.jpg" alt="Movie Poster">
                <div class="product-info mt-3">
                    <h5>The Covenant</h5>
                    <p>Price: $9.99</p>
                </div>
                <button class="btn btn-remove mt-3">Remove</button>
            </div>
        </div>

        <!-- Product 2 -->
        <div class="col-md-4">
            <div class="product-card text-center">
                <img src="photos/movie2.jpg" alt="Movie Poster">
                <div class="product-info mt-3">
                    <h5>65</h5>
                    <p>Price: $10.99</p>
                </div>
                <button class="btn btn-remove mt-3">Remove</button>
            </div>
        </div>

        <!-- Product 3 -->
        <div class="col-md-4">
            <div class="product-card text-center">
                <img src="photos/movie3.jpg" alt="Movie Poster">
                <div class="product-info mt-3">
                    <h5>The Little Mermaid</h5>
                    <p>Price: $15.75</p>
                </div>
                <button class="btn btn-remove mt-3">Remove</button>
            </div>
        </div>
    </div>

    <!-- Order Summary -->
    <div class="mt-5 text-center">
        <h3>Total: <span class="text-warning">$110.98</span></h3>
        <button class="btn btn-order mt-3">Place Order</button>
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
