<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .sidebar {
            height: 100vh;
            background-color: #343a40;
            color: white;
            position: fixed;
            width: 250px;
        }

        .sidebar a {
            color: white;
            text-decoration: none;
            padding: 15px 20px;
            display: block;
        }

        .sidebar a:hover {
            background-color: #495057;
        }

        .sidebar .active {
            background-color: #007bff;
        }

        .content {
            margin-left: 250px;
            padding: 20px;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            transition: all 0.3s ease-in-out;
        }
    </style>
</head>

<body>
<!-- Sidebar -->
<div class="sidebar d-flex flex-column">
    <h3 class="p-3 text-center border-bottom">Admin Dashboard</h3>
    <a href="index.jsp">Logout</a>
</div>

<!-- Main Content -->
<div class="content">
    <h1 class="mb-4">Welcome, Admin!</h1>

    <!-- Product Management -->
    <section id="products" class="mb-5"></section>
        <h3 class="mb-3">Product Management</h3>
        <div class="row g-3">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">Add,delete,update Product</h5>
                        <a href="product_add,delete,update.jsp" class="btn btn-primary">Go</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">View Products</h5>
                        <a href="view_products.jsp" class="btn btn-success">Go</a>
                    </div>
                </div>
            </div>






    <!-- Category Management -->
    <section id="categories" class="mb-5">
        <h3 class="mb-3">Category Management</h3>
        <div class="row g-3">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">Add,delete,update Category</h5>
                        <a href="admic_add,delete,update_catogry.jsp" class="btn btn-primary">Go</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">View Categories</h5>
                        <a href="${pageContext.request.contextPath}/category-List" class="btn btn-success">Go</a>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <!-- Order Management -->
    <section id="orders" class="mb-5">
        <h3 class="mb-3">Order Management</h3>
        <div class="row g-3">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">View Orders</h5>
                        <a href="ordersee.jsp" class="btn btn-success">Go</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- User Management -->
    <section id="users">
        <h3 class="mb-3">User Management</h3>
        <div class="row g-3">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">View Users</h5>
                        <a href="CategoryList.jsp" class="btn btn-success">Go</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">Activate/Deactivate Users</h5>
                        <a href="UserDelete.jsp" class="btn btn-warning">Go</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
