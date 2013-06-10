// FancyZoomHTML.js - v1.0
// Used to draw necessary HTML elements for FancyZoom
//
// Copyright (c) 2008 Cabel Sasser / Panic Inc
// All rights reserved.
function insertZoomHTML(){var e=document.getElementsByTagName("body").item(0),t=document.createElement("div");t.setAttribute("id","ZoomSpin"),t.style.position="absolute",t.style.left="10px",t.style.top="10px",t.style.visibility="hidden",t.style.zIndex="525",e.insertBefore(t,e.firstChild);var n=document.createElement("img");n.setAttribute("id","SpinImage"),n.setAttribute("src",zoomImagesURI+"zoom-spin-1.png"),t.appendChild(n);var r=document.createElement("div");r.setAttribute("id","ZoomBox"),r.style.position="absolute",r.style.left="10px",r.style.top="10px",r.style.visibility="hidden",r.style.zIndex="499",e.insertBefore(r,t.nextSibling);var i=document.createElement("img");i.onclick=function(e){return zoomOut(this,e),!1},i.setAttribute("src",zoomImagesURI+"spacer.gif"),i.setAttribute("id","ZoomImage"),i.setAttribute("border","0"),i.setAttribute("style","-webkit-box-shadow: "+shadowSettings+"0.0)"),i.style.display="block",i.style.width="10px",i.style.height="10px",i.style.cursor="pointer",r.appendChild(i);var s=document.createElement("div");s.setAttribute("id","ZoomClose"),s.style.position="absolute",browserIsIE?(s.style.left="-1px",s.style.top="0px"):(s.style.left="-15px",s.style.top="-15px"),s.style.visibility="hidden",r.appendChild(s);var o=document.createElement("img");o.onclick=function(e){return zoomOut(this,e),!1},o.setAttribute("src",zoomImagesURI+"closebox.png"),o.setAttribute("width","30"),o.setAttribute("height","30"),o.setAttribute("border","0"),o.style.cursor="pointer",s.appendChild(o);if(!document.getElementById("ZoomImage").style.webkitBoxShadow&&!browserIsIE){var u=document.createElement("div");u.setAttribute("id","ShadowBox"),u.style.position="absolute",u.style.left="50px",u.style.top="50px",u.style.width="100px",u.style.height="100px",u.style.visibility="hidden",u.style.zIndex="498",e.insertBefore(u,r.nextSibling);var a=document.createElement("table");a.setAttribute("border","0"),a.setAttribute("width","100%"),a.setAttribute("height","100%"),a.setAttribute("cellpadding","0"),a.setAttribute("cellspacing","0"),u.appendChild(a);var f=document.createElement("tbody");a.appendChild(f);var l=document.createElement("tr");l.style.height="25px",f.appendChild(l);var c=document.createElement("td");c.style.width="27px",l.appendChild(c);var h=document.createElement("img");h.setAttribute("src",zoomImagesURI+"zoom-shadow1.png"),h.setAttribute("width","27"),h.setAttribute("height","25"),h.style.display="block",c.appendChild(h);var p=document.createElement("td");p.setAttribute("background",zoomImagesURI+"zoom-shadow2.png"),l.appendChild(p);var d=document.createElement("img");d.setAttribute("src",zoomImagesURI+"spacer.gif"),d.setAttribute("height","1"),d.setAttribute("width","1"),d.style.display="block",p.appendChild(d);var v=document.createElement("td");v.style.width="27px",l.appendChild(v);var m=document.createElement("img");m.setAttribute("src",zoomImagesURI+"zoom-shadow3.png"),m.setAttribute("width","27"),m.setAttribute("height","25"),m.style.display="block",v.appendChild(m),inRow2=document.createElement("tr"),f.appendChild(inRow2);var g=document.createElement("td");g.setAttribute("background",zoomImagesURI+"zoom-shadow4.png"),inRow2.appendChild(g);var y=document.createElement("img");y.setAttribute("src",zoomImagesURI+"spacer.gif"),y.setAttribute("height","1"),y.setAttribute("width","1"),y.style.display="block",g.appendChild(y);var b=document.createElement("td");b.setAttribute("bgcolor","#ffffff"),inRow2.appendChild(b);var w=document.createElement("img");w.setAttribute("src",zoomImagesURI+"spacer.gif"),w.setAttribute("height","1"),w.setAttribute("width","1"),w.style.display="block",b.appendChild(w);var E=document.createElement("td");E.setAttribute("background",zoomImagesURI+"zoom-shadow5.png"),inRow2.appendChild(E);var S=document.createElement("img");S.setAttribute("src",zoomImagesURI+"spacer.gif"),S.setAttribute("height","1"),S.setAttribute("width","1"),S.style.display="block",E.appendChild(S);var x=document.createElement("tr");x.style.height="26px",f.appendChild(x);var T=document.createElement("td");T.style.width="27px",x.appendChild(T);var N=document.createElement("img");N.setAttribute("src",zoomImagesURI+"zoom-shadow6.png"),N.setAttribute("width","27"),N.setAttribute("height","26"),N.style.display="block",T.appendChild(N);var C=document.createElement("td");C.setAttribute("background",zoomImagesURI+"zoom-shadow7.png"),x.appendChild(C);var k=document.createElement("img");k.setAttribute("src",zoomImagesURI+"spacer.gif"),k.setAttribute("height","1"),k.setAttribute("width","1"),k.style.display="block",C.appendChild(k);var L=document.createElement("td");L.style.width="27px",x.appendChild(L);var A=document.createElement("img");A.setAttribute("src",zoomImagesURI+"zoom-shadow8.png"),A.setAttribute("width","27"),A.setAttribute("height","26"),A.style.display="block",L.appendChild(A)}if(includeCaption){var O=document.createElement("div");O.setAttribute("id","ZoomCapDiv"),O.style.position="absolute",O.style.visibility="hidden",O.style.marginLeft="auto",O.style.marginRight="auto",O.style.zIndex="501",e.insertBefore(O,r.nextSibling);var M=document.createElement("table");M.setAttribute("border","0"),M.setAttribute("cellPadding","0"),M.setAttribute("cellSpacing","0"),O.appendChild(M);var _=document.createElement("tbody");M.appendChild(_);var D=document.createElement("tr");_.appendChild(D);var P=document.createElement("td");P.setAttribute("align","right"),D.appendChild(P);var H=document.createElement("img");H.setAttribute("src",zoomImagesURI+"zoom-caption-l.png"),H.setAttribute("width","13"),H.setAttribute("height","26"),H.style.display="block",P.appendChild(H);var B=document.createElement("td");B.setAttribute("background",zoomImagesURI+"zoom-caption-fill.png"),B.setAttribute("id","ZoomCaption"),B.setAttribute("valign","middle"),B.style.fontSize="14px",B.style.fontFamily="Helvetica",B.style.fontWeight="bold",B.style.color="#ffffff",B.style.textShadow="0px 2px 4px #000000",B.style.whiteSpace="nowrap",D.appendChild(B);var j=document.createElement("td");D.appendChild(j);var F=document.createElement("img");F.setAttribute("src",zoomImagesURI+"zoom-caption-r.png"),F.setAttribute("width","13"),F.setAttribute("height","26"),F.style.display="block",j.appendChild(F)}};