<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Order</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .order-details {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .back-btn {
            margin-top: 20px;
        }
    </style>
</head>

<body>
<div class="container mt-5">
    <h1 class="mb-4 text-center">View Order</h1>

    <!-- Order Details -->
    <div class="order-details">
        <h3>Order #12345</h3>
        <p><strong>Customer Name:</strong> John Doe</p>
        <p><strong>Order Date:</strong> 2025-01-19</p>
        <p><strong>Status:</strong> Shipped</p>

        <h4>Items:</h4>
        <ul>
            <li>Product 1 - $10.00</li>
            <li>Product 2 - $20.00</li>
            <li>Product 3 - $15.00</li>
        </ul>
        <p><strong>Total:</strong> $45.00</p>

        <h4>Shipping Address:</h4>
        <p>123 Main St, Springfield, IL, 62701</p>
    </div>

    <!-- Back Button -->
    <div class="back-btn text-center">
        <a href="ordersPage.html" class="btn btn-secondary">Back to Orders</a>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
