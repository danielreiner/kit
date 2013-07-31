/*
* Embed Media Dialog based on http://www.fluidbyte.net/embed-youtube-vimeo-etc-into-ckeditor
*
* Plugin name:      mediaembed
* Menu button name: MediaEmbed
*
* Youtube Editor Icon
* http://paulrobertlloyd.com/
*
* @author Fabian Vogelsteller [frozeman.de]
* @version 0.1
*/
(function(){CKEDITOR.plugins.add("MediaEmbed",{init:function(e){var t=this;CKEDITOR.dialog.add("MediaEmbedDialog",function(){return{title:"Embed Media",minWidth:550,minHeight:200,contents:[{id:"iframe",expand:!0,elements:[{id:"embedArea",type:"textarea",label:"Paste Embed Code Here",autofocus:"autofocus",setup:function(e){},commit:function(e){}}]}],onOk:function(){for(var t=0;t<window.frames.length;t++)if(window.frames[t].name=="iframeMediaEmbed")var n=window.frames[t].document.getElementById("embed").value;e.insertHtml(this.getContentElement("iframe","embedArea").getValue())}}}),e.addCommand("MediaEmbed",new CKEDITOR.dialogCommand("MediaEmbedDialog")),e.ui.addButton("MediaEmbed",{label:"Embed Media",command:"MediaEmbed",icon:this.path+"images/icon.png"})}})})();