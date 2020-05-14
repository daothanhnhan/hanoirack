<div class="menucategory-top_mptoto">

    <!-- <div class="txtmenucategory-top_mptoto"><i class="fa fa-bars"></i>&nbsp; <span>Danh mục sản phẩm</span></div> -->

    <!-- trang chu -->



    <div class="gb-menu-category_mptoto">

        <nav class="main-navigation uni-menu-text">

            <div class="cssmenu" style="box-shadow: 0 0;">

                <ul>

                    <?php

                                    $action_product = new action_product();

                                    $list_product_parent = $action_product->getProductCat_byProductCatIdParent(0, 'asc');

                                    foreach ($list_product_parent as $item) {

                                        $rowLang1 = $action_product->getProductCatLangDetail_byId($item['productcat_id'], $lang);

                                ?>

                    <li class="has-sub">

                        <a href="/<?= $rowLang1['friendly_url'] ?>">

                            <!-- <img src="/images/<?= $item['productcat_img'] ?>" class="icon_cate_websmienphi"> -->

                            <?= $rowLang1['lang_productcat_name'] ?>

                        </a>

                        <ul class="row">

                            <?php

                                                $list_product_sub = $action_product->getProductCat_byProductCatIdParent($item['productcat_id'], '');

                                                foreach ($list_product_sub as $item_sub) {
                                                    $rowLang2 = $action_product->getProductCatLangDetail_byId($item_sub['productcat_id'], $lang);
                                            ?>

                            <li class="col-md-12">



                                <h3><a href="/<?= $rowLang2['friendly_url'] ?>"><?= $rowLang2['lang_productcat_name'] ?></a>
                                </h3>

                                <ul>

                                    <?php

                                                                $list_product_sub_2 = $action_product->getProductCat_byProductCatIdParent($item_sub['productcat_id'], '');

                                                                foreach ($list_product_sub_2 as $item_sub_2) {

                                                            ?>

                                    <li><a href="/<?= $item_sub_2['friendly_url'] ?>">
                                            <?= $item_sub_2['productcat_name'] ?></a>
                                    </li>

                                    <?php } ?>

                                </ul>



                            </li>

                            <?php } ?>

                            <li class="image_cate">

                                <img src="/images/<?= $item['productcat_sub'] ?>" alt=""
                                    class="lazy_menu img-responsive">

                            </li>

                        </ul>

                    </li>

                    <?php } ?>

                    

                </ul>

            </div>

        </nav>

    </div>

</div>