<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Products</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f4f4;
        }
        .form-container, .table-container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }
        .btn-delete {
            color: #ffffff;
            background-color: #dc3545;
        }
        .img-thumbnail {
            width: 80px;
            height: 80px;
            object-fit: cover;
        }
    </style>
</head>
<body>
<div class="container py-5">
    <h1 class="text-center mb-5">Manage Products</h1>

    <!-- Add Product Form -->
    <div class="form-container mb-5">
        <h3 class="mb-4">Add New Product</h3>
        <form action="ProductAddServlet" method="post" enctype="multipart/form-data">
            <div class="row g-3">
                <div class="col-md-6">
                    <label for="productId" class="form-label">Product ID</label>
                    <input type="number" class="form-control" id="productID" name="productID" placeholder="Enter product ID" required>
                </div>
                <div class="col-md-6">
                    <label for="productName" class="form-label">Product Name</label>
                    <input type="text" class="form-control" id="productName" name="productName" placeholder="Enter product name" required>
                </div>
                <div class="col-md-6">
                    <label for="categoryId" class="form-label">Category ID</label>
                    <input type="number" class="form-control" id="categoryId" name="categoryId" placeholder="Enter category ID" required>
                </div>
                <div class="col-md-12">
                    <label for="productDescription" class="form-label">Product Description</label>
                    <textarea class="form-control" id="productDescription" name="productDescription" rows="3" placeholder="Enter product description" required></textarea>
                </div>
                <div class="col-md-6">
                    <label for="productPrice" class="form-label">Price</label>
                    <input type="number" class="form-control" id="productPrice" name="price" placeholder="Enter product price" required>
                </div>
                <div class="col-md-6">
                    <label for="productImage" class="form-label">Product Image</label>
                    <input type="file" class="form-control" id="productImage" name="productImage" accept="image/*" required>
                </div>
                <div class="col-md-12 text-center">
                    <button type="submit" class="btn btn-primary">Add Product</button>
                </div>
            </div>
        </form>
    </div>

    <!-- Search Product -->
    <div class="form-container mb-5">
        <h3 class="mb-4">Search Products</h3>
        <form action="SearchProductServlet" method="GET">
            <div class="input-group">
                <input type="text" class="form-control" id="searchQuery" name="searchQuery" placeholder="Enter product name to search" required>
                <button type="submit" class="btn btn-secondary">Search</button>
            </div>
        </form>
    </div>

    <!-- Product List -->
    <div class="table-container">
        <h3 class="mb-4">Existing Products</h3>
        <div class="table-responsive">
            <table class="table table-striped table-hover">
                <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Image</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Category</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <%-- Example dynamic data, replace with JSP logic --%>
                <tr>
                    <td>1</td>
                    <td><img src="uploads/product1.jpg" class="img-thumbnail" alt="Product 1"></td>
                    <td>Sample Product</td>
                    <td>This is a sample product description.</td>
                    <td>Sample Category</td>
                    <td>
                        <a <%--href="DeleteProductServlet?id=1"--%> class="btn btn-sm btn-delete" onclick="return confirm('Are you sure you want to delete this product?');">Delete</a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
