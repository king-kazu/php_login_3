<?php
require_once('../classes/UserLogic.php');
require_once('../functions.php');
require_once('../dbconnect.php');
session_start();

$pdo = connect();

$result = UserLogic::checkLogin();

if (!$result) {
  $_SESSION['login_err'] = 'ユーザを登録してログインしてください！';
  header('Location: login_form.php');
  return;
}
    $sql = "SELECT * FROM images WHERE name=:name";
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':name', $name);
    $stmt->execute();
    $image = $stmt->fetch(); 
?>

<h1>画像表示</h1>
<img src="images/<?php echo $image['name']; ?>" width="300" height="300">
<a href="upload.php">画像アップロード</a>