<?php
    // $page = new action_page();
    // $detail_page = $page->getPageDetail_byId(57, $lang);
    $action_page = new action_page(); 
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_page->getPageLangDetail_byUrl($slug,$lang);
    $row = $action_page->getPageDetail_byId($rowLang['news_id'],$lang);
    $_SESSION['sidebar'] = 'pageDetail';

    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_page($slug, $lang);
?>
<input type="hidden" name="lang_current" id="lang_current" value="<?php echo $lang;?>">
            <input type="hidden" name="url_lang" value="<?php echo $url_lang;?>" id="url_lang">
<div class="gb-home-introduct_mptoto">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="gb-home-introduct_mptoto-left">
                    <h2><?= $rowLang['lang_page_name'] ?></h2>
                    <p>
                        <?= $rowLang['lang_page_content'] ?>
                    </p>
                    <!-- <a href="/<?= $detail_page['friendly_url'] ?>" class="xemtiep_mptoto">Xem tiếp</a> -->
                </div>
            </div>
            <!-- <div class="col-sm-6">
                <div class="gb-home-introduct_mptoto-right">
                    <img src="/images/<?= $detail_page['page_img'] ?>" alt="" class="img-responsive">
                </div>
            </div> -->
        </div>
    </div>
</div>