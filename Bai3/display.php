<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Hiển thị Thông tin từ from</title>
</head>
<body>
	<?php
		// Tạo một mảng chứa thông tin của các đối tượng
		$hienthi = [
		    [
		        'tentui' => 'Các đối tượng túi:',
		        'price' => 3000000,
		        'description' => 'Mô tả đối sản phẩm túi có giá từ 3 triệu',
		    ],
		   
		];

		// Tìm đối tượng có giá bằng 3000000
		$targetPrice = 3000000;
		$targethienthi = null;
		foreach ($hienthi as $hienthi) {
		    if ($hienthi['price'] === $targetPrice) {
		        $targethienthi = $hienthi;
		        break;
		    }
		}

		// Hiển thị thông tin của đối tượng
		if ($targethienthi) {
		    echo '<h1>' . $targethienthi['tentui'] . '</h1>';
		    echo '<p>Giá: ' . number_format($targethienthi['price']) . ' VND</p>';
		    echo '<p>' . $targethienthi['description'] . '</p>';
		} else {
		    echo 'Không tìm thấy đối tượng có giá ' . number_format($targetPrice) . ' VND.';
		}
	?>

</body>
</html>