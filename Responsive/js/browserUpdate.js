(function(){var S,R,E,O,B,L,M,C,T=document,N=navigator.vendor,A=navigator.userAgent,D=[{string:N,subString:"Apple",identity:"Safari",latest:"6.0.5"},{string:N,subString:"iCab",identity:"iCab",latest:"5.1.1"},{string:N,subString:"KDE",identity:"Konqueror",latest:"3.5.8"},{string:N,subString:"Camino",identity:"Camino",latest:"2.1.2"},{string:A,subString:"OmniWeb",versionSearch:"OmniWeb",identity:"OmniWeb",latest:"5.11.2"},{string:A,subString:"Firefox",identity:"Firefox",latest:"24.0"},{string:A,subString:"MSIE",identity:"Explorer",versionSearch:"MSIE",latest:"9.0.6"}];if(window.opera){R=A.match(/Version/)?"Version":"Opera";S={version:I(A),identity:"Opera",latest:"12.16"}}else{for(var K=0;K<D.length;K++){M=D[K];C=M.string;if(C&&C.indexOf(M.subString)!=-1){S=M;R=M.versionSearch||M.identity;S.version=I(A)||I(navigator.appVersion);break}}}if(!window.browserUpdateShowExample){if(!S||(T.cookie&&T.cookie.indexOf("noBrowserUpdate=1")>-1)){return }var J=S.version.split(/\./),P=S.latest.split(/\./),H=true;for(var F=0;F<P.length;++F){if(J.length<F+1){H=false;break}if(parseInt(J[F])<parseInt(P[F])){H=false;break}}if(H){return }}function I(V){var U=V.indexOf(R);if(U==-1){return }return V.substring(U+R.length+1).match(/[\d\.]+/)[0]}E=T.createElement("div");O=T.createElement("div");B=T.createElement("span");L=true;B.style.cssText="position: absolute; top: -1px; right: 3px; margin: 0; padding: 0; font-family: arial, sans sefif; font-weight: bold; font-size: 19px; color: black; cursor: default";O.style.cssText="margin: 0; padding: 0; height: 100%; margin-top: 3px; padding-left: 23px; font-family: verdana, sans sefif; font-size: 11px; color: black; background-repeat: no-repeat; overflow: hidden; background-position: 0 -3px; z-index: 32000";O.style.backgroundImage=(S.identity=="Explorer")?"url(http://arty.name/browser-update/shield.png)":"url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAVCAYAAABc6S4mAAAAAXNSR0IArs4c6QAAAAZiS0dEAP8A/wDhWrKa8AAAAAlwSFlzAAALEwAACxMBAJqcGAAAAAd0SU1FB9gGHQkTG/vR/fEAAAKySURBVDjL7ZRbSJNhHMZ/32F9m27ObTG3ikpL0zYi2MoOFNlFJQgFFQQRdLrtcNOV990EYkRQCYl5URAVVFRkFB2IDlDZwTTScrpa8zAn29zad+hiXYUrh11Fz+X//b/Py/M8Lw/8xx8gTG2t0gXSJtAduTvCMAhXoTs5zQcqXWD3gVoO1SGoieXm7x3QNR9MfRB+C5GRfAzy5OMFPjAFwbBC8AXwgSVbapkVqCQ1UM2X8kE+ek5CWoLEDrCPgvoaet9NUUH5Qdj1ECSDwNqVFK3ODt8wtbisudN7Tzm+ftuVLHLXYj5rjaAJ0F4Hn5p+ZRLzKJNA0dlyePeRQ+v2kR7wRr7RLtS83Cr4Q9vrajlEKnAZd72PCs8ZkAwwhAIsAlAFUkn9WFvmEWrvMv/WV2UkJi6hKOF4fO4dpNIJ9KiEvdoNkbwseRQIBsgGmTGVZHgOqF40eQGSGaSSJrudACUdO0GXyY6Zf/dN8lmkgmSQHJfQk2WI2UrGsy6stia1c8NSoaq1BdvMvaiZ7wh65idVphCLIqAJfI/NZobVgYEdm8Kqmg1X5IUXPHirWlHlUYykgFSkQtQMDOUJczI4nGDYsSgerJ460ExogjAQ6/FTXLoGTZFATKMoEunQC4YevIFoHOL9U7WoG3pm8Tl1DklTEE0pLKbhzcsbGhmZ34hoSaAUgazJ9IdOQMgNxusCMugbhqQJZINwRzNKcQRRmbh4io6eRxVHMTu7sZksfHlwjUQmDikdQrECq8JbAub9sPsu/qIDlK1YSFx0YGRLcXo0eq/doi91GtrWwcRZ+DpeQAYAiQzY49BZT9R3nk+P7xMMVmB22bjdvIeY+Qm0bgT9JgwOTqNN5y0GsQFWPoNFY7nZOyc8D4J+Hfq7/kJdz3GDXA+iN1cJwgBwK5fVv44fpOnvlMI2viUAAAAASUVORK5CYII=)";E.style.cssText="position: absolute; top: 0px; height: 20px; left: 0px; width: 100%; margin: 0; padding: 0; background: #ffffe1; border: 0; border-bottom: 2px solid #808080; z-index: 32000";if(S.identity=="Explorer"){O.style.backgroundPosition="5px 0"}E.appendChild(O);E.appendChild(B);O.appendChild(T.createTextNode("Вы используете устаревшую версию "+S.identity+"! Щёлкните эту надпись для дополнительной информации..."));B.appendChild(T.createTextNode("\u00D7"));B.onclick=function(V){T.body.removeChild(E);T.body.parentNode.style.marginTop="";var U=new Date();U.setDate(U.getDate()+7);T.cookie="noBrowserUpdate=1;expires="+U.toGMTString()};function Q(U){if(!L){return }E.style.backgroundColor=U?"#0a246a":"#ffffe1";O.style.color=U?"white":"black";B.style.color=U?"white":"black"}function G(){if(!L){return }Q(false);L=false;var U={Explorer:"http://windows.microsoft.com/ru-ru/internet-explorer/download-ie",Opera:"http://ru.opera.com/download/thanks/",Safari:"http://www.apple.com/safari/",Firefox:"http://fx.yandex.ru/",iCab:"http://www.icab.de/dl.php",Konqueror:"http://www.konqueror.org/download",Camino:"http://caminobrowser.org/download/",OmniWeb:"http://www.omnigroup.com/products/omniweb/download/"}[S.identity];O.innerHTML="Вы используете устаревшую версию "+S.identity+'. Это значит, что ваш компьютер и ваши личные данные в опасности. Установите новую версию, чтобы защитить себя и раскрыть весь потенциал сайтов, которые вы посещаете!<a style="display: block; width: 100%; text-align: center; font-size: large;" target="_blank" href="'+U+'">Обновить браузер</a>';O.style.backgroundImage="";E.style.cssText="position: absolute; top: 100px; height: auto; left: 30%; width: 40%; margin: 0; padding: 1em; padding-right: 1.5em; background: #ffffe1; border: 1px solid #808080; z-index: 30000"}if(E.addEventListener){E.addEventListener("mouseover",function(){Q(true)},false);E.addEventListener("mouseout",function(){Q(false)},false);O.addEventListener("click",G,false)}else{E.attachEvent("onmouseenter",function(){Q(true)});E.attachEvent("onmouseleave",function(){Q(false)});O.attachEvent("onclick",G)}T.body.appendChild(E)})();