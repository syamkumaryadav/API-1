<html xmlns:th="http://www.thymeleaf.org">
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <meta charset="UTF-8">
    <title>Edit Profile</title>
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 500px;
            margin-top: 50px;
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            font-size: 28px;
            margin-bottom: 20px;
            color: #495057;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-control {
            border-radius: 5px;
            border: 1px solid #ced4da;
            padding: 10px;
        }
        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 0 0.2rem rgba(38, 143, 255, 0.25);
        }
        .btn-primary {
            background-color: #007bff;
            border-radius: 5px;
            padding: 10px;
            border: none;
            width: 100%;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Edit Profile</h1>
        <form th:action="updateUser" method="post">
        <input type="hidden"  class="form-control" required name="password" value="${userdetails.password}" placeholder="e.g. John">
        
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" id="firstName" class="form-control" required name="firstName" value="${userdetails.firstName}" placeholder="e.g. John">
            </div>

            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" id="lastName" class="form-control" required name="lastName" value="${userdetails.lastName}" placeholder="e.g. Doe">
            </div>

            <div class="form-group">
                <label for="mobileNo">Mobile No:</label>
                <input type="tel" id="mobileNo" class="form-control" required name="mobileNo" pattern="[0-9]{10}" value="${userdetails.mobileNo}" placeholder="e.g. 1234567890">
            </div>

            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" class="form-control" required name="address" value="${userdetails.address}" placeholder="e.g. 123 Main St, City, Country">
            </div>

            <div class="form-group">
                <label for="dateOfBirth">Date of Birth:</label>
                <input type="date" id="dateOfBirth" class="form-control" required name="dateOfBirth" value="${formattedDate}">
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary">Save Changes</button>
            </div>
        </form>
    </div>
</body>
</html>
