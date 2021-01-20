id: 9
name: ResetPassword
description: 'Resets a password from a confirmation email.'
category: Login
properties: 'a:3:{s:3:"tpl";a:7:{s:4:"name";s:3:"tpl";s:4:"desc";s:27:"prop_resetpassword.tpl_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:15:"lgnResetPassTpl";s:7:"lexicon";s:16:"login:properties";s:4:"area";s:0:"";}s:7:"tplType";a:7:{s:4:"name";s:7:"tplType";s:4:"desc";s:31:"prop_resetpassword.tpltype_desc";s:4:"type";s:4:"list";s:7:"options";a:4:{i:0;a:2:{s:5:"value";s:8:"modChunk";s:4:"text";s:18:"opt_register.chunk";}i:1;a:2:{s:5:"value";s:4:"file";s:4:"text";s:17:"opt_register.file";}i:2;a:2:{s:5:"value";s:6:"inline";s:4:"text";s:19:"opt_register.inline";}i:3;a:2:{s:5:"value";s:8:"embedded";s:4:"text";s:21:"opt_register.embedded";}}s:5:"value";s:8:"modChunk";s:7:"lexicon";s:16:"login:properties";s:4:"area";s:0:"";}s:15:"loginResourceId";a:7:{s:4:"name";s:15:"loginResourceId";s:4:"desc";s:39:"prop_resetpassword.loginresourceid_desc";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:1:"1";s:7:"lexicon";s:16:"login:properties";s:4:"area";s:0:"";}}'

-----

/**
 * ResetPassword
 *
 * Copyright 2010 by Shaun McCormick <shaun@modx.com>
 *
 * ResetPassword is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation; either version 2 of the License, or (at your option) any
 * later version.
 *
 * ResetPassword is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * ResetPassword; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package login
 */
/**
 * MODx ResetPassword Snippet. Snippet to place on an activation
 * page that the user using the ForgotPassword snippet would be sent to via the
 * reset email.
 *
 * @package login
 */
if (empty($_REQUEST['lp']) || empty($_REQUEST['lu'])) {
    return '';
}
require_once $modx->getOption('login.core_path',null,$modx->getOption('core_path').'components/login/').'model/login/login.class.php';
$login = new Login($modx,$scriptProperties);

$controller = $login->loadController('ResetPassword');
$output = $controller->run($scriptProperties);
return $output;