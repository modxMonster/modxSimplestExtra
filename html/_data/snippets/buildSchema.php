id: 37
source: 1
name: buildSchema
properties: 'a:0:{}'
static_file: doodles/_build/build.schema.php

-----

$base_path = dirname(dirname(MODX_BASE_PATH)).'/www/html/doodlesMine/_build/';
/* change above line to your path */
$o = '';
$f = $base_path.'build.schema.php';
if (file_exists($f)) {
   $o = include $f;
} else {
   $modx->setLogTarget('ECHO');
   $modx->log(modX::LOG_LEVEL_ERROR, 'Not found at: '.$f);
}
return $o;