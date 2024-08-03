<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bai 6</title>
</head>
<style type="text/css">
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            font-family: sans-serif;
        }

        body {
            width: 100vw;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }

        .background {
            background: url('nhan.jpg') 100% no-repeat;
            background-size: cover;
            position: absolute;
            left: 0;
            top: 0;
            right: 0;
            bottom: 0;
            z-index: -1;
            width: 100%;
            height: 100%;
            transition: all 0.25s ease;
        }

        table {
            position: relative;
            z-index: 1;
            border-radius: 20px;
        }

        table::after {
            content: '';
            position: absolute;
            left: 0;
            top: 0;
            right: 0;
            bottom: 0;
            z-index: -1;
            border-radius: 20px;
            background: #fff;
            transition: all 0.25s ease;
        }

        table:hover ~ .background {
            filter: blur(5px);          
        }

        table:hover {
            border: 1px solid rgba(255, 255, 255, 1);
        }

        table:hover::after {
            transform: scale(1.02);
            background: rgba(255, 255, 255, 0.9);
            filter: blur(50px);
        }


        tr {
            border-bottom: 1px solid #eee;
            position: relative;
            border-radius: 8px;
        }


        tr:not(tr:last-child)::after {
            content: '';
            position: absolute;
            left: 0;
            bottom: 0;
            height: 1px;
            width: 100%;
            background: #e2e8f0;
        }

        th {
            color: #475569;
        }

        td {
            color: #374151;
        }

        th, td {
            padding: 14px 20px;
        }
    </style>
<body>
    <?php
        $sever = "localhost";
        $username = "root";
        $password = "";
        $dbname = "qlbh";

        $connect = mysqli_connect("localhost","root","","qlbh");

        $sql = "select * from sonmoi where mau = 'San hô' ";
        $result = mysqli_query($connect,$sql);
        if(mysqli_num_rows($result) > 0){
            echo "<table><tr><td>Mã hàng</td> <td>Màu</td> <td>Nhà cung cấp</td> <td>Giá</td><tr>";
            while ($row = mysqli_fetch_assoc($result)) 
            {
                echo "<tr>";
                echo "<td>" .$row["mahang"]. "</td>";
                echo "<td>" .$row["mau"]. "</td>";
                echo "<td>" .$row["nhaCC"]. "</td>";
                echo "<td>" .$row["gia"]. "</td>";
                echo "<tr>";
            }
            echo "</table>";
            }
        else
            {
                echo "Error!";
            }
        $connect -> close();
    ?>
    <div class="background"></div>
</body>
</html>