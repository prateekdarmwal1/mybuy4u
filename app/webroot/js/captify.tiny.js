jQuery.fn.extend({captify:function(a) {
    var a = $.extend({speedOver:"fast",speedOut:"normal",hideDelay:500,animation:"slide",prefix:"",opacity:"0.35",className:"caption-bottom",position:"bottom",spanWidth:"100%"}, a);
    $(this).each(function() {
        var b = this;
        $(this).load(function() {
            $this = b;
            if (this.hasInit) {
                return false
            }
            this.hasInit = true;
            var d = false;
            var m = false;
            var g = $("#" + $(this).attr("rel"));
            var f = !g.length ? $(this).attr("alt") : g.html();
            g.remove();
            var h = this.parent && this.parent.tagName == "a" ? this.parent : $(this);
            var c = h.wrap("<div></div>").parent();
            c.css({overflow:"hidden",padding:0,fontSize:0.1});
            c.addClass("caption-wrapper");
            c.width($(this).width());
            c.height($(this).height());
            $.map(["top","right","bottom","left"], function(p) {
                c.css("margin-" + p, $(b).css("margin-" + p));
                $.map(["style","width","color"], function(q) {
                    var r = "border-" + p + "-" + q;
                    c.css(r, $(b).css(r))
                })
            });
            $(b).css({border:"0 none"});
            var o = $("div:last", c.append("<div></div>")).addClass(a.className);
            var l = $("div:last", c.append("<div></div>")).addClass(a.className).append(a.prefix).append(f);
            $("*", c).css({margin:0}).show();
            var j = jQuery.browser.msie ? "static" : "relative";
            o.css({zIndex:1,position:j,opacity:a.animation == "fade" ? 0 : a.opacity,width:a.spanWidth});
            if (a.position == "bottom") {
                var k = parseInt(o.css("border-top-width").replace("px", "")) + parseInt(l.css("padding-top").replace("px", "")) - 1;
                l.css("paddingTop", k)
            }
            l.css({position:j,zIndex:2,background:"none",border:"0 none",opacity:a.animation == "fade" ? 0 : 1,width:a.spanWidth});
            o.width(l.outerWidth());
            o.height(l.height());
            var n = (a.position == "bottom" && jQuery.browser.msie) ? -4 : 0;
            var i = (a.position == "top") ? {hide:-$(b).height() - o.outerHeight() - 1,show:-$(b).height()} : {hide:0,show:-o.outerHeight() + n};
            l.css("marginTop", -o.outerHeight());
            o.css("marginTop", i[a.animation == "fade" || a.animation == "always-on" ? "show" : "hide"]);
            var e = function() {
                if (!d && !m) {
                    var p = a.animation == "fade" ? {opacity:0} : {marginTop:i.hide};
                    o.animate(p, a.speedOut);
                    if (a.animation == "fade") {
                        l.animate({opacity:0}, a.speedOver)
                    }
                }
            };
            if (a.animation != "always-on") {
                $(this).hover(function() {
                    m = true;
                    if (!d) {
                        var p = a.animation == "fade" ? {opacity:a.opacity} : {marginTop:i.show};
                        o.animate(p, a.speedOver);
                        if (a.animation == "fade") {
                            l.animate({opacity:1}, a.speedOver / 2)
                        }
                    }
                }, function() {
                    m = false;
                    window.setTimeout(e, a.hideDelay)
                });
                $("div", c).hover(function() {
                    d = true
                }, function() {
                    d = false;
                    window.setTimeout(e, a.hideDelay)
                })
            }
        });
        if (this.complete || this.naturalWidth > 0) {
            $(b).trigger("load")
        }
    })
}});