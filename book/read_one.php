<?php

//  -  file that will accept book ID to read a record from the database.

// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Credentials: true");
header('Content-Type: application/json');
 
// include database and object files
require '../vendor/autoload.php';
use Config\Database;
use Objects\Book;
 

// get database connection - prepare book object
$book = new Book(new Database);
 
// set ID property of record to read
$book->id = isset($_GET['id']) ? $_GET['id'] : die();
 
// read the details of book to be edited
$book->readOne();
 
if($book->name!=null){
    // create array
    $book_arr = array(
        "id" =>  $book->id,
        "name" => $book->name,
        "author" => $book->author,
        "isbn" => $book->isbn,
        "category_id" => $book->category_id,
        "category_name" => $book->category_name
 
    );
 
    // set response code - 200 OK
    http_response_code(200);
 
    // make it json format
    echo json_encode($book_arr);
}
 
else{
    // set response code - 404 Not found
    http_response_code(404);
 
    // tell the user book does not exist
    echo json_encode(array("message" => "Book does not exist."));
}
?>