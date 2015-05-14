<?						
$menu_sql = sql("SELECT * FROM katalog WHERE menu_hide = '0' ORDER BY menu");

$catalog=array(
	'list'=>array(),
	'structure'=>array(),
	'active'=>$id_page,
	);

if(mysql_num_rows($menu_sql)) {
	while($row=mysql_fetch_array($menu_sql)) {
		$catalog['list'][$row['id']]=$row;
		$catalog['structure'][$row['id_parent']][$row['id']]=&$catalog['list'][$row['id']];
	}
	mysql_data_seek($menu_sql,0);
}

$smarty->assign("menu_tree", $catalog);
$smarty->display('main_nav.tpl');
$smarty->clear_all_assign();
?>