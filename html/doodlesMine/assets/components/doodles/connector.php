<?php
require_once dirname(dirname(dirname(dirname(__FILE__)))).'/config.core.php';
require_once MODX_CORE_PATH.'config/'.MODX_CONFIG_KEY.'.inc.php';
require_once MODX_CONNECTORS_PATH.'index.php';
$corePath = $modx->getOption('doodles.core_path',null,$modx->getOption('core_path').'components/doodles/');
$modx->log(modX::LOG_LEVEL_ERROR, 'Calling connector: '. ($corePath));
        
require_once $corePath.'model/doodles/doodles.class.php';
$modx->doodles = new Doodles($modx);
$modx->lexicon->load('myDoodles:default');
/* handle request */
$path = $modx->getOption('processorsPath',$modx->doodles->config,$corePath.'processors/');
$modx->request->handleRequest(array(
    'processors_path' => $path,
    'location' => '',
));