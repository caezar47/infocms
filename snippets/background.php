<?php
$sql = "SELECT backgrounds.foto, backgrounds.height, backgrounds.repeat, backgrounds.color, backgrounds.position FROM katalog INNER JOIN backgrounds ON katalog.id_fon=backgrounds.id WHERE katalog.id = '".$id_page."'";
$res = fetchAll($sql);
if(count($res)>0){
$param = array();
$param = $res[0];
}

$smarty->assign('data',$param);
$smarty->display('background.tpl');
?>	