<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_MPTOTO_0002.php";?>
<?php 
    $action_service = new action_service(); 
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    
?>
<?php 
    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_serviceDetail($slug, $lang);
?>
<style>
    @media all and (max-width: 991px) {
        .sidebar-hidden {
            display: none;
        }
    }
</style>
<input type="hidden" name="lang_current" id="lang_current" value="<?php echo $lang;?>">
<input type="hidden" name="url_lang" value="<?php echo $url_lang;?>" id="url_lang">

<div class="gb-single-blog_mptoto">
    <div class="container">
        <div class="row">
            <div class="col-md-3 sidebar-hidden">
                    <?php include DIR_MENU."MS_MENU_MPTOTO_0003.php";?>

                    <?php include DIR_SIDEBAR . "MS_SIDEBAR_MPTOTO_0003.php"; ?>
                </div>
<?php 
    $rowLang = $action_service->getServiceLangDetail_byUrl($slug,$lang);//var_dump($rowLang['lang_service_name']);
    $row = $action_service->getServiceDetail_byId($rowLang['service_id'],$lang);
    $_SESSION['sidebar'] = 'serviceDetail';
    $news_breadcrumb = $action_service->getServiceCatLangDetail_byId($row['servicecat_id'], $lang);
    $breadcrumb_url = $news_breadcrumb['friendly_url'];
    $breadcrumb_name = $news_breadcrumb['lang_servicecat_name'];
    $use_breadcrumb = true;
?>
            <div class="col-md-9 gb-single-blog_mptoto-right">
                <div class="gb-single-blog_mptoto-right-img">
                    <img src="/images/<?= $row['service_imga'] ?>" alt="" class="img-responsive">
                </div>
                <div class="gb-single-blog_mptoto-right-title">
                    <h2><?= $rowLang['lang_service_name'] ?></h2>
                </div>
                <div class="gb-single-blog_mptoto-right-info">
                    <ul>
                        <li><i class="fa fa-user" aria-hidden="true"></i><a href="#"> Admin</a></li>
                        <li><i class="fa fa-clock-o" aria-hidden="true"></i><a href="#"> <?= date('d-m-Y', strtotime($row['service_update_date']))  ?></a></li>
                        <li><i class="fa fa-folder-open-o" aria-hidden="true"></i><a href="#"> <?= $lang=='vn' ? 'Dịch vụ' : 'Service' ?></a></li>
                    </ul>
                </div>
                <div class="gb-single-blog_mptoto-right-text">
                    <?= $rowLang['lang_service_content'] ?>
                </div>

                <!--bình luận-->
                <?php include DIR_EMAIL."MS_EMAIL_MPTOTO_0002.php";?>

                <!--tin tức liên quan-->
                <?php //include DIR_NEWS."MS_NEWS_MPTOTO_0003.php";?>

            </div>
            <div class="col-md-4 gb-blog-left" style="display: none;">
                <?php include DIR_SIDEBAR."MS_SIDEBAR_MPTOTO_0001.php";?>
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_MPTOTO_0002.php";?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_MPTOTO_0003.php";?>
            </div>
        </div>
    </div>
</div>