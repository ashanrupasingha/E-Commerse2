<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Categories</title>
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

        .btn-edit {
            color: #ffffff;
            background-color: #ffc107;
        }

        .btn-delete {
            color: #ffffff;
            background-color: #dc3545;
        }
        .btn-update {
            color: #ffffff;
            background-color: #17a2b8;
        }
    </style>
</head>

<body>
<div class="container mt-5">
    <h1 class="mb-4 text-center">Manage Categories</h1>

    <!-- Add Category Form -->
    <div class="form-container mb-5">
        <h3>Add New Category</h3>
        <form action="AddCategoryServlet" method="POST">
            <div class="mb-3">
                <label for="categoryName" class="form-label">Category Name</label>
                <input type="text" class="form-control" id="categoryName" name="categoryName" placeholder="Enter category name" required>
            </div>
            <button type="submit" class="btn btn-primary">Add Category</button>
            <button class="btn btn-update" onclick="location.href='UpdateCategoryServlet'">Update Category</button>
        </form>
    </div>

    <!-- Category List -->
    <div class="table-container">
        <h3>Existing Categories</h3>
        <table class="table table-bordered">
            <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Category Name</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <!-- Sample data for demonstration, replace with dynamic JSP code -->
            <%
                // Example of fetching categories from database
                // Assume 'categories' is a list of category objects fetched in a servlet
                /*
                List<Category> categories = (List<Category>) request.getAttribute("categories");
                for (Category category : categories) {
            */
            %>
            <tr>
                <td>1</td>
                <td>Electronics</td>
                <td>
                    <a href="UpdateCategoryServlet?id=1" class="btn btn-sm btn-edit">Edit</a>
                    <a href="DeleteCategoryServlet?id=1" class="btn btn-sm btn-delete" onclick="return confirm('Are you sure you want to delete this category?');">Delete</a>
                </td>
            </tr>
            <tr>
                <td>2</td>
                <td>Fashion</td>
                <td>
                    <a href="UpdateCategoryServlet?id=2" class="btn btn-sm btn-edit">Edit</a>
                    <a href="DeleteCategoryServlet?id=2" class="btn btn-sm btn-delete" onclick="return confirm('Are you sure you want to delete this category?');">Delete</a>
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
