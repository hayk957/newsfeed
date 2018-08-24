<?php
require_once 'components/database.php';

require_once 'layouts/header.php';
?>


<?php
require_once 'layouts/left-sidebar.php';
?>
<?php



$db->join("news n", "c.id=n.category_id", "LEFT");
$db->groupBy("c.title","desc");
$categories_counts = $db->get("categories c", null, "c.*,count(*)");




?>


    <div class="col-md-9 right">


            <h2 style="font-style: italic" class="">Categories</h2>
            <div class="row">
                <?php foreach ($categories_counts as $c  ):?>
                    <div class="col-md-3">
                    <div class="category-nav">
                    <a  href="category.php?id=<?php echo $c['id']; ?>"><?php echo $c['title']."(". $c['count(*)'] .")" ; ?></a>
                    </div>
                </div>
                <?php endforeach; ?>




        </div>
    </div>


<?php  require_once 'layouts/footer.php'; ?>