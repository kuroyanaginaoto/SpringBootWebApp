<head>
  <meta charset="UTF-8">
  <title>ショッピングサイト</title>
  <link rel ="stylesheet" href="css/reset.css">
  <link rel ="stylesheet" href="css/style.css">
  <meta name="robots" content="noindex">
</head>
<main>
	<div class="maincol">
	<h2>Item Details</h2>
	<div class="item-box-detail">
		<img src="/image/${selectedItem.sellItemsImageFileName1}" alt="商品"
			class="item-img">
		<div class="detail-container">
			<table>
				<tr>
					<td>商品名</td>
					<td>:</td>
					<td>${selectedItem.sellItemsName}</td>
				</tr>
				<tr>
					<td>商品説明</td>
					<td>:</td>
					<td>${selectedItem.sellItemsDescription}</td>
				</tr>
				<tr>
					<td>価格</td>
					<td>:</td>
					<td>¥${selectedItem.sellItemsPrice}</td>
				</tr>
			</table>
			<button onclick="location.href='/cart/add/${selectedItem.sellItemsNum}'">カートに入れる</button>
		</div>
	</div>
</main>

  <footer>
  	<ul>
  		<li><a href="#">お問い合わせ</a></li>
  		<li><a href="#">サイトマップ</a></li>
  		<li><a href="#">プライバシーポリシー</a></li>
  	</ul>
  	<p>Copylight©sample</p>
  </footer>