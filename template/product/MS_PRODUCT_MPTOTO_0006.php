<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">

<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">

<?php

    $product = new action_product();

    $beptu = $product->getProductCatDetail_byId( 234,$lang);

    $bephongngoai = $product->getProductCatDetail_byId( 436,$lang);

    $mayhutmui = $product->getProductCatDetail_byId( 235,$lang);

    $bepga = $product->getProductCatDetail_byId( 437,$lang);

?>
<?php

    $action_product = new action_product();

    $list_product_parent = $action_product->getProductCat_byProductCatIdParent(0, 'asc');

    foreach ($list_product_parent as $item) {
        $rowLang1 = $action_product->getProductCatLangDetail_byId($item['productcat_id'], $lang);

?>
<div class="gb-productthietbinhabep-home_mptoto" style="padding-bottom: 0;">

  

        <div class="row">

            <div class="col-sm-8 col-sm-offset-2">

                <div class="gb-producttab-home_mptoto-title">

                    <!-- <img src="/images/<?= $rowConfig['icon_web'] ?>" alt="" class="img-responsive" style="width: 50px;"> -->

                    <div class="title-cr text-center">
                		<a href="/<?= $rowLang1['friendly_url'] ?>" style="color: black;" title="continute">
                            <h2><?= $rowLang1['lang_productcat_name'] ?></h2>

                		</a>
                		
                	</div>
                    <!-- <div class="underline-product_mptoto"></div> -->

                </div>

            </div>

        </div>

        <div class="gb-productthietbinhabep-home_mptoto-slide owl-carousel owl-theme">

            <?php

                $list_product_sub = $action_product->getProductCat_byProductCatIdParent($item['productcat_id'], '');

                foreach ($list_product_sub as $item_sub) {
                    $rowLang2 = $action_product->getProductCatLangDetail_byId($item_sub['productcat_id'], $lang);
            ?>

            <div class="item">

                <div class="gb-product-item_mptoto wow slideInUp" data-wow-duration="1s">

                    <div class="gb-product-item-img">

                        <div class="gb-product-item-img-main">

                            <a href="/<?= $rowLang2['friendly_url'] ?>"><img src="/images/<?= $item_sub['productcat_img'] ?>" alt="" class="img-responsive"></a>

                        </div>

                    </div>

                    <div class="gb-product-item-img-text">

                        <h2><a href="/<?= $rowLang2['friendly_url'] ?>"><?= $rowLang2['lang_productcat_name'] ?></a></h2>

                        <?= $rowLang2['lang_productcat_des'] ?>

                    </div>

                </div>

            </div>

            <?php } ?>

        </div>

   

</div>
<?php 
    }
?>
<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>

<script src="/plugin/waypoint/jquery.waypoints.min.js"></script>

<script src="/plugin/wow/wow.min.js"></script>

<script src="/plugin/animsition/css/animate.css"></script>

<script>

    // new WOW().init();

</script>

<script>

    $(document).ready(function (){

        $('.gb-productthietbinhabep-home_mptoto-slide').owlCarousel({

            loop:true,

            margin:30,

            navSpeed:500,

            nav:true,

            dots: false,

            autoplay: true,

            rewind: true,

            navText:[],

            responsive:{

                0:{

                    items:2,

                    nav:false

                },

                767:{

                    items: 3,

                    nav: false

                }

            }

        });

    });

</script>