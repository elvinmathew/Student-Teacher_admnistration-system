<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student & Teacher Administration System</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        h1 {
            color: #333;
            padding: 20px 0;
            margin-bottom: 30px;
            font-size: 2em;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
            animation: fadeInUp 1s ease-out;
        }

        button {
            display: block;
            width: 60%;
            margin: 10px auto;
            padding: 15px 30px;
            background-color: #2196f3;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1.2em;
            transition: background-color 0.3s ease, transform 0.3s ease;
            animation: slideIn 1s ease-out;
        }

        button:hover {
            background-color: #0d47a1;
            transform: scale(1.05);
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .nav-button {
            position: fixed;
            top: 20px;
            right: 20px;
            background-color: #2196f3;
            color: #fff;
            padding: 10px 20px;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            z-index: 9999;
        }

        .nav-button a {
            color: #fff;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <nav class="nav-button">
        <a href="http://localhost:8080/login">Logout</a>
    </nav>

    <h1>STUDENT & TEACHER ADMINISTRATION SYSTEM</h1>
    <button onclick="insertStud()">Add Student Details</button>
    <button onclick="dltStud()">Delete Student</button>
    <button onclick="updtStud()">Update Student and Marksheet Details</button>
    <button onclick="dispTeach()">View Faculty</button>
    <button onclick="dispMkt()">Display Marksheet</button>
    <button onclick="updtFac()">Update Faculty</button>

    <script>
        function insertStud() {
            window.location.href = "/insert";
        }

        function dltStud() {
            window.location.href = "/dltstudaskid";
        }

        function updtStud() {
            window.location.href = "/updatestudent";
        }

        function dispMkt() {
            window.location.href = "/askid";
        }

        function dispTeach() {
            window.location.href = "/asktid";
        }

        function updtFac() {
            window.location.href = "/updatefaculty";
        }
    </script>
</body>
</html>
