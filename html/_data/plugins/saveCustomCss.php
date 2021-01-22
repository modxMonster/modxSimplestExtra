id: 4
name: saveCustomCss
category: cssSweet
properties: 'a:9:{s:11:"scss_chunks";a:7:{s:4:"name";s:11:"scss_chunks";s:4:"desc";s:77:"Name of chunk, or comma-separated list of chunks, from which to parse (S)CSS.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:20:"csss.custom_css.scss";s:7:"lexicon";s:19:"csssweet:properties";s:4:"area";s:0:"";}s:12:"css_filename";a:7:{s:4:"name";s:12:"css_filename";s:4:"desc";s:43:"Name of file to output custom compiled CSS.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:18:"custom_css.min.css";s:7:"lexicon";s:19:"csssweet:properties";s:4:"area";s:0:"";}s:8:"dev_mode";a:7:{s:4:"name";s:8:"dev_mode";s:4:"desc";s:16:"Enable DEV mode.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:6:"custom";s:7:"lexicon";s:19:"csssweet:properties";s:4:"area";s:4:"Mode";}s:8:"css_path";a:7:{s:4:"name";s:8:"css_path";s:4:"desc";s:62:"Full path for directory to which to OUTPUT the final CSS file.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:19:"csssweet:properties";s:4:"area";s:0:"";}s:24:"context_settings_context";a:7:{s:4:"name";s:24:"context_settings_context";s:4:"desc";s:79:"The key of a single context from which to pull context settings for CSS values.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:19:"csssweet:properties";s:4:"area";s:0:"";}s:17:"minify_custom_css";a:7:{s:4:"name";s:17:"minify_custom_css";s:4:"desc";s:58:"Minify CSS on output. MUST be enabled for SCSS processing.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:1;s:7:"lexicon";s:19:"csssweet:properties";s:4:"area";s:21:"SCSS and Minification";}s:17:"scss_import_paths";a:7:{s:4:"name";s:17:"scss_import_paths";s:4:"desc";s:99:"Optionally set import paths to check for SCSS imports. All @import paths must be relative to these.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:0:"";s:7:"lexicon";s:19:"csssweet:properties";s:4:"area";s:21:"SCSS and Minification";}s:24:"strip_css_comment_blocks";a:7:{s:4:"name";s:24:"strip_css_comment_blocks";s:4:"desc";s:69:"Strips CSS comment blocks on output, only IF minification is ENABLED.";s:4:"type";s:13:"combo-boolean";s:7:"options";s:0:"";s:5:"value";b:0;s:7:"lexicon";s:19:"csssweet:properties";s:4:"area";s:21:"SCSS and Minification";}s:17:"css_output_format";a:7:{s:4:"name";s:17:"css_output_format";s:4:"desc";s:98:"Choose either ''Expanded'' (default), ''Nested'' or ''Compact'' CSS output, IF minification is DISABLED.";s:4:"type";s:9:"textfield";s:7:"options";s:0:"";s:5:"value";s:8:"Expanded";s:7:"lexicon";s:19:"csssweet:properties";s:4:"area";s:21:"SCSS and Minification";}}'

-----

/**
 * saveCustomCss
 * @author @sepiariver
 * Copyright 2013 - 2015 by YJ Tso <yj@modx.com> <info@sepiariver.com>
 *
 * saveCustomCss and cssSweet is free software;
 * you can redistribute it and/or modify it under the terms of the GNU General
 * Public License as published by the Free Software Foundation;
 * either version 2 of the License, or (at your option) any later version.
 *
 * saveCustomCss and cssSweet is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * saveCustomCss and cssSweet; if not, write to the Free Software Foundation, Inc.,
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

// Grab the cssSweet class
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
$modx->log(modX::LOG_LEVEL_INFO, 'saveCustomCss plugin is running in mode: ' . $mode);

// Override properties with mode props
$properties = $csssweet->getProperties($scriptProperties, $mode);

// Specify a comma-separated list of chunk names in plugin properties
$chunks = $csssweet->explodeAndClean($modx->getOption('scss_chunks', $properties, ''));
// If no chunk names specified, there's nothing to do.
if (empty($chunks)) {
    $modx->log(modX::LOG_LEVEL_WARN, 'No chunks were set in the saveCustomCss plugin property scss_chunks. No action performed.');
    return;
}

// Don't run this for every ChunkSave event
if ($modx->event->name === 'OnChunkFormSave' && !in_array($chunk->get('name'), $chunks)) return;

// Specify an output file name in plugin properties
$filename = $modx->getOption('css_filename', $properties, '');
if (empty($filename)) return;

// Optionally choose an output format if not minified
$css_output_format = $modx->getOption('css_output_format', $properties, 'Expanded');
$css_output_format_options = array('Expanded', 'Nested', 'Compact');
if (!in_array($css_output_format, $css_output_format_options)) $css_output_format = 'Expanded';

// Optionally minify the output, defaults to 'true'
$minify_custom_css = (bool) $modx->getOption('minify_custom_css', $properties, true);
$css_output_format = ($minify_custom_css) ? 'Compressed' : $css_output_format;

// Strip CSS comment blocks; defaults to 'false'
$strip_comments = (bool) $modx->getOption('strip_css_comment_blocks', $properties, false);
$css_output_format = ($minify_custom_css && $strip_comments) ? 'Crunched' : $css_output_format;

// Optionally set base_path for scss imports
$scss_import_paths = $modx->getOption('scss_import_paths', $properties, '');
$scss_import_paths = (empty($scss_import_paths)) ? array() : $csssweet->explodeAndClean($scss_import_paths);

// Get the output path; construct fallback; log for debugging
$csssCustomCssPath = $modx->getOption('css_path', $properties, '');
if (empty($csssCustomCssPath)) $csssCustomCssPath = $modx->getOption('assets_path') . 'components/csssweet/' . $mode . '/';
$csssCustomCssPath = rtrim($csssCustomCssPath, '/') . '/';

$checkDir = $csssweet->checkDir($csssCustomCssPath, 'csssweet.saveCustomCss');
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

// CSS comments
$contents = '/* Contents generated by MODX - this file will be overwritten. */' . PHP_EOL . $contents;
// The scssphp parser keeps comments with !
if (!$strip_comments) $contents = str_replace('/*', '/*!', $contents);

// Define target file
$file = $csssCustomCssPath . $filename;

// Init scssphp
$scssMin = $csssweet->scssphpInit($scss_import_paths, $css_output_format);
if ($scssMin) {
    try {
        $contents = $scssMin->compile($contents);
    } catch (Exception $e) {
        $modx->log(modX::LOG_LEVEL_ERROR, $e->getMessage() . ' scss not compiled. minification not performed.', '', 'saveCustomCss');
    }
} else {
    $modx->log(modX::LOG_LEVEL_ERROR, 'Failed to load scss class. scss not compiled. minification not performed.', '', 'saveCustomCss');
}

// If we failed scss and minification at least output what we have
file_put_contents($file, $contents);
if (file_exists($file) && is_readable($file)) $modx->log(modX::LOG_LEVEL_INFO, 'Success! Custom CSS saved to file "' . $file . '"', '', 'saveCustomCss');