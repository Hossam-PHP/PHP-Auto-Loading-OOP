# PHP-Restful-Api-OOP-

Project Run steps 
1- You have sql file import it . (hossamapi.sql) 
2- Put project folder in xampp/htdocs or any local server you want . 
3- Go to postman and run this api urls :-

--------------------------------------------------------------------

APIS :

1. READ BOOKS ( Read All ): (Get) http://localhost/PHP_Restful_Api_OOP/book/getAll.php

############################## 

2. CREATE BOOK : (POST) http://localhost/PHP_Restful_Api_OOP/book/create.php

Data to insert : 
{ 
    "name" : "Amazing keivy 20.0", 
    "isbn" : "4-7555-66777", 
    "author" : "The best pillow for amazing readers.", 
    "category_id" : 2, 
    "publish_date" : "2018-06-01 00:35:07" 
 }

############################## 

3. READ ONE BOOK : (Get) http://localhost/PHP_Restful_Api_OOP/book/read_one.php?id=60 

############################## 

4. PAGINATE BOOKS : (Get) http://localhost/PHP_Restful_Api_OOP/book/read_paging.php?page=3