(function(){function e(e,i){var s=e.getCursor(),o=e.getTokenAt(s),u=CodeMirror.innerMode(e.getMode(),o.state),a=u.state;if("xml"!=u.mode.name)return CodeMirror.Pass;var f=e.getOption("autoCloseTags"),c="html"==u.mode.configuration,u="object"==typeof f&&f.dontCloseTags||c&&n,c="object"==typeof f&&f.indentTags||c&&r;if(">"==i&&a.tagName){f=a.tagName,o.end>s.ch&&(f=f.slice(0,f.length-o.end+s.ch));var h=f.toLowerCase();if("tag"==o.type&&"closeTag"==a.type||/\/\s*$/.test(o.string)||u&&-1<t(u,h))return CodeMirror.Pass;a=(o=c&&-1<t(c,h))?CodeMirror.Pos(s.line+1,0):CodeMirror.Pos(s.line,s.ch+1),e.replaceSelection(">"+(o?"\n\n":"")+"</"+f+">",{head:a,anchor:a}),o&&(e.indentLine(s.line+1),e.indentLine(s.line+2))}else{if("/"!=i||"<"!=o.string)return CodeMirror.Pass;(f=a.context&&a.context.tagName)&&e.replaceSelection("/"+f+">","end")}}function t(e,t){if(e.indexOf)return e.indexOf(t);for(var n=0,r=e.length;n<r;++n)if(e[n]==t)return n;return-1}CodeMirror.defineOption("autoCloseTags",!1,function(t,n,r){if(n&&(r==CodeMirror.Init||!r)){r={name:"autoCloseTags"};if(typeof n!="object"||n.whenClosing)r["'/'"]=function(t){return e(t,"/")};if(typeof n!="object"||n.whenOpening)r["'>'"]=function(t){return e(t,">")};t.addKeyMap(r)}else!n&&r!=CodeMirror.Init&&r&&t.removeKeyMap("autoCloseTags")});var n="area base br col command embed hr img input keygen link meta param source track wbr".split(" "),r="applet blockquote body button div dl fieldset form frameset h1 h2 h3 h4 h5 h6 head html iframe layer legend object ol p select table ul".split(" ")})();