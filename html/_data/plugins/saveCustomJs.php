id: 5
name: saveCustomJs
category: cssSweet
properties: 'a:7:{s:9:"js_chunks";a:7:{s:4:"name";s:9:"js_chunks";s:4:"desc";s:73:"Name of chunk, or comma-separated list of chunks, from which to parse JS.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:19:"csssweet:properties";s:4:"area";s:0:"";}s:11:"js_filename";a:7:{s:4:"name";s:11:"js_filename";s:4:"desc";s:42:"Name of file to output custom compiled JS.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:16:"custom_js.min.js";s:7:"lexicon";s:19:"csssweet:properties";s:4:"area";s:0:"";}s:8:"dev_mode";a:7:{s:4:"name";s:8:"dev_mode";s:4:"desc";s:16:"Enable DEV mode.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:6:"custom";s:7:"lexicon";s:19:"csssweet:properties";s:4:"area";s:4:"Mode";}s:7:"js_path";a:7:{s:4:"name";s:7:"js_path";s:4:"desc";s:61:"Full path for directory to which to OUTPUT the final JS file.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:19:"csssweet:properties";s:4:"area";s:0:"";}s:24:"context_settings_context";a:7:{s:4:"name";s:24:"context_settings_context";s:4:"desc";s:79:"The key of a single context from which to pull context settings for CSS values.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:19:"csssweet:properties";s:4:"area";s:0:"";}s:16:"minify_custom_js";a:7:{s:4:"name";s:16:"minify_custom_js";s:4:"desc";s:20:"Minify JS on output.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:19:"csssweet:properties";s:4:"area";s:12:"Minification";}s:23:"strip_js_comment_blocks";a:7:{s:4:"name";s:23:"strip_js_comment_blocks";s:4:"desc";s:35:"Strips JS comment blocks on output.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:19:"csssweet:properties";s:4:"area";s:12:"Minification";}}'

-----

/**
 * saveCustomJs
 * @author @sepiariver
 * Copyright 2013 - 2015 by YJ Tso <yj@modx.com> <info@sepiariver.com>
 *
 * saveCustomJs and cssSweet is free software;
 * you can redistribute it and/or modify it under the terms of the GNU General
 * Public License as published by the Free Software Foundation;
 * either version 2 of the License, or (at your option) any later version.
 *
 * saveCustomJs and cssSweet is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * saveCustomJs and cssSweet; if not, write to the Free Software Foundation, Inc.,
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package cssSweet
 *
 */

// Never fire on the front end
if ($modx->context->get('key') !== 'mgr') return;

// In case the wrong event is enabled in plugin properties
$allowedEvents = ['OnSiteRefresh', 'OnChunkFormSave', 'ClientConfig_ConfigChange', 'OnDocFormSave'];
if (!in_array($modx->event->name, $allowedEvents)) return;

// Support @sottwell's approach
if ($modx->event->name === 'OnDocFormSave') {
    if (!($resource instanceof modResource)) return;
    if ($resource->get('contentType') !== 'text/css') return;
}

// Grab the cssSweet clas
$csssweet = null;
$cssSweetPath = $modx->getOption('csssweet.core_path', null, $modx->getOption('core_path') . 'components/csssweet/');
$cssSweetPath .= 'model/csssweet/';
if (file_exists($cssSweetPath . 'csssweet.class.php')) $csssweet = $modx->getService('csssweet', 'CssSweet', $cssSweetPath);

if (!$csssweet || !($csssweet instanceof CssSweet)) {

    $modx->log(modX::LOG_LEVEL_ERROR, '[SaveCustomCss] could not load the required csssweet class!');
    return;
}

// Dev mode option
$mode = $modx->getOption('dev_mode', $scriptProperties, 'custom', true);
// Letting folks know what's going on
$modx->log(modX::LOG_LEVEL_INFO, 'saveCustomJs plugin is running in mode: ' . $mode);

// Override properties with mode props
$properties = $csssweet->getProperties($scriptProperties, $mode);

