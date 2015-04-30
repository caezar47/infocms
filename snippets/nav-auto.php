<?php
$base_name = basename($_SERVER['SCRIPT_NAME'], 1);
$row = sqlval("select id, id_parent from katalog where language_id='1' and status_id='3' and menu_hide='0' and file_name='{$base_name}'");
$selected[] = $row['id'];
while ( $row['id_parent'] != 0 ) {
	$row = sqlval("select id, id_parent from katalog where language_id='1' and status_id='3' and menu_hide='0' and id='{$row['id_parent']}'");
	$selected[] = $row['id'];
}

$result = sql("select * from katalog where  language_id='1' and status_id='3' and menu_hide='0' order by menu asc, katalog.id asc");
while($row = sqlget($result)){
      $menu[$row['id_parent']][$row['id']] = array("name" => $row['name'], "file_name" => $row['file_name']);
}
ShowMenu( $menu, $selected );
?>  