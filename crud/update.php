<?php
require("inc/db.php");

if ($_POST) {
    $id = (int) $_POST['id'];
    $barcode = trim($_POST['barcode']);
    $name = trim($_POST['name']);
    $price = (float)$_POST['price'];
    $qty = (int)$_POST['qty'];
    $image = trim($_POST['image']);
    $description = trim($_POST['description']);

    try {
        $sql = 'UPDATE products 
        SET barcode = :barcode, name = :name, price = :price, qty = :qty, image = :image,
        description = :description
        WHERE id = :id';

        $stmt = $conn->prepare($sql);
        $stmt->bindParam(":barcode", $barcode);
        $stmt->bindParam(":name", $name);
        $stmt->bindParam(":price", $price);
        $stmt->bindParam(":qty", $qty);
        $stmt->bindParam(":image", $image);
        $stmt->bindParam(":description", $description);
        $stmt->bindParam(":id", $id);
        $stmt->execute();

        if ($stmt->rowCount()) {
            header("Location: edit.php?id=".$id."$status=updated");
            exit();
        } else {
            header("Location: edit.php?id=".$id."$status=fail_update");
            exit();
        }
    } catch (Exception $e) {
        // Log the error instead of echoing it directly
        error_log("Error: " . $e->getMessage());
        
        // Display a generic error message to the user
        header("Location: edit.php?id=".$id."$status=fail_update");
        exit();
    }
} else {
    header("Location: edit.php?id=".$id."$status=fail_update");
    exit();
}
?>
