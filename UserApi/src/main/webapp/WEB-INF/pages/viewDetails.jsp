<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
        }

        .profile-container {
            max-width: 400px;
            margin: 40px auto;
            background: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .profile-photo {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            border: 4px solid #007bff;
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .profile-photo:hover {
            transform: scale(1.1);
        }

        .profile-header h2 {
            font-size: 28px;
            color: #333;
        }

        .profile-header p {
            font-size: 16px;
            color: #777;
        }

        .profile-details {
            margin-bottom: 20px;
        }

        .profile-details p {
            font-size: 16px;
            margin: 8px 0;
            color: #555;
        }

        .profile-details strong {
            color: #333;
        }

        .edit-button, .signout-button {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 8px;
            border: none;
            transition: background-color 0.3s ease;
            margin-bottom: 15px;
        }

        .edit-button {
            background-color: #007bff;
            color: white;
        }

        .edit-button:hover {
            background-color: #0056b3;
        }

        .signout-button {
            background-color: #f44336;
            color: white;
        }

        .signout-button:hover {
            background-color: #d32f2f;
        }

        .signout-button a {
            text-decoration: none;
            color: white;
        }

        input[type="file"] {
            display: none;
        }

        @media (max-width: 600px) {
            .profile-container {
                width: 90%;
                padding: 20px;
            }

            .profile-photo {
                width: 100px;
                height: 100px;
            }
        }

    </style>
</head>
<body>
    <div class="profile-container">
      ${update}
        <div class="profile-header">
            <%-- <img src="https://scontent.fhyd2-2.fna.fbcdn.net/v/t39.30808-6/415952502_899707051679863_7705409402067089977_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=NZCij5FW2Q4Q7kNvgGCOUdn&_nc_zt=23&_nc_ht=scontent.fhyd2-2.fna&_nc_gid=AVa_a8DhTeZDXfFmpCnnQYh&oh=00_AYAvwZnaPbVJ2LeTJ4hUeYqMNqDCycmj92-gVR_IAioeAA&oe=674F3A99" alt="Profile Photo" class="profile-photo" id="profileImage" onclick="document.getElementById('fileInput').click();"> --%>
               <h2>${details.firstName} ${details.lastName}</h2>
        </div>

        <input type="file" id="fileInput" onchange="changeProfileImage(event)" accept="image/*">

        <div class="profile-details">
            <p><strong>Email:</strong> ${details.email}</p>
            <p><strong>Address:</strong> ${details.address}</p>
            <p><strong>Phone:</strong> ${details.mobileNo}</p>
            <p><strong>Date Of Birth:</strong> ${details.dateOfBirth}</p>
        </div>

        <button class="edit-button"><a href="updateUser?email=${details.email}">Edit Profile</a></button>
        <button class="edit-button"><a href="home">Home</a></button>
        <button class="signout-button">
            <a href='/logout' class="nav-link">Sign Out</a>
        </button>
    </div>

    <script>
        function changeProfileImage(event) {
            const file = event.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    document.getElementById('profileImage').src = e.target.result;
                };
                reader.readAsDataURL(file);
            }
        }
    </script>

</body>
</html>
