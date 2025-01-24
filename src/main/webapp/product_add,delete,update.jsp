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
            background-color: #f8f9fa;
        }

        .form-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .table-container {
            margin-top: 20px;
        }

        .btn-delete {
            color: #ffffff;
            background-color: #dc3545;
        }

        .img-thumbnail {
            width: 100px;
            height: 100px;
            object-fit: cover;
        }
    </style>
</head>

<body>
<div class="container mt-5">
    <h1 class="mb-4 text-center">Manage Products</h1>

    <!-- Add Product Form -->
    <div class="form-container mb-5">
        <h3>Add New Product</h3>
        <form action="AddProductServlet" method="POST" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="productName" class="form-label">Product Name</label>
                <input type="text" class="form-control" id="productName" name="productName" placeholder="Enter product name" required>
            </div>
            <div class="mb-3">
                <label for="productDescription" class="form-label">Product Description</label>
                <textarea class="form-control" id="productDescription" name="productDescription" rows="3" placeholder="Enter product description" required></textarea>
            </div>
            <div class="mb-3">
                <label for="category" class="form-label">Category</label>
                <select class="form-control" id="category" name="category" required>
                    <option value="" disabled selected>Select Category</option>
                    <%
                        // Fetch categories dynamically
                        /*
                        List<Category> categories = (List<Category>) request.getAttribute("categories");
                        for (Category category : categories) {
                    */
                    %>
                    <option value="1">Sample Category</option>
                    <%
                        // Close loop
                        // }
                    %>
                </select>
            </div>
            <div class="mb-3">
                <label for="productImage" class="form-label">Product Image</label>
                <input type="file" class="form-control" id="productImage" name="productImage" accept="image/*" required>
            </div>
            <button type="submit" class="btn btn-primary">Add Product</button>
        </form>
    </div>

    <!-- Search Product -->
    <div class="form-container mb-5">
        <h3>Search Products</h3>
        <form action="SearchProductServlet" method="GET">
            <div class="mb-3">
                <label for="searchQuery" class="form-label">Product Name</label>
                <input type="text" class="form-control" id="searchQuery" name="searchQuery" placeholder="Enter product name to search" required>
            </div>
            <button type="submit" class="btn btn-secondary">Search</button>
        </form>
    </div>

    <!-- Product List -->
    <div class="table-container">
        <h3>Existing Products</h3>
        <table class="table table-bordered">
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
            <!-- Example dynamic data, replace with JSP logic -->
            <%
                // Example of fetching products or search results from database
                /*
                List<Product> products = (List<Product>) request.getAttribute("products");
                for (Product product : products) {
            */
            %>
            <tr>
                <td>1</td>
                <td><img src="uploads/product1.jpg" class="img-thumbnail" alt="Product 1"></td>
                <td>Sample Product</td>
                <td>This is a sample product description.</td>
                <td>Sample Category</td>
                <td>
                    <a href="DeleteProductServlet?id=1" class="btn btn-sm btn-delete" onclick="return confirm('Are you sure you want to delete this product?');">Delete</a>
                </td>
            </tr>
            <%
                // Close loop here
                // }
            %>
            </tbody>
        </table>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
