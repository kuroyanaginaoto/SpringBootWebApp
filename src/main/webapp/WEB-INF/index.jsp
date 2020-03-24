<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C" %>

    <%@ page import="java.util.List" %>
    <%@ page import="net.code.TrSellItemsEntity" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>ショッピングサイト</title>
  <link rel ="stylesheet" href="css/reset.css">
  <link rel ="stylesheet" href="css/style.css">
  <meta name="robots" content="noindex">
</head>

<body>
  <header>
  <h1>Online Card Shop</h1>
  	<nav>
  		<ul>
  		<li><a href="#">トップ</a></li>
  		<li><a href="#">カート</a></li>
  		</ul>
  	 </nav>
  </header>
  <main>
  	<div class="sidebar">
  		<h2>Title</h2>
  		<ul>
  		<li><a href="#">ソードアート・オンライン 10th Anniversary</a></li>
  			<li><a href="#">ゼロの使い魔 F</a></li>
  			<li><a href="#">この素晴らしい世界に祝福を！</a></li>
  			<li><a href="#">転生したらスライムだった件</a></li>
  			</ul>
  </div>

  <div class="maincol">
  	<h2>List</h2>
 <!--	<div class="item-box">
  		<img src="image/ws.kirito&asuna.sp.jpg" alt="商品" class="item-img">
  		<div class="item-name">再開の時 アスナ</div>
  		<div class="item-price">\54.800</div>
  		<button>詳しく見る</button>
  	</div>
  	<div class="item-box">
  		<img src="image/ws.asuna.sp.jpg" alt="商品" class="item-img">
  		<div class="item-name">再開の時 アスナ</div>
  		<div class="item-price">\22.800</div>
  		<button>詳しく見る</button>
  	</div>
  	<div class="item-box">
  		<img src="image/ws.yuuki.sp.jpg" alt="商品" class="item-img">
  		<div class="item-name">次の世界へ ユウキ</div>
  		<div class="item-price">\19.800</div>
  		<button>詳しく見る</button>
  	</div>
-->

<c:forEach items = "${SellItemsList}" var="items">
  	 <div class = "item-box">
  	 	<img src="image/${items.sellItemsImageFileName1}" alt ="商品" class="item-img">
  	 	 <div class="item-name">${items.sellItemsName}</div>
  	 	 <div class ="item-price">${items.sellItemsPrice}</div>
  	 	 <button
  	 	 onclick="location.href='/items/${items.sellItemsNum}'">詳しく見る</button>
  	  </div>
 </c:forEach>

  </main>
  <footer>
  	<ul>
  		<li><a href="#">お問い合わせ</a></li>
  		<li><a href="#">サイトマップ</a></li>
  		<li><a href="#">プライバシーポリシー</a></li>
  	</ul>
  	<p>Copylight©sample</p>
  </footer>
</body>

</html>


