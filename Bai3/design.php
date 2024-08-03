<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bai 3</title>
</head>
<body>
	<form method="POST">
		<table>
		<tr>
			<td>Mã túi:</td>
			<td><input type="text" spellcheck="false" name="matui"><br></td>
		</tr>
		<tr>
			<td>Tên túi:</td> 
			<td><input type="text" spellcheck="false" name="tentui"><br></td>
		<tr>
			<td>Hãng sản xuất:</td> 
			<td><input type="text" spellcheck="false" name="hangsx"><br></td>
		<tr>

		<tr>
			<td>Giá tiền: </td>
			<td><input type="text" spellcheck="false" name="gia"><br></td>
		</tr>
			<td> </td>
			<td>
				<input type="submit" name="submit" value="Thêm">
				<input type="reset" name="reset" value="Nhập lại">
			</td>
		</tr>
		</table>
	</form> 

	<?php 
		if (isset($_POST['submit'])) {
			$matui = $_POST['matui'];
			$tentui = $_POST['tentui'];
			$hangsx = $_POST['hangsx'];
			$gia = $_POST['gia'];

			$conn = mysqli_connect("localhost", "root", "", "qlbh");

			$sql = "INSERT INTO tuixach (matui, tentui, hangsx, gia) VALUES ('$matui', ' $tentui', '$hangsx', ' $gia')";

			if (mysqli_query($conn, $sql)) {
   			 echo "Thêm thông tin túi thành công!";
			} else {
   			 echo "Co loi xay ra: " . $sql . "<br>" . mysqli_error($conn);
			}
			
			mysqli_close($conn);
		}
	 ?>

	<?php
		require 'display.php';
	?>

</body>
</html>