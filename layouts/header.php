<?php
require_once 'cookies_sessions/session_on.php';
require_once 'components/database.php';
if(isset ($_SESSION['id'])) {
    $user_id = $_SESSION['id'];
}
else{
    $user_id = "";
}


$db->where('id',"$user_id");
$data = $db->get($tableName = 'users',$numRows = null,   $columns = '*');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>News universe</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/fontawesome.css">
    <script src="ckeditor/ckeditor.js"></script>
</head>
<body>
<div class="container-fluid ">
    <div class="container header " >
        <div class="navigation">
            <nav class="row ">
                <div class="col-md-4 nav_bottom " id="logo"><a href="index.php"><h2 >Ne<i>W</i>s Corner</h2></a></div>
                <div class="col-md-8  nav_bottom">
                    <ul>
                        <li class="nav"><a class="nav_href" href="index.php">Home</a></li>
                        <li class="nav"><a class="nav_href" href="about_us.php">About</a></li>
                        <li class="nav"><a class="nav_href" href="contact.php">Contact</a></li>
                        <li class="nav"><a class="nav_href" href="category_nav.php">Categories</a></li>

                        <?php
                        if (check_session()):
                        ?>
                        <?php  foreach ($data as $user):?>
                            <li class="nav"><a class="nav_href" href="log_out.php">Log out</a></li>
                            <li class="nav"><a class="nav_href" href="welcome.php" title = "Profile">
                                    <?= $user['f_name']?>
                                    <img  class="profile_image"  src="uploads/profiles/<?php echo $user['profile_path'];  ?>" alt="">
                                </a></li>
                        <?php endforeach;?>
                        <?php  else:  ?>
                            <li class="nav"><a class="nav_href" href="sign_up.php">Sign up</a></li>
                            <li class="nav" ><a class="nav_href" href="log_in.php">Log in</a></li>

                        <?php endif; ?>



                    </ul>
                </div>
                <div class="container header_background_image"></div>
            </nav>

        </div>

    </div>