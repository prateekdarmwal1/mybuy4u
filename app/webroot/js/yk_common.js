var HOST_NAME = "/";
var myid = "none";
var my_old_id = "none";
var url = null;

show_state_by_country2 = function (country_id, model,state_id) {
    //alert(model);
    if (country_id > 0) {
        url = HOST_NAME + "company_organizations/state_list/";
        url = url + model+ "/" + country_id + "/"+state_id;
        ajaxData('get',url,{},"state_id");
    }
};

show_city_by_state = function (state_id, model,city) {
    //document.write(product_id);
    if (state_id > 0) {
        url = HOST_NAME + "company_organizations/city_list/"+model+"/"+ state_id + "/";
        jQuery.get(url, {},
            function (data) {//alert(data);
                $("#city_id").html(data);
                $("#city_id select").val(city);
            });
    }
};

var countryVal = $("#AddressCOUNTRY").val();



show_city_by_state2 = function(url,state_id, model) {
    //document.write(product_id);
    if (state_id > 0) {
        var url= url + "/" +state_id + "/" + model
        ajaxData('get',url,{},'addressCity');
    }
};

show_state_by_countries = function (country_id,model) {

    // alert(country_id);
    //document.write(product_id);
    if (country_id > 0) {

        jQuery.get("/" + "company_organizations/state_list_owner/"+ country_id + "/" + model, {},
            function (data) {
                $("#owner_state_id").html(data);
            });
    }
};

show_state_by_countries2 = function (country_id,model,state) {
    //document.write(product_id);
    //alert(country_id);
if (country_id > 0) {

        //jQuery.get("/mybuy4u/" + "company_organizations/state_list_owner/"+ country_id + "/" + model + "/" +state, {},
        jQuery.get("/" + "company_organizations/state_list/"+ model + "/"+ country_id +"/" +state, {},
            function (data) {
                $("#OwnerAddressSTATE").html(data);
            });
    }
};

show_city = function (state_id,model) {

    if (state_id > 0) {
        jQuery.get("/" + "company_organizations/city_list_owner/" +state_id + "/" + model,  {},
            function (data) {
                $("#owner_city_id").html(data);
            });
    }
};

show_city2 = function (state_id,model,city) {

    if (state_id > 0) {
        jQuery.get("/" + "company_organizations/city_list_owner/" +state_id + "/" + model + "/" + city,  {},
            function (data) {
                $("#OwnerAddressCITY").html(data);
            });
    }
};

select_temp = function (ddl_insertHTML) {
    if (ddl_insertHTML > 0) {
        jQuery.post("/soar_demo/local_business/temp/" + ddl_insertHTML, {},
            function (data) {
                $("#set_temp").html(data);
            });
    }

}

callTinyMCE = function () {
    tinyMCE.init({
        mode:"textareas",
        theme:"advanced",
        plugins:"pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,wordcount,advlist,autosave",
        theme_advanced_buttons1:"bold,italic,underline,|,formatselect,fontsizeselect",
        //theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help|,insertdate,inserttime,preview,|,forecolor,backcolor",
        /*  theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
         theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak,restoredraft",
         */
        // theme_advanced_buttons3 : "tablecontrols,|,hr,visualaid,|,sub,sup,|,charmap,emotions,iespell,advhr,|,print,|,ltr,rtl,|,fullscreen",
        /*theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,,template,pagebreak,restoredraft",*/

        theme_advanced_toolbar_location:"top",
        theme_advanced_toolbar_align:"left",
        //theme_advanced_statusbar_location : "bottom",
        theme_advanced_resizing:false,
        content_css:"css/content.css",
        template_external_list_url:"lists/template_list.js",
        external_link_list_url:"lists/link_list.js",
        external_image_list_url:"lists/image_list.js",
        media_external_list_url:"lists/media_list.js",
        style_formats:[
            {title:'Bold text', inline:'b'},
            {title:'Red text', inline:'span', styles:{color:'#ff0000'}},
            {title:'Red header', block:'h1', styles:{color:'#ff0000'}},
            {title:'Example 1', inline:'span', classes:'example1'},
            {title:'Example 2', inline:'span', classes:'example2'},
            {title:'Table styles'},
            {title:'Table row 1', selector:'tr', classes:'tablerow1'}
        ],

        /*width: "460",*/
        /*  height: "300",*/
        extended_valid_elements:"marquee[class|width|height|align|onmouseover|onmouseout|behavior|direction|scrollamount|scrolldelay|onMouseOver|onMouseOut]"
    });
};

