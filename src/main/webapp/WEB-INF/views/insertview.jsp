<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert View</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
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

        form {
            animation: fadeInUp 1s ease-out;
            max-width: 600px;
            margin: 30px auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border: 1px solid #ccc;
        }

        div {
            display: flex;
            flex-direction: column;
            margin-bottom: 20px;
        }

        label {
            margin-bottom: 8px;
            color: #333;
            font-size: 1.2em;
            display: block;
        }

        input {
            width: 100%;
            padding: 12px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            padding: 15px 30px;
            background-color: #2196f3;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1.2em;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        button:hover {
            background-color: #0d47a1;
            transform: scale(1.05);
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
    </style>
</head>
<body>
    <nav class="nav-button">
        <a href="http://localhost:8080/login">Logout</a>
    </nav>

    <form action="saveinserted" method="post" enctype="multipart/form-data">
        <div>
            <label for="s_id">Student ID</label>
            <input type="number" name="s_id" placeholder="Enter Student ID" required>
        </div>

        <div>
            <label for="s_name">Name</label>
            <input type="text" name="s_name" placeholder="Enter Name" required>
        </div>

        <div>
            <label for="s_age">Age</label>
            <input type="number" name="s_age" placeholder="Enter Age" min="18" max="20" required>
        </div>

        <div>
            <label for="standard">Standard</label>
            <input type="number" name="s_std" placeholder="Enter Standard" min="12" max="12" required>
        </div>

        <div>
            <label for="physics">Physics Marks</label>
            <input type="number" name="Physics" placeholder="Enter Physics Marks"min="1" max="100" required>
        </div>

        <div>
            <label for="chemistry">Chemistry Marks</label>
            <input type="number" name="Chemistry" placeholder="Enter Chemistry Marks"min="1" max="100" required>
        </div>

        <div>
            <label for="maths">Mathematics Marks</label>
            <input type="number" name="Mathematics" placeholder="Enter Maths Marks"min="1" max="100" required>
        </div>

        <button type="submit">Save</button>
    </form>
</body>
</html>
