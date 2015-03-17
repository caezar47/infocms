<?php
	if ($_GET['item_id'] != '') {
		$_GET['item_id'] = (int)$_GET['item_id'];
		$PriceModule->view(array ('id' => $_GET['item_id']));
	} elseif ($_GET['cat_id'] != '') {
		$_GET['cat_id'] = (int)$_GET['cat_id'];
		$parent = sqlval("select id from price_katalog where id_parent = {$_GET['cat_id']}");
		if (empty($parent)) {
			$PriceModule->index(array ('section_include' => array ($_GET['cat_id']), 'pagination' => true, 'limit' => 12));
		} else {
			$PriceModule->section(array ('parent_id' => $_GET['cat_id'], 'template' => 'price_child.tpl'));
		}
	} else {
		$PriceModule->section(array ());
	}
	?>

<?php
	$PriceModule->nav(array());
?>