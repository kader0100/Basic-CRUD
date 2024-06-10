# Basic-CRUD

Files included:
add.php - add new record
config.php - connection setting to mysql
delete.php - delete record
footer.php - copyright page
index.php - main page/home page
list.php - list record in table
list2.php - list record in 2 table (record)
menu.php - list of main menu
README.md - this files
update.php - update record
ims506.sql - dummy data in sql format, use to import to mysql (recommended .sql)
ims506.csv - dummy data in csv format, use to import to mysql

new file
dropMenu.php -  have drop down menu selected from pelanggan

Step:
1. Change line in the config.php accordingly to your hosting setting, especially username (root to yourusername), password and database name (ims506 to your db name). involve in line 4 to 7 only.


2. Change content in index.php according to your content


3. In list.php

		$sql = "SELECT * FROM pelanggan";

pelanggan is your table name, change accordingly.

		<th>ID</th>
		<th>Name</th>
		<th>Bapa</th>

<th> this is the table heading, change accordingly.

		<td> ". $row["idPelanggan"]. " </td>
		<td> ". $row["namaSendiri"]. " </td>
		<td> " . $row["namaBapa"] . "</td>

[""] this the column name in the table db, change accordingly.


4. list2.php are the same but in this function to collect the data from 2 table, using primary key and foreign key


5. menu.php list the menu, change accordingly.


6. update.php

		$sql = "SELECT * FROM pelanggan";

pelanggan is your table name, same with list.php, change accordingly.


 		if(empty(trim(isset($_POST["idPelanggan"])))){

in line 40, idPelanggan, the primary key, change accordingly. Add more if you have more column in table


       		$idPelanggan= trim($_POST['idPelanggan']);
       		$namaSendiri= trim($_POST['namaSendiri']);
       		$namaBapa= trim($_POST['namaBapa']);	

$idPelanggan, $namaSendiri, $namaBapa is variable, change accrodingly, Add more if you have more column in table

		($_POST['idPelanggan']), ($_POST['namaSendiri']),
($_POST['namaBapa'])


'' inside is data name from form, Add more if you have more input in form



Remarks:
This only basic CRUD (create,Retrieve, Update, Delete), you have to modify the .php files accordingly to you needs. Or you may choose any CRUD template in the internet if you want to but own risk/time/understanding. 

This were taken and modified from w3cschool website subtopic php and mysql notes. Your may use any framework to enrich the design and output for the system.


