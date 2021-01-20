id: 3
name: ConfirmRegister
description: 'Handles activation of registered user.'
category: Login
properties: 'a:7:{s:10:"redirectTo";a:7:{s:4:"name";s:10:"redirectTo";s:4:"desc";s:36:"prop_confirmregister.redirectto_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"login:properties";s:4:"area";s:0:"";}s:14:"redirectParams";a:7:{s:4:"name";s:14:"redirectParams";s:4:"desc";s:40:"prop_confirmregister.redirectparams_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"login:properties";s:4:"area";s:0:"";}s:26:"redirectUnsetDefaultParams";a:7:{s:4:"name";s:26:"redirectUnsetDefaultParams";s:4:"desc";s:51:"prop_confirmregister.redirectUnsetDefaultParam_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:16:"login:properties";s:4:"area";s:0:"";}s:12:"authenticate";a:7:{s:4:"name";s:12:"authenticate";s:4:"desc";s:38:"prop_confirmregister.authenticate_desc";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:16:"login:properties";s:4:"area";s:0:"";}s:20:"authenticateContexts";a:7:{s:4:"name";s:20:"authenticateContexts";s:4:"desc";s:46:"prop_confirmregister.authenticatecontexts_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"login:properties";s:4:"area";s:0:"";}s:9:"errorPage";a:7:{s:4:"name";s:9:"errorPage";s:4:"desc";s:35:"prop_confirmregister.errorpage_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"login:properties";s:4:"area";s:0:"";}s:10:"activePage";a:7:{s:4:"name";s:10:"activePage";s:4:"desc";s:36:"prop_confirmregister.activepage_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:16:"login:properties";s:4:"area";s:0:"";}}'

-----

/**
 * Register
 *
 * Copyright 2010 by Shaun McCormick <shaun@modx.com>
 *
 * Register is free software; you can redistribute it and/or modify it under the
 * terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 *
 * Register is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * Register; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package login
 */
/**
 * MODx Confirm Register Activation Snippet. Snippet to place on an activation
 * page that the user using the Register snippet would be sent to via the
 * activation email.
 *
 * @var modX $modx
 * @var Login $login
 * @var array $scriptProperties
 *
 * @package login
 */
require_once $modx->getOption('login.core_path',null,$modx->getOption('core_path').'components/login/').'model/login/login.class.php';
$login = new Login($modx,$scriptProperties);

$controller = $login->loadController('ConfirmRegister');
$output = $controller->run($scriptProperties);
return $output;