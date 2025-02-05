<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <title>MultiHealth</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/templatemo.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/fontawesome.min.css">

    <!-- Slick -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/slick.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/slick-theme.css">

</head>

<body>
<%@include file ="../views/include/header.jsp" %> <!-- 공통헤더 삽입 -->

    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>



    <!-- Open Content -->
    <section class="bg-light">
        <div class="container pb-5">
            <div class="row">
                <div class="col-lg-5 mt-5">
                    <div class="card mb-3">
                    ${product.prod_img_name }
                    </div>
                    <div class="row">
                        <!--Start Carousel Wrapper-->
                        <div id="multi-item-example" class="col-10 carousel slide carousel-multi-item" data-bs-ride="carousel">
                            <div class="carousel-inner product-links-wap" role="listbox">
                            </div>
                        </div>
                        <!--End Carousel Wrapper-->
                    </div>
                </div>
                <!-- col end -->
                <div class="col-lg-7 mt-5">
                    <div class="card">
                        <div class="card-body">
                            <h1 class="h2"style="padding-bottom: 50px;">${product.prod_title }</h1>
                            <p class="h3 py-2"> 가격 : ${product.prod_price } ￦</p>
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                </li>
                                <li class="list-inline-item">
                                </li>
                            </ul>
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                </li>
                                <li class="list-inline-item">
                                </li>
                            </ul>
                            <form action="" method="GET">
                                <input type="hidden" name="product-title" value="Activewear">
                                <div class="row">
                                    <div class="col-auto">
                                    </div>
                                    <div class="form-group" style="text-align: left;">
			                      	<span style="padding-top: 50px;padding-bottom: 50px;"> 멀티헬스는 전 상품 무료배송입니다. <br><br></span> 
		                           	</div>

                                    
                                    <section>재고 : ${product.prod_inventory } 개 <br><br></section>
                                    <div class="col-auto">
                                        <ul class="list-inline pb-3">
                                            <li class="list-inline-item text-right">
                                                수량
                                               <input class="form-control text-center me-3" id="inputQuantity"
							type="number" name="order_count" value="1" min="1"
							style="max-width: 4rem;margin-top: 5px;" />
                                        </ul>
                                    </div>
                                <div class="row pb-3">
                                    <div class="col d-grid">
                                        <button id="check_module" style="display:none;" type="button" class="btn btn-dark btn-lg" value="buy" >Buy</button>
                                    </div>
                                    
                                    <div class="col d-grid">
                                    <input type="hidden" name=prod_num id="prod_num" value="${product.prod_num }"/>
                                        <button type="button" style="width: 650px;" class="btn btn-dark btn-lg" id="insertCart" 
                                        >Add To Cart</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Close Content -->
		<div class="row about_product" style="text-align: center;" width="1000px">
			<h1 class="page-header" style="padding-top: 100px;padding-bottom: 50px;">상품 상세</h1>
		</div>
    <div id="wrap">
  <div class="center">
    <section> ${product.prod_description_name }</section>
  </div>
</div>
<!-- //wrap -->

    <section class="py-5"style="display:none">
    </section>

<%@include file ="../views/include/footer.jsp" %> <!-- 공통 푸터 삽입, css, js 파일 함유 jquery 포함-->
 

    <!-- <!-- Start Script -->
    <script src="<%=request.getContextPath() %>/resources/js/jquery-1.11.0.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/templatemo.js"></script>
    <%-- <script src="<%=request.getContextPath() %>/resources/js/custom.js"></script> --%>
    <!-- End Script -->

    <!-- Start Slider Script -->
    <script src="<%=request.getContextPath() %>/resources/js/slick.min.js"></script>
    <script>
        $('#carousel-related-product').slick({
            infinite: true,
            arrows: false,
            slidesToShow: 4,
            slidesToScroll: 3,
            dots: true,
            responsive: [{
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                }
            ]
        });
    </script>
    <!-- End Slider Script -->
    <a href="#" class="btn_gotop">
  <span class="glyphicon glyphicon-chevron-up">
  </span>
</a>

<!-- 장바구니로 이동 -->

<script>
$('#insertCart').click(function() {
	//alert($('#inputQuantity').val());
    //alert($('#prod_num').val());

    let prod_num = $('#prod_num').val();
    let inputQuantity = $('#inputQuantity').val();
    
    console.log("상품번호",prod_num);
    console.log("수량",inputQuantity);
    $.ajax({
       type: "post",
       data: {prod_num : prod_num, product_count : inputQuantity},
       url: "http://localhost:8081/cart/insertcart",
       success: function(data){
          alert(data);
          window.location.href="http://localhost:8081/cart"
       }//succee
    })//ajax end
})
	$("#check_module").click(function() {
		let inputQuantity = $("#inputQuantity").val();
		let price =Number(inputQuantity*${product.prod_price})
		var IMP = window.IMP; // 생략가능
		IMP.init('imp26042582');
		// 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		IMP.request_pay({
			pg : 'inicis', 
			/*
			 'kakao':카카오페이,
			 html5_inicis':이니시스(웹표준결제)
			 'nice':나이스페이
			 'jtnet':제이티넷
			 'uplus':LG유플러스
			 'danal':다날
			 'payco':페이코
			 'syrup':시럽페이
			 'paypal':페이팔
			 */

			pay_method : 'card',
			/*
			 'samsung':삼성페이,
			 'card':신용카드,
			 'trans':실시간계좌이체,
			 'vbank':가상계좌,
			 'phone':휴대폰소액결제
			 */
			merchant_uid : 'merchant_' + new Date().getTime(),
			/*
			 merchant_uid에 경우
			 https://docs.iamport.kr/implementation/payment
			 위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
			 참고하세요.
			 나중에 포스팅 해볼게요.
			 */
			name : `${product.prod_title}`,
			//결제창에서 보여질 이름
			amount : price,
			//가격
			buyer_email : `${user.username}`,
			buyer_name : `${user.m_name}`,
			buyer_tel : `${user.m_hp}`,
			buyer_addr : `${user.m_add1}`,
			buyer_postcode : `${user.m_add2}`,
			m_redirect_url : 'http://localhost:8081/payments/complete'
			// 결제창에서 보여질 유저이름 
		
		}, function(rsp) {
			console.log(rsp);
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '상점 거래ID : ' + rsp.merchant_uid;
				msg += '결제 금액 : ' + rsp.paid_amount;
				msg += '카드 승인번호 : ' + rsp.apply_num;
				$("#submit").click(); //테스트용
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
				$("#submit").click(); //테스트용
			}
			alert(msg);
		});
	});
</script>
<script>
   $(document).ready(function() {
      $('li.active').removeClass('active');
      $('a[href="' + "/product" + '"]').closest('li').addClass('active');
   });
</script>



<!--  맨위로 버튼 -->
<style>
.btn_gotop {
	display:none;
	position:fixed;
	bottom:30px;
	right:30px;
	z-index:999;
	border:1px solid #ccc;
	outline:none;
	background-color:black;
	color:#333;
	cursor:pointer;
	padding:15px 20px;
	border-radius:100%;
}
</style>


<script>
$(window).scroll(function(){
	if ($(this).scrollTop() > 300){
		$('.btn_gotop').show();
	} else{
		$('.btn_gotop').hide();
	}
});
$('.btn_gotop').click(function(){
	$('html, body').animate({scrollTop:0},400);
	return false;
});
</script>

</body>

</html>