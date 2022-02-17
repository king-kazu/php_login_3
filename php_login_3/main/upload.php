<?php
session_start();
require_once('../classes/UserLogic.php');
require_once('../functions.php');
require_once('../dbconnect.php');
// require_once('env.php');

$pdo = connect();

$result = UserLogic::checkLogin();

    if (isset($_POST['upload'])) { 
        $image = uniqid(mt_rand(), true); // ファイル名をユニーク化
        // 悪意のあるユーザーに、サーバーに不具合が発生するような名前を設定される恐れがある
        // 長い名前を設定されていると保存できない
        // 保存できないファイル名がある（?.jpgなど)
        $image .= '.' . substr(strrchr($_FILES['image']['name'], '.'), 1); // アップロードされたファイルの拡張子を取得
        $file = "images/{$image}";
        $sql = 'INSERT INTO images(name) VALUES (:image)';
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue(':image', $image, PDO::PARAM_STR);
        if (!empty($_FILES['image']['name'])) {// ファイルが選択されていればimageにファイル名を代入
            move_uploaded_file($_FILES['image']['tmp_name'], 'images/' . $image); //imagesディレクトリにファイル保存
            if (exif_imagetype($file)) {// 画像ファイルかのチェック
                $message = '画像をアップロードしました';
                $stmt->execute();
            } else {
                $message = '画像ファイルではありません';
            }
        }
    }
?>

<h1>作品アップロード</h1>
<!-- 送信ボタンが押された場合 -->
<?php if(isset($_POST['upload'])): ?>
    <p><?php echo $message; ?></p>
    <p><a href="image.php">画像表示へ</a></p>
<?php else: ?>
    <form method="post" enctype="multipart/form-data">
        <p>アップロード画像</p>
        <input type="file" name="image">
        <button><input type="submit" name="upload" value="送信"></button>        
    </form>
<?php endif; ?>