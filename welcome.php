<?php
require_once 'components/database.php';
require_once 'layouts/header.php';
require_once 'cookies_sessions/session_on.php';



if(isset($_SESSION['id'])) {
    $id = $_SESSION['id'];

    // var_dump($_SESSION);die();


    $db->join("countries c", "u.country_id=c.id", "LEFT");
    $db->where('u.id', $id);
    $data = $db->get("users u", null, "u.*,c.title");

    foreach ($data as $item) {
        // print_r ($user);die();
$f_name = $item['f_name'];
$l_name = $item['l_name'];
$img = $item['profile_path'];
$country = $item['title'];
$email = $item['email'];
      //  print_r($item); die();

    }
}
//var_dump($_SESSION);die();

?>


<?php
require_once 'layouts/left-sidebar.php';
?>
    <div class="col-md-9 right">

        <div class="container">
            <h2 class="about_info">Welcome <?= $f_name;?></h2>
            <img src ="uploads/profiles/<?= $img;?>"  class="profile_img_size">
            <ul>

                <li>Last Name: <?= $l_name ; ?></li>
                <li>Email address:  <?= $email; ?> </li>
                <li>Country: <?= $country ; ?> </li>


            </ul>
            <a href ="admin.php" class="admin">Please just enter here if you want to add news.</a>

        </div>
    </div>


<?php require_once 'layouts/footer.php'; ?>