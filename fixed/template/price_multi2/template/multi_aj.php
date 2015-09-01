<?php
	require_once("func.php");
	$l=db_connect();

	if(isset($_POST['action'])) {
		$action = htmlspecialchars($_POST['action']);
		$price_id = intval($_POST['price_id']);
		$cat_id = intval($_POST['cat_id']);

		switch ($action) {
			case 'get_options':
				$query = "SELECT `po`.`id` AS `option_id`, `po`.`ru` AS `option_name`, `pcl`.`ru` AS `price_desc_ru` 
						  FROM `price_catlist` AS `pcl`
						  INNER JOIN `price_options` AS `po` ON `po`.`id` = `pcl`.`option_id`
						  WHERE `pcl`.`price_id` = {$price_id} AND `pcl`.`category_id` = {$cat_id}";
				$result = fetchAll($query);
				break;
			
			default:
				# code...
				break;
		}

		echo json_encode($result);
	}
?>