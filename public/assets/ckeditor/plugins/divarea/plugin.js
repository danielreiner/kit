/**
 * @license Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */
/**
 * @fileOverview The "divarea" plugin. It registers the "wysiwyg" editing
 *		mode using a DIV element.
 */
CKEDITOR.plugins.add("divarea",{afterInit:function(e){e.addMode("wysiwyg",function(t){var n=CKEDITOR.dom.element.createFromHtml('<div class="cke_wysiwyg_div cke_reset" hidefocus="true"></div>'),r=e.ui.space("contents");r.append(n),n=e.editable(n),n.detach=CKEDITOR.tools.override(n.detach,function(e){return function(){e.apply(this,arguments),this.remove()}}),e.setData(e.getData(1),t),e.fire("contentDom")})}});