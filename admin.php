<?php //This starts the block of php scripting
//Add session_start() so that session variables below are available.
$username = $_POST['username']; //define the variable $username as being equal to the field username from a posted form

if(!isset($_SESSION['session']["logged_in"])) { //This could be correct but would probably be easier to define here and 
//on its originating page as $_SESSION['logged_in']
  header("Location: login.php");
} //If the user is not logged in display the login.php header. 
//The functions below will not work without a defined $username. Presumably if the user is not logged in, 
//there is no $_POST['username'] set.
//It makes sense to die() or exit() as part of this if statement.

if (isset($_GET['username']) 
{
  $username = filterinput($_POST['username']);  //should be filter_input(INPUT_POST, 'username') and optionally a filter
// although no filter is defined right now
// needs a }
// There are two ways this overall if statement makes sense. If lines 13 and 15 both use $_GET then it sets the username 
//if the variable is sent by Get instead of Post.
//If both are $_POST then it does essentially the same thing as line 3 but could optionally include a filter
//If line 13 is Get and line 15 is Post, then $username is set to the post if the Get is set, which is probably not useful.
//By this point either the user name is set or a login page is displayed. 
include("http://242.32.23.4/inc/admin.inc.php"); //Run the scripts on the referenced page as well as admin.php
//variables defined on admin.inc.php will only effect this page below this line.
if (isset($_GET['page_id'])) { //if a page id has been sent by Get 
  include('inc/inc' . $_GET['page_id'] . '.php'); //include the page inc/inc.(whatever the ID is).php
  include('inc/inc-base.php'); // also include this page
}

function filterinput($variable) //Define a function called filterinput
{
    $variable = str_replace("'", "\'", $variable); //replace with: ("\'", "\\'", $variable) replaces every ' in $variable with a \'
    $variable = str_replace(""", "\"", $variable); //("\"", "\\"", $variable), Replace every " with a \" in $variable
    return $variable; //send this as the value of this function
}

function getUserContent($username) //define a function called getUserContent
{
    $con=mysqli_connect("locahost","dbuser","abc123","my_db"); //connect to a database on my local machine with the username dbuser and password abc123 using schema my_db. This is the value of the variable $con.
    $result = mysqli_query($con,"SELECT user_content FROM users where username = ". $username); //Get the user_content value from the username table for the entry where the username column is the same as the $username variable. This is the value of the variable $result.
    $row = mysqli_fetch_array($result); //fetch the row from the databse that matches the variable $result above and set $row as an array with the values of that database row.
    return $row['user_content']; //Send the user_content column from the row selected above as the value of this function
    mysqli_close($con); //Close database connection
}

echo "<h1>Welcome, ". $username ."</h1>"; //Displays on the page a welcome message with the user's username

echo getUserContent($username); //Displays that user's user_content retrieved from the database in the getUserContent 
//function

?> 