loadProjectPopularScroller = function () {
    if (document.getElementById("gallery")) {
        //$("#scrollerId ul li").slideDown("slow");
        $("#gallery").jCarouselLite({
            vertical:false,
            circular:true,
            btnNext:"#R1",
            btnPrev:"#L1",
            hoverPause:true,
            visible:3,
            auto:500,
            speed:1500
        });
    }
};

/*

 function show_function(function_name)
 {

 alert("sd");

 }
 */


/*this is for sliding divs*/

// run the currently selected effect
function runEffect(id) {
    // get effect type from
    var selectedEffect = 'blind';
    // most effect types need no options passed by default
    var options = {};
    my_old_id = myid;
    myid = '#' + id;

    // some effects have required parameters


    $(myid).effect(selectedEffect, 'blind', 500, callback);

}

// callback function to bring a hidden box back
function callback() {
    setTimeout(function () {
        /*if(flag_slid_div=="none")*/
        $(my_old_id).slideDown();
    });

}
/*
 * hide().fadeIn()
 * */


/*
 function runEffect1()
 {
 alert("asa") ;
 */
/*    $(my_id). $( "#effect" ).click(function() {

 runEffect();

 return false;*//*

 });
 }
 */

// set effect from select menu value
/*$( "#effect" ).click(function() {

 runEffect();

 return false;
 });
 */
/*end of sliding divs*/


