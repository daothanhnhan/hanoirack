<?php 

	// $home_pro_luxury = $action_product->getProductCatDetail_byId(458,$lang);

	// $img_sub_luxury = json_decode($home_pro_luxury['productcat_sub_img1']);//var_dump($img_sub);

	// $home_pro_luxury_sub = $action_product->getProductCat_byProductCatIdParent_Limit(458, 'desc', 4);
	$action_service = new action_service();
	$dich_vu = $action->getList('service', '', '', 'service_id', 'desc', '', '3', '');

?>

<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">

<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">

<link rel="stylesheet" href="/plugin/animsition/css/animate.css">




	<div class="title-cr text-center" style="margin-top: 30px;">
		<a href="/<?= $home_pro_luxury['friendly_url'] ?>" style="color: black;" title="continute">
			<h2><?= $lang=='vn' ? 'DỊCH VỤ KỸ THUẬT' : 'TECHNICAL SERVICES' ?></h2>
		</a>
		
	</div>

	<!-- <div class="gb-slideshow_mptoto wow slideInUp cat-dongsanpham" data-wow-duration="1s">

	    <div class="gb-slideshow_mptoto-slide owl-carousel owl-theme" data-wow-duration="1s">

	        <?php 

	          foreach ($img_sub_luxury as $item) {

	              $image = json_decode($item, true);?>

	        <div class="item">

	        	<img src="/images/<?= $image['image'] ?>" alt="" class="img-responsive">

	        </div>

	        <?php } ?>

	    </div>

	    <h2><a href="/<?= $home_pro_luxury['friendly_url'] ?>" title="" style="color: black;"><?= $home_pro_luxury['productcat_name'] ?></a></h2>

	</div> -->



	<div class="sanpham-dongsanpham ">

		<div class="row">

			<?php 
			foreach ($dich_vu as $item) { 
				$rowLang = $action_service->getServiceLangDetail_byId($item['service_id'], $lang);
			?>

			<div class="col-sm-4">

				<div class="sanpham-dongsanpham-item wow slideInUp" data-wow-duration="1s">

					<a href="/<?= $rowLang['friendly_url'] ?>" class="sanpham-dongsanpham-item-img"><img
							src="/images/<?= $item['service_img'] ?>" alt="<?= $rowLang['lang_service_name'] ?>"
							class="img-responsive"></a>

					<h3 style="text-transform: uppercase;"><a
							href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_service_name'] ?></a></h3>

				</div>

			</div>

			<?php } ?>
		
		</div>

	</div>



<!-- <script src="/plugin/wow/wow.min.js"></script>

<script>

    $(document).ready(function(){

        new WOW().init();

    })

</script> -->

<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>

<script>
	$(document).ready(function () {

		$('.gb-slideshow_mptoto-slide').owlCarousel({

			loop: true,

			margin: 0,

			navSpeed: 500,

			nav: true,

			dots: false,

			autoplay: true,

			rewind: true,

			navText: [],

			items: 4,

			responsive: {

				0: {

					nav: false

				},

				767: {

					nav: true

				}

			}

		});

	});
</script>