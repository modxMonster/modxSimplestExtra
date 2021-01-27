<?php
/**
 * @package doodles
 * @subpackage controllers
 */
require_once dirname(MODX_BASE_PATH) . '/html/doodlesMine/core/components/doodles/model/doodles/doodles.class.php';
class MyDoodlesInitManagerController extends modExtraManagerController {
    /** @var Doodles $doodles */
    public $doodles;
    public function initialize() {
        $this->doodles = new Doodles($this->modx);

        // $this->modx->log(modX::LOG_LEVEL_ERROR, 'Will initializae: '. ($this->doodles->config['jsUrl'].'mgr/widgets/doodles.grid.js'));
        
        $this->addCss($this->doodles->config['cssUrl'].'mgr.css');
        $this->addJavascript($this->doodles->config['jsUrl'].'mgr/doodles.js');
        $this->addHtml('<script type="text/javascript">
        Ext.onReady(function() {
            Doodles.config = '.$this->modx->toJSON($this->doodles->config).';
        });
        </script>');
        // $this->modx->log(modX::LOG_LEVEL_ERROR, 'Will call parent and we are done: ');
        return parent::initialize();
    }
    public function getLanguageTopics() {
        return array('doodles:default');
    }
    public function checkPermissions() { return true;}
    public function process(array $scriptProperties = array()) {}
    public function getPageTitle() { return $this->modx->lexicon('myDoodles'); }
    public function loadCustomCssJs() {
        $this->addJavascript($this->doodles->config['jsUrl'].'mgr/widgets/doodles.grid.js');
        $this->addJavascript($this->doodles->config['jsUrl'].'mgr/widgets/home.panel.js');
        $this->addLastJavascript($this->doodles->config['jsUrl'].'mgr/sections/index.js');
    }
    public function getTemplateFile() {
        return $this->doodles->config['templatesPath'].'home.tpl';
    }
}