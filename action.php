<?php
if (!empty($_POST))
{
 $fname = $_POST['fname'];
 echo "First name is <b>". $fname. "</b>";
  $lname = $_POST['lname'];
 echo "<br />Last name is <b>". $lname. "</b>";
 $email = $_POST['email'];
 echo "<br />Your email is: <b>". $email. "</b>";
 $add = $_POST['add'];
 echo "<br/>Your address is : <b>".$add. "</b>";
$pincode = $_POST['pincode'];
 echo "<br/>Your pincode is : <b>".$pincode. "</b>";
 $city = $_POST['city'];
 echo "<br />Your city is: <b>". $city. "</b>";
  $country = $_POST['country'];
 echo "<br />Your country is: <b>". $country. "</b>";
}
?>
