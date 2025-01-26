<%@ page import="lk.ijse.DTO.CategoryDTO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String alertType = (String) request.getAttribute("alertType");
    String alertMessage = (String) request.getAttribute("alertMessage");
    List<CategoryDTO> dataList = (List<CategoryDTO>) request.getAttribute("categories");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
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
<div class="sidebar d-flex flex-column bg-dark text-white p-3" style="height: 100vh; width: 250px; position: fixed;">
    <h3 class="text-center border-bottom pb-3">Admin Dashboard</h3>
    <a href="adminDashBoard.jsp" class="text-white text-decoration-none py-2">Dashboard</a>
</div>

<div class="content">
    <h1 class="mb-4">Category Management</h1>
    <% if (dataList != null && !dataList.isEmpty()) { %>
    <div class="table-responsive bg-light p-4 shadow rounded">
        <table class="table table-striped table-bordered">
            <thead class="table-dark">
            <tr>
                <th>#</th>
                <th>Category</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <% for (CategoryDTO categoryDTO : dataList) { %>
            <tr>
                <td><%= categoryDTO.getCategoryId() %></td>
                <td><%= categoryDTO.getName() %></td>
                <td>
                    <button class="btn btn-warning btn-sm" onclick="editCategory(<%= categoryDTO.getCategoryId() %>, '<%= categoryDTO.getName() %>')">
                        Edit
                    </button>
                    <button class="btn btn-danger btn-sm" onclick="deleteCategory(<%= categoryDTO.getCategoryId() %>)">
                        Delete
                    </button>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>
    <% } else { %>
    <p class="text-muted text-center">No categories found.</p>
    <% } %>

    <a href="adminDashBoard.jsp" class="btn btn-primary mt-3">Back to Dashboard</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>

</script>
</body>
</html>