// Specify a comma-separated list of chunk names in plugin properties
$chunks = $csssweet->explodeAndClean($modx->getOption('js_chunks', $properties, ''));
// If no chunk names specified, there's nothing to do.
if (empty($chunks)) {
    $modx->log(modX::LOG_LEVEL_WARN, 'No chunks were set in the saveCustomJs plugin property js_chunks. No action performed.');
    return;
}

// Don't run this for every ChunkSave event
if ($modx->event->name === 'OnChunkFormSave' && !in_array($chunk->get('name'), $chunks)) return;

// Specify an output file name in plugin properties
$filename = $modx->getOption('js_filename', $properties, '');
if (empty($filename)) return;

// Optionally minify the output, defaults to 'true'
$minify_custom_js = (bool) $modx->getOption('minify_custom_js', $properties, true);

// Strip comment blocks; defaults to 'false'
$strip_comments = (bool) $modx->getOption('strip_js_comment_blocks', $properties, false);
$preserve_comments = ($strip_comments) ? false : true;

// Get the output path; construct fallback; log for info/debugging
$csssCustomJsPath = $modx->getOption('js_path', $properties, '');
if (empty($csssCustomJsPath)) $csssCustomJsPath = $modx->getOption('assets_path') . 'components/csssweet/' . $mode . '/js/';
$csssCustomJsPath = rtrim($csssCustomJsPath, '/') . '/';

$checkDir = $csssweet->checkDir($csssCustomJsPath, 'csssweet.saveCustomJs');
if ($checkDir['success']) {
    $modx->log(modX::LOG_LEVEL_WARN, $checkDir['message']);
} else {
    $modx->log(modX::LOG_LEVEL_ERROR, '$csssCustomJsPath error: ' . $checkDir['message']);
    return;
}

// Initialize settings array
$settings = array();

// Get context settings
$settings_ctx = $modx->getOption('context_settings_context', $properties, '');
if (!empty($settings_ctx)) {
    $settings_ctx = $modx->getContext($settings_ctx);
    if ($settings_ctx && is_array($settings_ctx->config)) $settings = array_merge($settings, $settings_ctx->config);
}

// Attempt to get Client Config settigs
$settings = $csssweet->getClientConfigSettings($settings);

/* Make settings available as [[++tags]] */
$modx->setPlaceholders($settings, '+');

// Parse chunk with $settings array
$contents = $csssweet->processChunks($chunks, $settings);

// If there's no result, what's the point?
if (empty($contents)) return;

// Comments
$contents = '/* Contents generated by MODX - this file will be overwritten. */' . PHP_EOL . $contents;
if ($preserve_comments) {
    // Add '!' token to preserve all comments
    $contents = str_replace(array('/*', '/*!'), '/*!', $contents);
} else {
    // We discard flagged comments if the strip_js_comment_blocks property is true. Good idea or no?
    $contents = str_replace('/*!', '/*', $contents);
}

// Define target file
$file = $csssCustomJsPath . $filename;

// Status report
$status = 'not';
if ($minify_custom_js) {
    $jshrink = $csssweet->jshrinkInit();
    // If we got the class, try minification. Log failures.
    if ($jshrink) {
        try {
            $contents = $jshrink::minify($contents, array('flaggedComments' => $preserve_comments));
            $status = '';
        } catch (Exception $e) {
            $modx->log(modX::LOG_LEVEL_ERROR, $e->getMessage() . '— js not compiled. Minification not performed.');
        }
    } else {
        $modx->log(modX::LOG_LEVEL_ERROR, 'Failed to load js Minifier class — js not compiled. Minification not performed.');
    }
}

// None of the minifiers seem to handle this correctly?
$contents = str_replace('!function', PHP_EOL . '!function', $contents);

// If we didnt' minify, output what we have
file_put_contents($file, $contents);
if (file_exists($file) && is_readable($file)) $modx->log(modX::LOG_LEVEL_INFO, 'Minification was ' . $status . ' performed. Custom JS saved to file: ' . $file);