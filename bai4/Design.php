<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bai 4</title>
	<link rel="stylesheet" type="text/css" href="Design.css">
</head>
<body>
	<form method="POST" class="can-giua">
		<input type="text" spellcheck="false" name="mahang" class="phong1" placeholder="Mã hàng"><br>
		<input type="text" spellcheck="false" name="hangsx" class="phong1" placeholder="Hãng sản xuất"><br>
		<input type="text" spellcheck="false" name="chatlieu" class="phong1" placeholder="Chất liệu"><br>
		<input type="text" spellcheck="false" name="gia" class="phong1" placeholder="Giá"><br>
		<input type="submit" name="submit" value="Thêm" class="phong2">
		<input type="reset" name="reset" value="Nhập lại" class="phong2">
	</form> 

	<?php 
		if (isset($_POST['submit'])) {
			$mahang = $_POST['mahang'];
			$hangsx = $_POST['hangsx'];
			$chatlieu = $_POST['chatlieu'];
			$gia = $_POST['gia'];

			$conn = mysqli_connect("localhost", "root", "", "qlbh");

			$sql = "INSERT INTO piano (mahang, hangsx, chatlieu, gia) VALUES ('$mahang', ' $hangsx', '$chatlieu', ' $gia')";

			if (mysqli_query($conn, $sql)) {
   			 echo "Thêm thông tin piano thành công!";
			} else {
   			 echo "Co loi xay ra: " . $sql . "<br>" . mysqli_error($conn);
			}
			
			mysqli_close($conn);
		}
	 ?>

</body>
</html>