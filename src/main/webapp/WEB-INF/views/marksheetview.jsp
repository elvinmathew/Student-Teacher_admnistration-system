<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        table {
            width: 60%;
            margin: 50px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }

        th, td {
            padding: 15px;
            border: 1px solid #ccc;
        }

        th {
            background-color: #2196f3;
            color: #fff;
        }

        td {
            background-color: #f9f9f9;
        }

        th, td {
            text-align: left;
        }

        h2 {
            color: #333;
            font-size: 2em;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
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

    <h2>Student Result</h2>
    <table>
        <tr>
            <th>Roll No</th>
            <td>${student.s_id}</td>
        </tr>
        <tr>
            <th>Name</th>
            <td>${student.s_name}</td>
        </tr>
        <tr>
            <th>Age</th>
            <td>${student.s_age}</td>
        </tr>
        <tr>
            <th>Standard</th>
            <td>${student.s_std}th</td>
        </tr>
        <tr>
            <th>Physics</th>
            <td>${marksheet.physics}</td>
        </tr>
        <tr>
            <th>Chemistry</th>
            <td>${marksheet.chemistry}</td>
        </tr>

            <th>Maths</th>
            <td>${marksheet.mathematics}</td>
        </tr>

        <tr>
            <th>Total Marks</th>
            <td>${marksheet.physics + marksheet.chemistry + marksheet.mathematics}/300</td>
        </tr>
        <tr>
            <th>Percentage</th>
            <td>${((marksheet.physics + marksheet.chemistry + marksheet.mathematics) / 300) * 100}%</td>
        </tr>
    </table>
</body>
</html>