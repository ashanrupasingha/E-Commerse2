<%@ page import="lk.ijse.DTO.CategoryDTO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

        .category-card {
            background-color: #fff;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease-in-out;
            text-align: center;
        }

        .category-card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .btn-delete {
            background-color: #dc3545;
            color: #ffffff;
            border: none;
            padding: 10px 15px;
            border-radius: 8px;
            transition: background 0.3s ease;
        }

        .btn-delete:hover {
            background-color: #c82333;
        }

        .btn-update {
            background-color: #17a2b8;
            color: #ffffff;
            border: none;
            padding: 10px 15px;
            border-radius: 8px;
            transition: background 0.3s ease;
        }

        .btn-update:hover {
            background-color: #138496;
        }
    </style>
</head>

<body>
<div class="container mt-5">
    <h1 class="mb-4 text-center">Manage Categories</h1>

    <!-- Add Category Form -->
    <div class="form-container mb-5">
        <h3>Add New Category</h3>
        <form action="CategoryServlet" method="post">
            <div class="mb-3">
                <label for="categoryId" class="form-label">Category ID</label>
                <input type="number" class="form-control" id="categoryId" name="categoryId">
            </div>
            <div class="mb-3">
                <label for="categoryName" class="form-label">Category Name</label>
                <input type="text" class="form-control" id="categoryName" name="categoryName" placeholder="Enter category name" required>
            </div>
            <button type="submit" class="btn btn-success px-4" onclick="setAction('add')">Add</button>
            <button type="button" class="btn btn-update" onclick="location.href='UpdateCategoryServlet'">Update Category</button>
        </form>
    </div>

    <!-- Category List (Replaced Table with Cards) -->
    <div class="row">
        <%
            List<CategoryDTO> categories = (List<CategoryDTO>) request.getAttribute("categories");
            if (categories != null && !categories.isEmpty()) {
                for (CategoryDTO category : categories) {
        %>
        <div class="col-md-4 mb-4">
            <div class="category-card">
                <h5 class="mb-3"><%= category.getName() %></h5>
                <button class="btn-delete" onclick="deleteCategory(<%= category.getCategoryId() %>)">Delete</button>
            </div>
        </div>
        <%
            }
        } else {
        %>
        <%
            }
        %>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
    function deleteCategory(categoryId) {
        Swal.fire({
            title: 'Are you sure?',
            text: "Do you really want to delete this category?",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#d33',
            cancelButtonColor: '#6c757d',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                fetch('DeleteCategoryServlet?id=' + categoryId, {
                    method: 'POST'
                }).then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            Swal.fire(
                                'Deleted!',
                                'Category has been removed.',
                                'success'
                            ).then(() => window.location.reload());
                        } else {
                            Swal.fire(
                                'Error!',
                                'Could not delete category.',
                                'error'
                            );
                        }
                    }).catch(error => {
                    Swal.fire(
                        'Error!',
                        'An unexpected error occurred.',
                        'error'
                    );
                });
            }
        });
    }
</script>
</body>
</html>