(function ($) {

    $.fn.easySlider1 = function (options) {

        // default configuration properties
        var defaults = {
            prevId:'prevBtn',
            prevText:'Previous',
            nextId:'nextBtn',
            nextText:'Next',
            controlsShow:true,
            controlsBefore:'',
            controlsAfter:'',
            controlsFade:true,
            firstId:'firstBtn',
            firstText:'First',
            firstShow:false,
            lastId:'lastBtn',
            lastText:'Last',
            lastShow:false,
            vertical:false,
            speed:800,
            auto:false,
            pause:2000,
            continuous:false,
            numeric:false,
            numericId:'controls'
        };

        var options = $.extend(defaults, options);

        this.each(function () {
            var obj = $(this);
            var s = $("li", obj).length;
            var w = $("li", obj).width();
            var h = $("li", obj).height();
            var clickable = true;
            obj.width(w);
            obj.height(h);
            obj.css("overflow", "hidden");
            var ts = s - 1;
            var t = 0;
            $("ul", obj).css('width', s * w);

            if (options.continuous) {
                $("ul", obj).prepend($("ul li:last-child", obj).clone().css("margin-left", "-" + w + "px"));
                $("ul", obj).append($("ul li:nth-child(2)", obj).clone());
                $("ul", obj).css('width', (s + 1) * w);
            }
            ;

            if (!options.vertical) $("li", obj).css('float', 'left');

            if (options.controlsShow) {
                var html = options.controlsBefore;
                if (options.numeric) {
                    html += '<ol id="' + options.numericId + '"></ol>';
                } else {
                    if (options.firstShow) html += '<span id="' + options.firstId + '"><a href=\"javascript:void(0);\">' + options.firstText + '</a></span>';
                    html += ' <span id="' + options.prevId + '"><a href=\"javascript:void(0);\"></a></span>';
                    html += ' <span id="' + options.nextId + '"><a href=\"javascript:void(0);\"></a></span>';
                    if (options.lastShow) html += ' <span id="' + options.lastId + '"><a href=\"javascript:void(0);\">' + options.lastText + '</a></span>';
                }
                ;

                html += options.controlsAfter;
                $(obj).after(html);
            }
            ;

            if (options.numeric) {
                for (var i = 0; i < s; i++) {
                    $(document.createElement("li"))
                        .attr('id', options.numericId + (i + 1))
                        .html('<a rel=' + i + ' href=\"javascript:void(0);\">' + (i + 1) + '</a>')
                        .appendTo($("#" + options.numericId))
                        .click(function () {
                            animate($("a", $(this)).attr('rel'), true);
                        });
                }
                ;
            } else {
                $("a", "#" + options.nextId).click(function () {
                    animate("next", true);
                });
                $("a", "#" + options.prevId).click(function () {
                    animate("prev", true);
                });
                $("a", "#" + options.firstId).click(function () {
                    animate("first", true);
                });
                $("a", "#" + options.lastId).click(function () {
                    animate("last", true);
                });
            }
            ;

            function setCurrent(i) {
                i = parseInt(i) + 1;
                $("li", "#" + options.numericId).removeClass("current");
                $("li#" + options.numericId + i).addClass("current");
            }

            ;

            function adjust() {
                if (t > ts) t = 0;
                if (t < 0) t = ts;
                if (!options.vertical) {
                    $("ul", obj).css("margin-left", (t * w * -1));
                } else {
                    $("ul", obj).css("margin-left", (t * h * -1));
                }
                clickable = true;
                if (options.numeric) setCurrent(t);
            }

            ;

            function animate(dir, clicked) {
                if (clickable) {
                    clickable = false;
                    var ot = t;
                    switch (dir) {
                        case "next":
                            t = (ot >= ts) ? (options.continuous ? t + 1 : ts) : t + 1;
                            break;
                        case "prev":
                            t = (t <= 0) ? (options.continuous ? t - 1 : 0) : t - 1;
                            break;
                        case "first":
                            t = 0;
                            break;
                        case "last":
                            t = ts;
                            break;
                        default:
                            t = dir;
                            break;
                    }
                    ;
                    var diff = Math.abs(ot - t);
                    var speed = diff * options.speed;
                    if (!options.vertical) {
                        p = (t * w * -1);
                        $("ul", obj).animate(
                            { marginLeft:p },
                            { queue:false, duration:speed, complete:adjust }
                        );
                    } else {
                        p = (t * h * -1);
                        $("ul", obj).animate(
                            { marginTop:p },
                            { queue:false, duration:speed, complete:adjust }
                        );
                    }
                    ;

                    if (!options.continuous && options.controlsFade) {
                        if (t == ts) {
                            $("a", "#" + options.nextId).hide();
                            $("a", "#" + options.lastId).hide();
                        } else {
                            $("a", "#" + options.nextId).show();
                            $("a", "#" + options.lastId).show();
                        }
                        ;
                        if (t == 0) {
                            $("a", "#" + options.prevId).hide();
                            $("a", "#" + options.firstId).hide();
                        } else {
                            $("a", "#" + options.prevId).show();
                            $("a", "#" + options.firstId).show();
                        }
                        ;
                    }
                    ;

                    if (clicked) clearTimeout(timeout);
                    if (options.auto && dir == "next" && !clicked) {
                        ;
                        timeout = setTimeout(function () {
                            animate("next", false);
                        }, diff * options.speed + options.pause);
                    }
                    ;

                }
                ;

            }

            ;
            // init
            var timeout;
            if (options.auto) {
                ;
                timeout = setTimeout(function () {
                    animate("next", false);
                }, options.pause);
            }
            ;

            if (options.numeric) setCurrent(0);

            if (!options.continuous && options.controlsFade) {
                $("a", "#" + options.prevId).hide();
                $("a", "#" + options.firstId).hide();
            }
            ;

        });

    };


})(jQuery);