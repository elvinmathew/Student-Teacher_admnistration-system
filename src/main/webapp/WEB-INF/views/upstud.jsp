<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .container {
            animation: fadeInUp 1s ease-out;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin: auto;
            width: 60%;
        }

        h3 {
            color: #333;
            font-size: 1.5em;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
            animation: fadeInUp 1s ease-out;
            margin-bottom: 20px;
        }

        form {
            animation: slideIn 1s ease-out;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            align-items:left ;
        }

        label {
            margin-bottom: 8px;
            color: #333;
            font-size: 1.2em;
        }

        input {
            width: 80%;
            margin: 10px;
            padding: 10px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn {
            margin-top: 20px;
            padding: 15px 30px;
            background-color: #2196f3;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1.2em;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .btn:hover {
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

        /* Added CSS for nav button */
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

    <div class="container mt-5">
        <h3 class="text-center">Update Student Details</h3>
        <form action="newstudentdetails" method="post" class="form-group">
            <div>
                <label for="s_id">Student Id</label>
                <input type="number" name="s_id" placeholder="Enter Student Id" required>
            </div>

            <div>
                <label for="s_name">Name</label>
                <input type="text" name="s_name" placeholder="Enter Name" required>
            </div>

            <div>
                <label for="s_age">Age</label>
                <input type="number" name="s_age" placeholder="Enter Age" required>
            </div>

            <div>
                <label for="standard">Standard</label>
                <input type="number" name="s_std" placeholder="Enter Standard" required>
            </div>

            <div>
                <label for="physics">Physics</label>
                <input type="number" name="Physics" placeholder="Enter Physics Marks" required>
            </div>

            <div>
                <label for="chemistry">Chemistry</label>
                <input type="number" name="Chemistry" placeholder="Enter Chemistry Marks" required>
            </div>

            <div>
                <label for="maths">Mathematics</label>
                <input type="number" name="Mathematics" placeholder="Enter Maths Marks" required>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-success">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>
