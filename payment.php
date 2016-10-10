<?php
session_start();
include_once("config.php");
?>
 	<?php
	if(isset($_SESSION["cart_products"])) //check session var
    {
		$total = 0; //set initial total value
		$b = 0; //var for zebra stripe table 
		foreach ($_SESSION["cart_products"] as $cart_itm)
        {
			//set variables to use in content below
			$product_name = $cart_itm["product_name"];
			$product_qty = $cart_itm["product_qty"];
			$product_price = $cart_itm["product_price"];
			$product_code = $cart_itm["product_code"];
			$product_color = $cart_itm["product_color"];
			$subtotal = ($product_price * $product_qty); //calculate Price x Qty
			
		   	$bg_color = ($b++%2==1) ? 'odd' : 'even'; //class for zebra stripe 
        }
		
		}
		
		$grand_total = $total + $shipping_cost; //grand total including shipping cost
		foreach($taxes as $key => $value){ //list and calculate all taxes in array
				$tax_amount     = round($total * ($value / 100));
				$tax_item[$key] = $tax_amount;
				$grand_total    = $grand_total + $tax_amount;  //add tax val to grand total
		}
		
		$list_tax       = '';
		foreach($tax_item as $key => $value){ //List all taxes
			$list_tax .= $key. ' : '. $currency. sprintf("%01.2f", $value).'<br />';
		}
		$shipping_cost = ($shipping_cost)?'Shipping Cost : '.$currency. sprintf("%01.2f", $shipping_cost).'<br />':'';
	}
	
	$result = mysql_query("Select balance from users Where customer_name = 'Dharmendra'") or die mysql_error();
	
	?>

<?php
session_start();
include_once("config.php");

$result = mysql_query("Select balance from users Where customer_name = 'Dharmendra'") or die mysql_error();

$result = $result - $grand_total;

$update= mysql_query ("UPDATE users SET balance=$result WHERE customer_name='Dharmendra'");

echo'<h3>Your Transaction is Successful</h3>';
echo'<h2>Your Current balance is</h2>';
echo'<h1>$result</h1>';

>
