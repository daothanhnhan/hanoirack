<?php
    $arr_procat = array();
    function getParent($id)
    {
        global $conn_vn;
        global $arr_procat;
        if ($id != 0) {
            $sql = "SELECT * FROM productcat WHERE productcat_id = $id";
            $result = mysqli_query($conn_vn, $sql);
            $row = mysqli_fetch_assoc($result);
            $arr_procat[] = array(
                'url' => $row['friendly_url'],
                'name' => $row['productcat_name'],
                'id' => $row['productcat_id']
            );
            getParent($row['productcat_parent']);
        }
    }

    getParent($productcat_id);
    krsort($arr_procat);
        // var_dump($arr_procat);
?>
<div class="container">
    <ol class="breadcrumb">
        <li><a href="/">Trang chủ</a></li>
        <?php 
        foreach ($arr_procat as $item) { 
            $rowLang = $action_product->getProductCatLangDetail_byId($item['id'], $lang);
        ?>
            <li><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_productcat_name'] ?></a></li>
        <?php  } ?>
        <li><?= $title ?></li>
    </ol>
</div>