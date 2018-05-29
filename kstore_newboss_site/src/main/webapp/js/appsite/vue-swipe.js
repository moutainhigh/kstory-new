!function(a,b){"object"==typeof exports&&"object"==typeof module?module.exports=b():"function"==typeof define&&define.amd?define([],b):"object"==typeof exports?exports.VueSwipe=b():a.VueSwipe=b()}(this,function(){return function(a){function b(d){if(c[d])return c[d].exports;var e=c[d]={exports:{},id:d,loaded:!1};return a[d].call(e.exports,e,e.exports,b),e.loaded=!0,e.exports}var c={};return b.m=a,b.c=c,b.p="",b(0)}([function(a,b,c){"use strict";function d(a){return a&&a.__esModule?a:{"default":a}}Object.defineProperty(b,"__esModule",{value:!0}),b.SwipeItem=b.Swipe=void 0;var e=c(12),f=d(e),g=c(11),h=d(g);b.Swipe=f["default"],b.SwipeItem=h["default"]},function(a,b){"use strict";Object.defineProperty(b,"__esModule",{value:!0}),b["default"]={ready:function(){this.$dispatch("swipeItemCreated",this)},detached:function(){this.$dispatch("swipeItemDestroyed",this)},destroyed:function(){this.$dispatch("swipeItemDestroyed",this)}}},function(a,b,c){"use strict";Object.defineProperty(b,"__esModule",{value:!0});var d=c(6),e=!1,f=function(a,b,c,f){if(a.style.webkitTransform="translate3d("+b+"px, 0, 0)",c){e=!0,a.style.webkitTransition="-webkit-transform "+c+"ms ease-in-out";var g=!1,h=function(){g||(g=!0,e=!1,a.style.webkitTransition="",a.style.webkitTransform="",f&&f.apply(this,arguments))};d.once(a,"webkitTransitionEnd",h),setTimeout(h,c+50)}else a.style.webkitTransition=""};b["default"]={created:function(){this.dragState={}},data:function(){return{ready:!1,dragging:!1,index:0,pages:[],timer:null,reInitTimer:null,noDrag:!1}},props:{speed:{type:Number,"default":300},auto:{type:Number,"default":3e3},continuous:{type:Boolean,"default":!0},showIndicators:{type:Boolean,"default":!0},noDragWhenSingle:{type:Boolean,"default":!0},prevent:{type:Boolean,"default":!1}},events:{swipeItemCreated:function(){var a=this;this.ready&&(clearTimeout(this.reInitTimer),this.reInitTimer=setTimeout(function(){a.reInitPages()},100))},swipeItemDestroyed:function(){var a=this;this.ready&&(clearTimeout(this.reInitTimer),this.reInitTimer=setTimeout(function(){a.reInitPages()},100))}},methods:{reInitPages:function(){var b,a=this.$children;this.noDrag=1===a.length&&this.noDragWhenSingle,b=[],this.index=0,a.forEach(function(a,c){b.push(a.$el),d.removeClass(a.$el,"active"),0===c&&d.addClass(a.$el,"active")}),this.pages=b},doAnimate:function(a,b){var e,g,h,i,j,k,l,m,n,o,p,q,c=this;0===c.$children.length||!b&&c.$children.length<2||(k=c.speed||300,l=c.index,m=c.pages,n=m.length,b?(e=b.prevPage,h=b.currentPage,g=b.nextPage,i=b.pageWidth,j=b.offsetLeft):(i=c.$el.clientWidth,h=m[l],e=m[l-1],g=m[l+1],c.continuous&&m.length>1&&(e||(e=m[m.length-1]),g||(g=m[0])),e&&(e.style.display="block",f(g,-i)),g&&(g.style.display="block",f(g,i))),p=c.$children[l].$el,"prev"===a?(l>0&&(o=l-1),c.continuous&&0===l&&(o=n-1)):"next"===a&&(n-1>l&&(o=l+1),c.continuous&&l===n-1&&(o=0)),q=function(){if(void 0!==o){var a=c.$children[o].$el;d.removeClass(p,"active"),d.addClass(a,"active"),c.index=o}e&&(e.style.display=""),g&&(g.style.display="")},setTimeout(function(){"next"===a?(f(h,-i,k,q),g&&f(g,0,k)):"prev"===a?(f(h,i,k,q),e&&f(e,0,k)):(f(h,0,k,q),"undefined"!=typeof j?(e&&j>0&&f(e,-1*i,k),g&&0>j&&f(g,i,k)):(e&&f(e,-1*i,k),g&&f(g,i,k)))},10))},next:function(){this.doAnimate("next")},prev:function(){this.doAnimate("prev")}},destroyed:function(){this.timer&&(clearInterval(this.timer),this.timer=null)},ready:function(){var a=this;a.ready=!0,a.auto>0&&(a.timer=setInterval(function(){a.dragging||a.next()},a.auto)),a.reInitPages()}}},function(a){"use strict";var c=function(a){return(a||"").replace(/^[\s\uFEFF]+|[\s\uFEFF]+$/g,"")},d=function(a,b){if(!a||!b)return!1;if(-1!=b.indexOf(" "))throw new Error("className should not contain space.");return a.classList?a.classList.contains(b):(" "+a.className+" ").indexOf(" "+b+" ")>-1},e=function(a,b){var c,e,f,g,h;if(a){for(c=a.className,e=(b||"").split(" "),f=0,g=e.length;g>f;f++)h=e[f],h&&(a.classList?a.classList.add(h):d(a,h)||(c+=" "+h));a.classList||(a.className=c)}},f=function(a,b){var e,f,g,h,i;if(a&&b){for(e=b.split(" "),f=" "+a.className+" ",g=0,h=e.length;h>g;g++)i=e[g],i&&(a.classList?a.classList.remove(i):d(a,i)&&(f=f.replace(" "+i+" "," ")));a.classList||(a.className=c(f))}};a.exports={hasClass:d,addClass:e,removeClass:f}},function(a){"use strict";var c=function d(a,b){var c,e,f,g,h,i,j,k;if(!a)return null;if("string"==typeof a)return document.createTextNode(a);if(a.tag){c=document.createElement(a.tag);for(f in a)if(a.hasOwnProperty(f)){if("content"===f||"tag"===f)continue;if("key"===f&&b){g=a[f],g&&(b[g]=c);continue}c[f]=a[f]}if(h=a.content)if("string"==typeof h)e=document.createTextNode(h),c.appendChild(e);else for(h instanceof Array||(h=[h]),i=0,j=h.length;j>i;i++)k=h[i],e=d(k,b),c.appendChild(e)}return c};a.exports=c},function(a){"use strict";var c=function(){return document.addEventListener?function(a,b,c){a&&b&&c&&a.addEventListener(b,c,!1)}:function(a,b,c){a&&b&&c&&a.attachEvent("on"+b,c)}}(),d=function(){return document.removeEventListener?function(a,b,c){a&&b&&a.removeEventListener(b,c,!1)}:function(a,b,c){a&&b&&a.detachEvent("on"+b,c)}}(),e=function(a,b,e){var f=function g(){e&&e.apply(this,arguments),d(a,b,g)};c(a,b,f)};a.exports={on:c,off:d,once:e}},function(a,b,c){"use strict";var d=c(3),e=c(5),f=c(7),g=c(4);a.exports={on:e.on,off:e.off,once:e.once,getStyle:f.getStyle,setStyle:f.setStyle,removeClass:d.removeClass,addClass:d.addClass,hasClass:d.hasClass,create:g}},function(a){"use strict";function c(a){return a.replace(e,function(a,b,c,d){return d?c.toUpperCase():c}).replace(f,"Moz$1")}var d="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(a){return typeof a}:function(a){return a&&"function"==typeof Symbol&&a.constructor===Symbol?"symbol":typeof a},e=/([\:\-\_]+(.))/g,f=/^moz([A-Z])/,g=Number(document.documentMode),h=9>g?function(a,b){if(!a||!b)return null;b=c(b),"float"===b&&(b="styleFloat");try{switch(b){case"opacity":try{return a.filters.item("alpha").opacity/100}catch(d){return 1}break;default:return a.style[b]||a.currentStyle?a.currentStyle[b]:null}}catch(d){return a.style[b]}}:function(a,b){if(!a||!b)return null;b=c(b),"float"===b&&(b="cssFloat");try{var d=document.defaultView.getComputedStyle(a,"");return a.style[b]||d?d[b]:null}catch(e){return a.style[b]}},i=function j(a,b,e){if(a&&b)if("object"===("undefined"==typeof b?"undefined":d(b)))for(var f in b)b.hasOwnProperty(f)&&j(a,f,b[f]);else b=c(b),"opacity"===b&&9>g?a.style.filter=isNaN(e)?"":"alpha(opacity="+100*e+")":a.style[b]=e};a.exports={getStyle:h,setStyle:i}},function(){},function(a){a.exports="<div class=swipe-item><slot></slot></div>"},function(a){a.exports='<div class=swipe><div class=swipe-items-wrap v-el:wrap><slot></slot></div><div class=swipe-indicators v-show=showIndicators><div class=swipe-indicator v-for="page in pages" :class="{ active: $index === index }"></div></div></div>'},function(a,b,c){var d,e;d=c(1),e=c(9),a.exports=d||{},a.exports.__esModule&&(a.exports=a.exports["default"]),e&&(("function"==typeof a.exports?a.exports.options:a.exports).template=e)},function(a,b,c){var d,e;c(8),d=c(2),e=c(10),a.exports=d||{},a.exports.__esModule&&(a.exports=a.exports["default"]),e&&(("function"==typeof a.exports?a.exports.options:a.exports).template=e)}])});