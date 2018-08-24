<?php
require_once 'components/database.php';
require_once 'layouts/header.php';
require_once 'cookies_sessions/session_on.php';
require_once 'layouts/left-sidebar.php';
?>


<div class="col-md-9 right">
    <div class="news_list col-md-12 ">
        <?php
        if (isset($_GET['id'])) {
            $get_id = $_GET['id'];

            $db->where('id' ,"$get_id");

            $data = $db->get($tableName = 'news', $numRows = null, $columns = '*'); //contains an Array of all users

            //  echo '<pre>',print_r($db); die();
}

            ?>
            <?php if (!empty($data)) : ?>
                <?php foreach($data as $d):?>
                    <h2 class="title"><?php echo $d['heading']; ?></h2>
                <div class="image_container"><img src="uploads/<?php echo $d['image_path']; ?>"</div>
                <div class="description"><?php echo $d['description']; ?></div>
                <div><?php echo $d['content']; ?></div>
                <div class="news_date">Created : <?php echo $d['date_of_creating']; ?>  </div>
                <?php endforeach;  ?>

            <?php endif; ?>

    </div>


</div>


<?php require_once 'layouts/footer.php'; ?>


