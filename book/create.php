<?php

//  - file that will accept posted book data to be saved to database.


// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 
// include database and object files
require '../vendor/autoload.php';
use Config\Database;
use Objects\Book;
 
$book = new Book(new Database);
 
// get posted data
$data = json_decode(file_get_contents("php://input"));

// var_dump($data);
// die();
 
// make sure data is not empty
if(
    !empty($data->name) &&
    !empty($data->isbn) &&
    !empty($data->author) &&
    !empty($data->category_id)
){
 
    // set book property values
    $book->name = $data->name;
    $book->isbn = $data->isbn;
    $book->author = $data->author;
    $book->category_id = $data->category_id;
    $book->created_at = date('Y-m-d H:i:s');
 
    if($book->create() === 2){
 
        // set response code - 400 bad request
        http_response_code(400);
 
        // tell the user
        echo json_encode(array("message" => "Name Or Isbn Not Unique .."));
    }else {
        // set response code - 201 created
        http_response_code(201);
 
        // tell the user
        echo json_encode(array("message" => "Book was created."));
    }
}
 
// tell the user data is incomplete
else{
 
    // set response code - 400 bad request
    http_response_code(400);
 
    // tell the user
    echo json_encode(array("message" => "Unable to create book. Data is incomplete."));
}
?>