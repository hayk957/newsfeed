
<?php
$id = $_GET['id'];

if(!$id){
    header('location:'.$_SERVER['HTTP_REFERER']);
}

require_once 'components/database.php';

require_once 'layouts/header.php';
?>


<?php
require_once 'layouts/left-sidebar.php';
?>
<?php
$db->join("categories c", "c.id=n.category_id", "INNER");
$db->where('c.id',"$id");
$db->orderBy ("c.id","desc");
$data = $db->get("news n", null, "n.*, c.title");

?>
<div class="col-md-9 right">
    <?php if(!empty($data)) : ?>
        <div class="news_list row m-0 ">
            <?php foreach($data as $news):?>
            <div class="col-sm-6">
                <h4 class="title"><a href="view.php?id=<?php echo $news['id']; ?>"><?php echo $news['heading']; ?></a>
                </h4>
                <div class="image_container">
                    <img src="uploads/<?php echo $news['image_path']; ?>">
                </div>
                <div class="description"><?php echo $news['description']; ?></div>

                <div class="category">Category: <?php
                    echo $news['title'];

                    ?> </div>
            </div>
            <?php endforeach;  ?>
        </div>

<!--   categoriayi mej left join@ petq che, 2 hat sql grel aystex, vor stanam  category name   -->
    <?php endif;?>
</div>


<?php  require_once 'layouts/footer.php'; ?>
