<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<jsp:include page="header.jsp" flush="true"/>
	  
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>상품상세</title>

 		<!-- Google font -->
 		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

 		<!-- Bootstrap -->
 		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

 		<!-- Slick -->
 		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
 		<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

 		<!-- nouislider -->
 		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

 		<!-- Font Awesome Icon -->
 		<link rel="stylesheet" href="css/font-awesome.min.css">

 		<!-- Custom stlylesheet -->
 		<link type="text/css" rel="stylesheet" href="css/style.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		 <style type="text/css">
   .use-play-1 {
      position:absolute;
      width: 600px;
      height: 400px;
      left: -150px;
   }      
      
 .poster-item {
   width: 600px;
   height: 500px;
   text-decoration: none;
   list-style: none;   
         }
  .flowplayer {
     max-width: 1000px;
}

#qual {
  position: absolute; right:18px; top: 10px;
  font-family: courier, monospace;
  /* background-color: #262626; */
  transition: all .3s;
  border-radius: 3px;
  font-size: 90%;
  z-index: 1;  
}

#qual h3 {
  margin: 0 0 10px;
  color: #eee;
}

#qual label {
  display: inline-block;
  color: lime;
  width: 100px;
}

#qual strong {
  font-weight: 500;
  color: #fff;
}

#qual.switching {
  background-color: #ff0083;
  transform: scale(1.05);
}


body { margin: 0; padding: 0; }
body.dark { background: rgba(0,0,0,.4); }

#hamburger02-wrapper {
  float: right;
  margin-top: 30px;
  right: 10px;
  z-index: 1000;
}
#hamburger02 {
  cursor: pointer;
  font-size: 3em;
}
#close-sidenav02 {
  cursor: pointer;
  font-size: 3em;
  margin-top: 50px;
  float: right;
}
#sidenav02 {
  height: 100%; width: 500px;
  top: 0; right: -500px;
  background: black;
  position: fixed;
  transition: 0.4s;
}
#sidenav02 ul { margin: 0; padding: 0; list-style-type: none; }
#sidenav02 header a {
  color: white;
  display: block;
  text-decoration: none;
  padding: 1em;
}
#sidenav02 header { background: teal; }
#sidenav02 a:hover { background: gray; }    


</style>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
		function order(){
			var f = $("#f").serialize();
			alert(f);
			var qty = $("#qty").val();
			//select box 값 가져오기
			var option1 = $(".select_op1 option:selected").val();
			var option2 = $(".select_op2 option:selected").val();
		
		});
});

</script>
    </head>
    
	<body>
		
		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<ul class="breadcrumb-tree">
							<li><a href="#">Home</a></li>
							<li><a href="#">쇼핑</a></li>
							<li><a href="#">${de.p_category }</a></li>
							
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

       <!-- SECTION -->
      <div class="section">
         <!-- container -->
         <div class="container">
            <!-- row -->
            <div class="row">
               <!-- Product main img -->
               <!-- 동영상 oper -->
               <div class="col-md-5 col-md-push-2">
               <div class="use-play-1 flowplayer" data-player-id="56058953-2cbd-4858-a915-1253bf7ef7b2">
  <script src="//cdn.flowplayer.com/players/8dfd6c14-ba3a-445e-8ef5-191d9358ed0a/native/flowplayer.async.js">
    { "src": "video/${de.p_video}", "plugins": ["qsel"] }
  </script>
  <div id="qual" class="">
        <!-- 햄버거 이미지 load -->
         <%-- <jsp:include page="TopandDown.jsp"/> --%>
        <%-- <div class="navHeader">
    <header >
      <img src="img/threelines.png" alt="hamburger02" class="hamburger02" />
    </header>
    <div class="menu">
       
      <ul>
         <!-- 채팅페이지 include -->  
       <jsp:include page="home.jsp"/>
      </ul>
    </div>
  </div> <!-- End .navHeader --> --%>
  <nav id="sidenav02">
  <span id="close-sidenav02">&times;</span>
  
  <div>
     <jsp:include page="home.jsp"></jsp:include>
  </div>
</nav>
<div id="hamburger02-wrapper">
  <span id="hamburger02">&equiv;</span>
</div>

<script src="//code.jquery.com/jquery.min.js"></script>
<script>
$("#hamburger02").click(function() {
   $("#sidenav02").css("right", "0");
 
});
$("#close-sidenav02").click(function() {
   $("#sidenav02").css("right", "-1000px");
});
</script>
  
  
  </div>
