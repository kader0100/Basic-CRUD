# **Basic-CRUD**

## **Overview**  
This project provides a basic CRUD (Create, Read, Update, Delete) system using **PHP (MySQLi) and MySQL**. The included files handle database interactions, menu navigation, and data management.  

---

## **Files Included**  

### **Core Files:**  
- `config.php` – Database connection settings.  
- `index.php` – Main/home page.  
- `menu.php` – Navigation menu.  
- `footer.php` – Footer (copyright page).  

### **CRUD Operations:**  
- `add.php` – Add new records.  
- `list.php` – Display records in a table.  
- `list2.php` – Display data from two related tables.  
- `update.php` – Update existing records.  
- `delete.php` – Delete records.  

### **Database & Data:**  
- `ims506.sql` – Sample database structure and dummy data (recommended import format).  
- `ims506.csv` – Sample data in CSV format for import.  

### **Additional Files:**  
- `dropMenu.php` – Dropdown menu selection for "pelanggan" (customers).  

---

## **Setup & Configuration**  

### **1. Configure Database Connection**  
Edit `config.php` to match your hosting settings (Lines **4-7**):  
```php
$host = "localhost";
$username = "your_username"; // Change from 'root' if needed  
$password = "your_password"; // Set your database password  
$database = "your_database_name"; // Change from 'ims506' to your DB name  
$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
```

### **2. Customize Homepage**  
Modify `index.php` to fit your project’s content and requirements.  

### **3. Adjust List Page (list.php)**  
#### Change the table name:  
```php
$sql = "SELECT * FROM pelanggan"; // Change 'pelanggan' to your table name  
```
#### Modify column names and headings:  
```php
<th>ID</th>
<th>Name</th>
<th>Father's Name</th>
```
```php
<td> <?= $row["idPelanggan"]; ?> </td>
<td> <?= $row["namaSendiri"]; ?> </td>
<td> <?= $row["namaBapa"]; ?> </td>
```
Update `["]` to match your database structure.  

### **4. Adjust List from Two Tables (list2.php)**  
Modify the SQL query to retrieve related data using primary and foreign keys.  

### **5. Update Menu (menu.php)**  
Modify menu items as needed.  

### **6. Customize Update Functionality (update.php)**  
#### Ensure table name matches:  
```php
$sql = "SELECT * FROM pelanggan"; // Change 'pelanggan' to your table name  
```
#### Update primary key and column names:  
```php
if (empty(trim($_POST["idPelanggan"]))) { // Change 'idPelanggan' to your primary key  
```
Modify variable assignments:  
```php
$idPelanggan = trim($_POST['idPelanggan']);
$namaSendiri = trim($_POST['namaSendiri']);
$namaBapa = trim($_POST['namaBapa']);
```
Make sure these match your database columns.  

#### Update the form data retrieval:  
```php
($_POST['idPelanggan']), ($_POST['namaSendiri']), ($_POST['namaBapa'])
```
Modify as needed if you have more fields.  

---

## **Remarks**  
This is a **basic CRUD system** that you **must modify** to fit your project’s needs. You may also use any CRUD template from the internet at your own risk.  

This project is **based on W3Schools PHP & MySQL tutorials** and has been modified for better functionality. You are free to integrate frameworks or enhance the UI/UX as needed.  

---

This version makes the guide **easier to read and follow** while maintaining clarity and structure. 🚀 Let me know if you need further refinements!


