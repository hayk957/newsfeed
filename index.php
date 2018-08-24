<?php
require_once 'components/database.php';

require_once 'layouts/header.php';
?>


<?php
require_once 'layouts/left-sidebar.php';
?>


<?php

$db->join("news n", "c.id=n.category_id", "LEFT");
$data = $db->get ("categories c", null, "n.*, c.*");

?>

<div class="col-md-9 right">
    <div class="news_list ">
        <?php if (!empty($data)): ?>
        <div class="row m-0">
            <?php foreach ($data as $item): ?>
                <div class="col-sm-6">
                    <h4 class="title"><a href="view.php?id=<?php echo $item['id']; ?>"><?php echo $item['heading']; ?></a>
                    </h4>
                    <div class="image_container">
                        <img src="uploads/<?php echo $item['image_path']; ?>">
                    </div>
                    <div class="description"><?php echo $item['description']; ?></div>
                    <div class="category">Category:
                        <?php
                        echo $item['title'];
                        ?>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        <?php endif; ?>
    </div>
</div>



<?php require_once 'layouts/footer.php'; ?>