</div>
   </div>

					
					<!-- /Product main img -->
					<form id="f" action="orderpage" onsubmit="return order()">
					<!-- Product thumb imgs -->
					<div class="col-md-2  col-md-pull-5">
						<!-- <div id="product-imgs"></div> -->
						
					</div>
					<!-- /Product thumb imgs -->
					<input type ="hidden" id="pnum" name="pnum" value="${de.pnum }">
					<input type="hidden"  name="pname" value="${de.pname }">
					<input type="hidden" name="p_price" value="${de.p_price }">
					<!-- Product details -->
					<div class="col-md-5">
						<div class="product-details">
							<h2 class="product-name">${de.pname } </h2>
							<div>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-o"></i>
								</div>
								<a class="review-link" href="#">3개 리뷰 | 리뷰 달기</a>
							</div>
							<div>
								<h3 class="product-price">${de.p_price }원 <del class="product-old-price">${de.p_sprice }원</del></h3>
								<span class="product-available">재고 ${de.stock }개</span>
							</div>
							<p><h4>판매자 : ${de.beuid }</h4> 
							<a href="channel?beuid=${de.beuid }"><h5>판매자 채널로 이동하기</h5></a>
							${de.detail }</p>
							
							<div class="product-options">
							<input type="hidden" value="${de.select_op1 }" id="op1">
								<label class="option1">
									${de.option1 }
									<select class="input-select select_op1" name="select_op1" style="width: 150px;">
									</select>
								</label>
								<script>
										var op1 = $("#op1").val();
										var arr = op1.split(',');
										for(var i = 0; i<arr.length; i++){
											var option = $("<option value='"+arr[i]+"'>"+arr[i]+"</option>");
											$(".select_op1").append(option);
										}
								</script>
								<c:choose>
								<c:when test="${!empty de.option2}">
									<input type="hidden"  id ="op2" value=${de.select_op2 }>
							
									<label>
										${de.option2 }
										<select class="input-select select_op2" name="select_op2" style="width: 150px;">
											<!-- <option value="0">메모리 업그레이드 2기가추가</option>
											<option value="1">메모리 업그레이드 4기가추가</option>
											<option value="2">MS오피스 설치</option>
											<option value="3">게이밍 마우스</option>
											<option value="3">노트북 파우치</option> -->
										</select>
									</label>
											<script>
											var arr = $("#op2").val().split(',');
											for(var i = 0; i<arr.length; i++){
												var option = $("<option></option>").html(arr[i]).attr("value",arr[i]);
												$(".select_op2").append(option);
											}
									</script>
								</c:when>
								<c:when test="${!empty de.option3}">
									<input type="hidden"  id ="op3" value=${de.select_op3 }>
									<label>
										${de.option3 }
										<select class="input-select select_op2" style="width: 150px;">
											<!-- <option value="0">메모리 업그레이드 2기가추가</option>
											<option value="1">메모리 업그레이드 4기가추가</option>
											<option value="2">MS오피스 설치</option>
											<option value="3">게이밍 마우스</option>
											<option value="3">노트북 파우치</option> -->
										</select>
									</label>
											<script>
											var arr = $("#op3").val().split(',');
											for(var i = 0; i<arr.length; i++){
												var option = $("<option></option>").html(arr[i]).attr("value",i);
												$(".select_op3").append(option);
											}
									</script>
								</c:when>
								</c:choose>
							</div>
							
							<div class="add-to-cart">
								<div class="qty-label">
									수량
									<div class="input-number" style="width:80px;">
										<input type="number" value="1" name="qty">
										<span class="qty-up">+</span>
										<span class="qty-down">-</span>
									</div>
								</div>
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> 장바구니에 담기</button>
								<input type="submit" class="buy-now-btn"  id="btn_buy" value="바로 구매하기">
							</div>

							<ul class="product-btns">
								<li><a href="#"><i class="fa fa-heart-o"></i> 찜하기</a></li>
								<li>Share:</li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-envelope"></i></a></li>
                        </ul>

						</div>
					</div>
					<!-- /Product details -->
					</form >
					<!-- Product tab -->
					<div class="col-md-12">
						<div id="product-tab">
							<!-- product tab nav -->
							<ul class="tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab1">상세이미지1</a></li>
								<li><a data-toggle="tab" href="#tab2">상세이미지2</a></li>
								
							</ul>
							<!-- /product tab nav -->

							<!-- product tab content -->
							<div class="tab-content">
								<!-- tab1  -->
								<div id="tab1" class="tab-pane fade in active">
									<div class="row">
										<div class="col-md-12">
											<img src="img/${de.as_info }" style="width: 100%">
										</div>
									</div>
								</div>
								<!-- /tab1  -->

								<!-- tab2  -->
								<div id="tab2" class="tab-pane fade in">
									<div class="row">
										<div class="col-md-12">
											<img src="img/${de.as_info }" style="width: 100%">
										</div>
									</div>
								</div>
								<!-- /tab2  -->

								<!-- tab3  -->
								<div id="tab3" class="tab-pane fade in">
									<div class="row">
										<!-- Rating -->
										<div class="col-md-3">
											<div id="rating">
												<div class="rating-avg">
													<span>4.5</span>
													<div class="rating-stars">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</div>
												</div>
												<ul class="rating">
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 80%;"></div>
														</div>
														<span class="sum">3</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 60%;"></div>
														</div>
														<span class="sum">2</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
												</ul>
											</div>
										</div>
										<!-- /Rating -->

									
									</div>
								</div>
								<!-- /tab3  -->
							</div>
							<!-- /product tab content  -->
						</div>
					</div>
					<!-- /product tab -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- Section -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-12">
						<div class="section-title text-center">
							<h3 class="title">관련된 상품들</h3>
						</div>
					</div>

					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="http://i.011st.com/ex_t/R/400x400/1/85/0/src/pd/19/1/5/7/6/2/3/IkSSf/1853157623_B.jpg" alt="">
								<div class="product-label">
									<span class="sale">-30%</span>
								</div>
							</div>
							<div class="product-body">
								<p class="product-category">노트북</p>
								<h3 class="product-name"><a href="#">product name goes here</a></h3>
								<h4 class="product-price">519,000원 <del class="product-old-price">566,310원</del></h4>
								<div class="product-rating">
								</div>
								<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">찜하기</span></button>
									<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">상품 바로가기</span></button>
								</div>
							</div>
							<div class="add-to-cart">
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>장바구니 담기</button>
							</div>
						</div>
					</div>
					<!-- /product -->

					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="http://image.lotte.com/goods/55/62/15/55/5/555156255_1_1500.jpg" alt="">
								<div class="product-label">
									<span class="new">NEW</span>
								</div>
							</div>
							<div class="product-body">
								<p class="product-category">노트북</p>
								<h3 class="product-name"><a href="#">[LG전자][리퍼]15N540 i5 4G SSD120G+500G GT740M 2G 오버워치노트북</a></h3>
								<h4 class="product-price">499,000원 <del class="product-old-price">542,390원</del></h4>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
								<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">찜하기</span></button>
									<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">상품 바로가기</span></button>
								</div>
							</div>
							<div class="add-to-cart">
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>장바구니 담기</button>
                            </div>
						</div>
					</div>
					<!-- /product -->

					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="https://thumbnail13.coupangcdn.com/thumbnails/remote/492x492ex/image/retail/images/2018/09/10/13/3/62bc61c2-4232-4b52-a15d-67fd3c96cd45.jpg" alt="">
							</div>
							<div class="product-body">
								<p class="product-category">Category</p>
								<h3 class="product-name"><a href="#">앱코 HACKER 코리아 어디션 게이밍 기계식 키보드 카일 광축 텐키리스 방수 축교환 LED 리니어</a></h3>
								<h4 class="product-price">55,750원 <del class="product-old-price">72,000원</del></h4>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-o"></i>
								</div>
								<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">찜하기</span></button>
									<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">상품 바로가기</span></button>
								</div>
							</div>
							<div class="add-to-cart">
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>장바구니 담기</button>
                            </div>
						</div>
					</div>
					<!-- /product -->
    
					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="http://item.ssgcdn.com/95/84/21/item/1000036218495_i1_1200.jpg" alt="">
							</div>
							<div class="product-body">
								<p class="product-category">컴퓨터/보조기기</p>
								<h3 class="product-name"><a href="#">스틸시리즈 Arctis Pro RGB 7.1 헤드셋</a></h3>
								<h4 class="product-price">173,530원 <!--<del class="product-old-price">$990.00</del>--></h4>
								<div class="product-rating">
								</div>
								<div class="product-btns">
									<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">찜하기</span></button>
									<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">상품 바로가기</span></button>
								</div>
							</div>
							<div class="add-to-cart">
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>장바구니 담기</button>
							</div>
						</div>
					</div>
					<!-- /product -->

				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /Section -->



		<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>

	</body>
</html>
