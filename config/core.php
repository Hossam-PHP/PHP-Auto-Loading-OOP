<?php

//  - file used for core configuration

/*
    - This file holds our core configuration like the home URL and pagination variables.

    - Open the config folder and create core.php file. Open core.php file and place the following code.

*/


// show error reporting
ini_set('display_errors', 1);
error_reporting(E_ALL);
 
// home page url
$home_url="https://test.acig/api/";
 
// page given in URL parameter, default page is one
$page = isset($_GET['page']) ? $_GET['page'] : 1;
 
// set number of records per page
$records_per_page = 5;
 
// calculate for the query LIMIT clause
$from_record_num = ($records_per_page * $page) - $records_per_page;
?>