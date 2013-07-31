/*
 Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
 For licensing, see LICENSE.html or http://ckeditor.com/license
*/
(function(){CKEDITOR.on("instanceReady",function(e){var e=e.editor,t=CKEDITOR.document.$.getElementsByName("ckeditor-sample-required-plugins"),t=t.length?CKEDITOR.dom.element.get(t[0]).getAttribute("content").split(","):[],n=[];if(t.length){for(var r=0;r<t.length;r++)e.plugins[t[r]]||n.push("<code>"+t[r]+"</code>");n.length&&CKEDITOR.dom.element.createFromHtml('<div class="warning"><span>To fully experience this demo, the '+n.join(", ")+" plugin"+(1<n.length?"s are":" is")+" required.</span></div>").insertBefore(e.container)}})})();