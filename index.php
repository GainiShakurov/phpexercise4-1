<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Библиотека</title>
</head>
<style>
    table {
        border-spacing: 0;
        border-collapse: collapse;
    }

    table td, table th {
        border: 1px solid #ccc;
        padding: 5px;
    }

    table th {
        background: #eee;
    }
</style>
<body>

<h1>Библиотека</h1>

<form method="GET">
    <input type="text" name="isbn" placeholder="ISBN" value="<?php echo $_GET['isbn'] ?>" />
    <input type="text" name="name" placeholder="Название книги" value="<?php echo $_GET['name'] ?>" />
    <input type="text" name="author" placeholder="Автор книги" value="<?php echo $_GET['author'] ?>" />
    <input type="submit" value="Поиск" />
</form>
<p></p>

<?php

require "config.php";


$isbn = (!empty($_GET['isbn'])) ? " isbn LIKE '%".$_GET['isbn']."%' " : '';
$name = (!empty($_GET['name'])) ? " AND name LIKE '%".$_GET['name']."%' " : '';
$author = (!empty($_GET['author'])) ? " AND author LIKE '%".$_GET['author']."%' " : '';

$sql = "SELECT * FROM books ";

if ($isbn != '' || $name != '' || $author !='') {
    $sql .= "WHERE ";
}

$sql .= $isbn.$name.$author;

$res = mysqli_query($connect, $sql);

if ($res === false) {
    echo mysqli_error();
}

?>

<table>
    <thead>
    <th>Название</th>
    <th>Автор</th>
    <th>Год выпуска</th>
    <th>Жанр</th>
    <th>ISBN</th>

    </thead>
    <tbody>

    <?php

    while ($data = mysqli_fetch_assoc($res)) {
        echo '<tr>';
        echo '<td>'. $data['name'] .'</td>';
        echo '<td>'. $data['author'] .'</td>';
        echo '<td>'. $data['year'] .'</td>';
        echo '<td>'. $data['genre'] .'</td>';
        echo '<td>'. $data['isbn'] .'</td>';
        echo '</tr>';
    }

    ?>
    </tbody>
</table>
</body>
</html>