/*
Copyright (c) 2003-2011, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/
CKEDITOR.skins.add("BootstrapCK-Skin",function(){var e="cke_ui_color";return{editor:{css:["editor.css"]},dialog:{css:["dialog.css"]},richcombo:{canGroup:!1},templates:{css:["templates.css"]},margins:[0,0,0,0],init:function(t){function o(t){var n=t.getById(e);return n||(n=t.getHead().append("style"),n.setAttribute("id",e),n.setAttribute("type","text/css")),n}function u(e,t,n){var r,i,s;for(var o=0;o<e.length;o++)if(CKEDITOR.env.webkit)for(i=0;i<t.length;i++){s=t[i][1];for(r=0;r<n.length;r++)s=s.replace(n[r][0],n[r][1]);e[o].$.sheet.addRule(t[i][0],s)}else{s=t;for(r=0;r<n.length;r++)s=s.replace(n[r][0],n[r][1]);CKEDITOR.env.ie?e[o].$.styleSheet.cssText+=s:e[o].$.innerHTML+=s}}t.config.width&&!isNaN(t.config.width)&&(t.config.width-=12);var n=[],r=/\$color/g,i="/* UI Color Support */.cke_skin_BootstrapCK-Skin .cke_menuitem .cke_icon_wrapper{	background-color: $color !important;	border-color: $color !important;}.cke_skin_BootstrapCK-Skin .cke_menuitem a:hover .cke_icon_wrapper,.cke_skin_BootstrapCK-Skin .cke_menuitem a:focus .cke_icon_wrapper,.cke_skin_BootstrapCK-Skin .cke_menuitem a:active .cke_icon_wrapper{	background-color: $color !important;	border-color: $color !important;}.cke_skin_BootstrapCK-Skin .cke_menuitem a:hover .cke_label,.cke_skin_BootstrapCK-Skin .cke_menuitem a:focus .cke_label,.cke_skin_BootstrapCK-Skin .cke_menuitem a:active .cke_label{	background-color: $color !important;}.cke_skin_BootstrapCK-Skin .cke_menuitem a.cke_disabled:hover .cke_label,.cke_skin_BootstrapCK-Skin .cke_menuitem a.cke_disabled:focus .cke_label,.cke_skin_BootstrapCK-Skin .cke_menuitem a.cke_disabled:active .cke_label{	background-color: transparent !important;}.cke_skin_BootstrapCK-Skin .cke_menuitem a.cke_disabled:hover .cke_icon_wrapper,.cke_skin_BootstrapCK-Skin .cke_menuitem a.cke_disabled:focus .cke_icon_wrapper,.cke_skin_BootstrapCK-Skin .cke_menuitem a.cke_disabled:active .cke_icon_wrapper{	background-color: $color !important;	border-color: $color !important;}.cke_skin_BootstrapCK-Skin .cke_menuitem a.cke_disabled .cke_icon_wrapper{	background-color: $color !important;	border-color: $color !important;}.cke_skin_BootstrapCK-Skin .cke_menuseparator{	background-color: $color !important;}.cke_skin_BootstrapCK-Skin .cke_menuitem a:hover,.cke_skin_BootstrapCK-Skin .cke_menuitem a:focus,.cke_skin_BootstrapCK-Skin .cke_menuitem a:active{	background-color: $color !important;}";if(CKEDITOR.env.webkit){i=i.split("}").slice(0,-1);for(var s=0;s<i.length;s++)i[s]=i[s].split("{")}var f=/\$color/g;CKEDITOR.tools.extend(t,{uiColor:null,getUiColor:function(){return this.uiColor},setUiColor:function(e){var r,s=o(CKEDITOR.document),a="."+t.id,l=[a+" .cke_wrapper",a+"_dialog .cke_dialog_contents",a+"_dialog a.cke_dialog_tab",a+"_dialog .cke_dialog_footer"].join(","),p="background-color: $color !important;";return CKEDITOR.env.webkit?r=[[l,p]]:r=l+"{"+p+"}",(this.setUiColor=function(e){var o=[[f,e]];t.uiColor=e,u([s],r,o),u(n,i,o)})(e)}}),t.on("menuShow",function(e){var r=e.data[0],s=r.element.getElementsByTag("iframe").getItem(0).getFrameDocument();if(!s.getById("cke_ui_color")){var a=o(s);n.push(a);var l=t.getUiColor();l&&u([a],i,[[f,l]])}}),t.config.uiColor&&t.setUiColor(t.config.uiColor)}}}()),function(){function e(){CKEDITOR.dialog.on("resize",function(e){var t=e.data,n=t.width,r=t.height,i=t.dialog,s=i.parts.contents;if(t.skin!="BootstrapCK-Skin")return;s.setStyles({width:n+"px",height:r+"px"})})}CKEDITOR.dialog?e():CKEDITOR.on("dialogPluginReady",e)}();