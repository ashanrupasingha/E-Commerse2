<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Orders</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .table-container {
            margin-top: 20px;
        }

        .btn-view {
            color: #ffffff;
            background-color: #17a2b8;
        }

        .btn-back {
            margin-top: 20px;
        }
    </style>
</head>

<body>
<div class="container mt-5">
    <h1 class="mb-4 text-center">View Orders</h1>

    <!-- Orders Table -->
    <div class="table-container">
        <h3>All Orders</h3>
        <table class="table table-bordered">
            <thead class="table-dark">
            <tr>
                <th>Order ID</th>
                <th>Customer Name</th>
                <th>Order Date</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <!-- Sample data for demonstration, replace with dynamic JSP code -->
            <tr>
                <td>12345</td>
                <td>John Doe</td>
                <td>2025-01-19</td>
                <td>Shipped</td>
                <td>
                    <a href="ViewOrderDetailsServlet?id=12345" class="btn btn-sm btn-view">View</a>
                </td>
            </tr>
            <tr>
                <td>12346</td>
                <td>Jane Smith</td>
                <td>2025-01-18</td>
                <td>Processing</td>
                <td>
                    <a href="ViewOrderDetailsServlet?id=12346" class="btn btn-sm btn-view">View</a>
                </td>
            </tr>
            <tr>
                <td>12347</td>
                <td>Sam Wilson</td>
                <td>2025-01-17</td>
                <td>Delivered</td>
                <td>
                    <a href="ViewOrderDetailsServlet?id=12347" class="btn btn-sm btn-view">View</a>
                </td>
            </tr>
            <!-- Add more rows here based on the dynamic order list -->
            </tbody>
        </table>
    </div>

    <!-- Back Button -->
    <div class="back-btn text-center">
        <a href="admin.jsp" class="btn btn-secondary">Back to Menu</a>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
