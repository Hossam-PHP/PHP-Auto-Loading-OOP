<?php

//  - file that will output "books" JSON data with pagination.


// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
 
// include database and object files
require '../vendor/autoload.php';
include_once '../config/core.php';
use Config\Database;
use Objects\Book;
use Shared\Utilities;

// utilities
$utilities = new Utilities();
 
// instantiate database and book object - initialize object
$book = new Book(new Database);
 
// query books
$stmt = $book->readPaging($from_record_num, $records_per_page);
$num = $stmt->rowCount();
 
// check if more than 0 record found
if($num>0){
 
    // books array
    $books_arr=array();
    $books_arr["records"]=array();
    $books_arr["paging"]=array();
 
    // retrieve our table contents
    // fetch() is faster than fetchAll()
    // http://stackoverflow.com/questions/2770630/pdofetchall-vs-pdofetch-in-a-loop
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        // extract row
        // this will make $row['name'] to
        // just $name only
        extract($row);
 
        $book_item=array(
            "id" => $id,
            "name" => $name,
            "author" => html_entity_decode($author),
            "isbn" => $isbn,
            "category_id" => $category_id,
            "category_name" => $category_name
        );
 
        array_push($books_arr["records"], $book_item);
    }
 
 
    // include paging
    $total_rows=$book->count();
    $page_url="{$home_url}book/read_paging.php?";
    $paging=$utilities->getPaging($page, $total_rows, $records_per_page, $page_url);
    $books_arr["paging"]=$paging;
 
    // set response code - 200 OK
    http_response_code(200);
 
    // make it json format
    echo json_encode($books_arr);
}
 
else{
 
    // set response code - 404 Not found
    http_response_code(404);
 
    // tell the user books does not exist
    echo json_encode(
        array("message" => "No books found.")
    );
}
?>