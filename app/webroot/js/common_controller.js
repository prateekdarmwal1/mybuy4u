//var HOST_NAME = "http://www.mybuy4u.com/";
//var HOST = "/";
var HOST = "/mybuy4u/";
var currentTime = new Date().getTime();
var activeImg = null;
var currentBigImgId = null;

function CommonController() {

	var files_added = "";
	this.show_menu = function (id, menu_id) {
		$(document).ready(function () {
			$("#" + menu_id).show("slow");
			document.getElementById(menu_id).style.display = "block";
			$("#" + id).addClass("active");
		});
	};

	this.hide_menu = function (id, menu_id) {
		$(document).ready(function () {
			$("#" + menu_id).hide("slow");
			document.getElementById(menu_id).style.display = "none";
			$("#" + id).removeClass("active");
		});
	};

	this.load_tab_menu = function () {
		$(document).ready(function () {
			$("#homeTab").hover(function () {
				if (!$("#homeTab").hasClass("active")) {
					$("#homeTab").addClass("active");
				}
			}, function () {
				if (!$("#homeTab").hasClass("tabSelected")) {
					$("#homeTab").removeClass("active");
				}
			});
			$("#buyTab").hover(function () {
				document.getElementById("buyTabList").style.display = "block";
				if (!$("#buyTab").hasClass("active")) {
					$("#buyTab").addClass("active");
				}
			}, function () {
				document.getElementById("buyTabList").style.display = "none";
				if (!$("#buyTab").hasClass("tabSelected")) {
					$("#buyTab").removeClass("active");
				}
			});
			$("#rentTab").hover(function () {
				document.getElementById("rentTabList").style.display = "block";
				if (!$("#rentTab").hasClass("active")) {
					$("#rentTab").addClass("active");
				}
			}, function () {
				document.getElementById("rentTabList").style.display = "none";
				if (!$("#rentTab").hasClass("tabSelected")) {
					$("#rentTab").removeClass("active");
				}
			});
			$("#eShopTab").hover(function () {
				document.getElementById("eShopTabList").style.display = "block";
				if (!$("#eShopTab").hasClass("active")) {
					$("#eShopTab").addClass("active");
				}
			}, function () {
				document.getElementById("eShopTabList").style.display = "none";
				if (!$("#eShopTab").hasClass("tabSelected")) {
					$("#eShopTab").removeClass("active");
				}
			});
			$("#websiteTab").hover(function () {
				document.getElementById("websiteTabList").style.display = "block";
				if (!$("#websiteTab").hasClass("active")) {
					$("#websiteTab").addClass("active");
				}
			}, function () {
				document.getElementById("websiteTabList").style.display = "none";
				if (!$("#websiteTab").hasClass("tabSelected")) {
					$("#websiteTab").removeClass("active");
				}
			});
		});
	};

	this.set_active_tab = function (id) {
		$("#eShopTab").removeClass("active tabSelected");
		$("#rentTab").removeClass("active tabSelected");
		$("#buyTab").removeClass("active tabSelected");
		$("#homeTab").removeClass("active tabSelected");
		$("#websiteTab").removeClass("active tabSelected");
		$("#eShopTab").addClass("normal1");
		$("#rentTab").addClass("normal1");
		$("#buyTab").addClass("normal1");
		$("#homeTab").addClass("normal1");
		$("#websiteTab").addClass("normal1");
		$("#" + id).removeClass("normal1");
		$("#" + id).addClass("active tabSelected");
	};

	this.check_load_js_css_file = function (filename, filetype) {
		return files_added.indexOf("[" + filename + "]") != -1;
	};

	this.open_log_in_box = function () {
		var file_name = HOST + "user/js/jquery.form.js";
		var flag = common_controller.check_load_js_css_file(file_name, "js");
		if (!flag) {
			//load js
			jQuery.getScript(HOST + "user/js/jquery.form.js", function () {
				files_added += "[" + file_name + "]";
				common_controller.load_user_log_in_ajax_form();
				(jQuery("#log_in_box").slideToggle("slow"));
			});
		} else {
			common_controller.load_user_log_in_ajax_form();
			(jQuery("#log_in_box").slideToggle("slow"));
		}
	};

	this.load_user_log_in_ajax_form = function () {
		console.log("loading ...");
		var options = {
			beforeSubmit: common_controller.start_callback_do_user_log_in, // pre-submit callback
			success: common_controller.complete_callback_do_user_log_in  // post-submit callback
		};
		jQuery('#user_log_in_ajax_form').ajaxForm(options);
	};

	this.start_callback_do_user_log_in = function (formData, jqForm, options) {
		jQuery("#loading_v_icon").show();
		return true;
	};

	this.complete_callback_do_user_log_in = function (response, statusText, xhr, $form) {
		jQuery("#loading_v_icon").hide();
		if (response != "") {
			jQuery("#user_log_in_rep").html(response);
			common_controller.load_user_log_in_ajax_form();
		} else {
			location.reload();
		}
	};

	this.hide_log_in_box = function () {
		($("#log_in_box").slideUp("slow"))
	};

	this.load_home_house = function () {
		$.get(HOST + "homes/home_house", {currentTime: currentTime},
				function (data) {
					document.getElementById("house_data").innerHTML = data;
					$("#home_house").slideDown("slow");
					common_controller.load_house_scroller();
					common_controller.load_ad_box_one();
				});
	};

	this.load_ad_box_one = function () {
		$("#home_ad_box_one").slideDown("slow");
		common_controller.load_home_complex();
	};

	this.load_home_complex = function () {
		$.get(HOST + "homes/home_complex", {currentTime: currentTime},
				function (data) {
					document.getElementById("complex_data").innerHTML = data;
					$("#home_complex").slideDown("slow");
					common_controller.load_complex_scroller();
					common_controller.load_home_latest_e_shop();
				});
	};

	this.load_home_latest_e_shop = function () {
		$.get(HOST + "shops/home_eshop", {currentTime: currentTime},
				function (data) {
					document.getElementById("e_shop_data").innerHTML = data;
					$("#home_latest_e_shop").slideDown("slow");
					common_controller.load_latest_e_shop_scroller();
					common_controller.load_ad_box_two();
				});
	};

	this.load_ad_box_two = function () {
		$("#home_ad_box_two").slideDown("slow");
		common_controller.load_home_shop();

	};

	this.load_home_shop = function () {
		$("#home_shop").slideDown("slow");
		common_controller.load_home_jewelry();
	};

	this.load_home_jewelry = function () {
		$.get(HOST + "shops/home_online_shop_2/JEWELRY", {currentTime: currentTime},
				function (data) {
					document.getElementById("jewelry_data").innerHTML = data;
					$("#home_jewelry").slideDown("slow");
					common_controller.load_jewelry_scroller();
					common_controller.load_home_boutique();
				});
	};

	this.load_home_boutique = function () {
		$.get(HOST + "shops/home_online_shop_3/BOUTIQUE", {currentTime: currentTime},
				function (data) {
					document.getElementById("boutique_data").innerHTML = data;
					$("#home_boutique").slideDown("slow");
					common_controller.load_boutique_scroller();
					common_controller.load_home_news();
				});
	};

	this.load_home_news = function () {
		$("#home_news").slideDown("slow");
		common_controller.load_home_book();
	};

	this.load_home_book = function () {
		$.get(HOST + "shops/home_online_shop_2/BOOK", {currentTime: currentTime},
				function (data) {
					document.getElementById("book_data").innerHTML = data;
					$("#home_book").slideDown("slow");
					common_controller.load_book_scroller();
					common_controller.load_home_optical();
				});
	};

	this.load_home_optical = function () {
		$.get(HOST + "shops/home_online_shop_3/OPTICAL", {currentTime: currentTime},
				function (data) {
					document.getElementById("optical_data").innerHTML = data;
					$("#home_optical").slideDown("slow");
					common_controller.load_optical_scroller();
					common_controller.load_ad_one();
					common_controller.load_ad_two();
					common_controller.load_ad_three();
				});
	};

	this.load_house_tab = function () {
		$.get(HOST + "homes/home_house", {currentTime: currentTime},
				function (data) {
					document.getElementById("house_data").innerHTML = data;
					$("#house_data").slideDown("slow");
					$("#house").addClass("selected1");
					$("#house").removeClass("unSelected1");
					$("#land").removeClass("selected1");
					$("#land").addClass("unSelected1");
					common_controller.load_house_scroller();
				});
	};

	this.load_land_tab = function () {
		$.get(HOST + "homes/home_land", {currentTime: currentTime},
				function (data) {
					document.getElementById("house_data").innerHTML = data;
					$("#house_data").slideDown("slow");
					$("#land").addClass("selected1");
					$("#land").removeClass("unSelected1");
					$("#house").addClass("unSelected1");
					$("#house").removeClass("selected1");
					common_controller.load_house_scroller();
				});
	};

	this.load_complex_tab = function () {
		$.get(HOST + "homes/home_complex", {currentTime: currentTime},
				function (data) {
					document.getElementById("complex_data").innerHTML = data;
					$("#complex_data").slideDown("slow");
					$("#complex").addClass("selected1");
					$("#complex").removeClass("unSelected1");
					$("#apartment").removeClass("selected1");
					$("#apartment").addClass("unSelected1");
					common_controller.load_complex_scroller();
				});
	};

	this.load_apartment_tab = function () {
		$.get(HOST + "homes/home_apartment", {currentTime: currentTime},
				function (data) {
					document.getElementById("complex_data").innerHTML = data;
					$("#complex_data").slideDown("slow");
					$("#apartment").addClass("selected1");
					$("#apartment").removeClass("unSelected1");
					$("#complex").addClass("unSelected1");
					$("#complex").removeClass("selected1");
					common_controller.load_complex_scroller();
				});
	};

	this.load_boutique_tab = function () {
		$.get(HOST + "shops/home_online_shop_3/BOUTIQUE", {currentTime: currentTime},
				function (data) {
					document.getElementById("boutique_data").innerHTML = data;
					$("#boutique_data").slideDown("slow");
					$("#boutique").addClass("selected1");
					$("#boutique").removeClass("unSelected1");
					$("#sharee").removeClass("selected1");
					$("#sharee").addClass("unSelected1");
					common_controller.load_boutique_scroller();
				});
	};

	this.load_sharee_tab = function () {
		$.get(HOST + "shops/home_online_shop_3/SHAREE", {currentTime: currentTime},
				function (data) {
					document.getElementById("boutique_data").innerHTML = data;
					$("#boutique_data").slideDown("slow");
					$("#sharee").addClass("selected1");
					$("#sharee").removeClass("unSelected1");
					$("#boutique").addClass("unSelected1");
					$("#boutique").removeClass("selected1");
					common_controller.load_boutique_scroller();
				});
	};

	this.load_optical_tab = function () {
		$.get(HOST + "shops/home_online_shop_3/OPTICAL", {currentTime: currentTime},
				function (data) {
					document.getElementById("optical_data").innerHTML = data;
					$("#optical_data").slideDown("slow");
					$("#optical").addClass("selected1");
					$("#optical").removeClass("unSelected1");
					$("#furniture").removeClass("selected1");
					$("#furniture").addClass("unSelected1");
					common_controller.load_optical_scroller();
				});
	};

	this.load_furniture_tab = function () {
		$.get(HOST + "shops/home_online_shop_3/FURNITURE", {currentTime: currentTime},
				function (data) {
					document.getElementById("optical_data").innerHTML = data;
					$("#optical_data").slideDown("slow");
					$("#furniture").addClass("selected1");
					$("#furniture").removeClass("unSelected1");
					$("#optical").addClass("unSelected1");
					$("#optical").removeClass("selected1");
					common_controller.load_optical_scroller();
				});
	};

	this.load_latest_e_shop_tab = function () {
		$.get(HOST + "shops/home_eshop", {currentTime: currentTime},
				function (data) {
					document.getElementById("e_shop_data").innerHTML = data;
					$("#e_shop_data").slideDown("slow");
					$("#latest_e_shop").addClass("selected2");
					$("#latest_e_shop").removeClass("unSelected2");
					$("#interior").addClass("unSelected2");
					$("#interior").removeClass("selected2");
					$("#designer_cloth").addClass("unSelected2");
					$("#designer_cloth").removeClass("selected2");
					$("#hardware").addClass("unSelected2");
					$("#hardware").removeClass("selected2");
					$("#crockery").addClass("unSelected2");
					$("#crockery").removeClass("selected2");
					common_controller.load_latest_e_shop_scroller();
				});
	};

	this.load_interior_tab = function () {
		$.get(HOST + "shops/home_online_shop/INTERIOR", {currentTime: currentTime},
				function (data) {
					document.getElementById("e_shop_data").innerHTML = data;
					$("#e_shop_data").slideDown("slow");
					$("#latest_e_shop").addClass("unSelected2");
					$("#latest_e_shop").removeClass("selected2");
					$("#interior").addClass("selected2");
					$("#interior").removeClass("unSelected2");
					$("#designer_cloth").addClass("unSelected2");
					$("#designer_cloth").removeClass("selected2");
					$("#hardware").addClass("unSelected2");
					$("#hardware").removeClass("selected2");
					$("#crockery").addClass("unSelected2");
					$("#crockery").removeClass("selected2");
					common_controller.load_latest_e_shop_scroller();
				});
	};

	this.load_designer_cloth_tab = function () {
		$.get(HOST + "shops/home_online_shop/DESIGNER_CLOTHES", {currentTime: currentTime},
				function (data) {
					document.getElementById("e_shop_data").innerHTML = data;
					$("#e_shop_data").slideDown("slow");
					$("#latest_e_shop").addClass("unSelected2");
					$("#latest_e_shop").removeClass("selected2");
					$("#interior").addClass("unSelected2");
					$("#interior").removeClass("selected2");
					$("#designer_cloth").addClass("selected2");
					$("#designer_cloth").removeClass("unSelected2");
					$("#hardware").addClass("unSelected2");
					$("#hardware").removeClass("selected2");
					$("#crockery").addClass("unSelected2");
					$("#crockery").removeClass("selected2");
					common_controller.load_latest_e_shop_scroller();
				});
	};

	this.load_hardware_tab = function () {
		$.get(HOST + "shops/home_online_shop/KITCHEN", {currentTime: currentTime},
				function (data) {
					document.getElementById("e_shop_data").innerHTML = data;
					$("#e_shop_data").slideDown("slow");
					$("#latest_e_shop").addClass("unSelected2");
					$("#latest_e_shop").removeClass("selected2");
					$("#interior").addClass("unSelected2");
					$("#interior").removeClass("selected2");
					$("#designer_cloth").addClass("unSelected2");
					$("#designer_cloth").removeClass("selected2");
					$("#hardware").addClass("selected2");
					$("#hardware").removeClass("unSelected2");
					$("#crockery").addClass("unSelected2");
					$("#crockery").removeClass("selected2");
					common_controller.load_latest_e_shop_scroller();
				});
	};

	this.load_crockery_tab = function () {
		$.get(HOST + "shops/home_online_shop/CROCKERY", {currentTime: currentTime},
				function (data) {
					document.getElementById("e_shop_data").innerHTML = data;
					$("#e_shop_data").slideDown("slow");
					$("#latest_e_shop").addClass("unSelected2");
					$("#latest_e_shop").removeClass("selected2");
					$("#interior").addClass("unSelected2");
					$("#interior").removeClass("selected2");
					$("#designer_cloth").addClass("unSelected2");
					$("#designer_cloth").removeClass("selected2");
					$("#hardware").addClass("unSelected2");
					$("#hardware").removeClass("selected2");
					$("#crockery").addClass("selected2");
					$("#crockery").removeClass("unSelected2");
					common_controller.load_latest_e_shop_scroller();
				});
	};

	this.load_jewelry_tab = function () {
		$.get(HOST + "shops/home_online_shop_2/JEWELRY", {currentTime: currentTime},
				function (data) {
					document.getElementById("jewelry_data").innerHTML = data;
					$("#jewelry_data").slideDown("slow");
					$("#jewelry").addClass("selected1");
					$("#jewelry").removeClass("unSelected1");
					$("#old_vehicle").addClass("unSelected1");
					$("#old_vehicle").removeClass("selected1");
					$("#mobile").addClass("unSelected1");
					$("#mobile").removeClass("selected1");
					common_controller.load_jewelry_scroller();
				});
	};

	this.load_old_vehicle_tab = function () {
		$.get(HOST + "shops/home_online_shop_2/VEHICLE", {currentTime: currentTime},
				function (data) {
					document.getElementById("jewelry_data").innerHTML = data;
					$("#jewelry_data").slideDown("slow");
					$("#jewelry").addClass("unSelected1");
					$("#jewelry").removeClass("selected1");
					$("#old_vehicle").addClass("selected1");
					$("#old_vehicle").removeClass("unSelected1");
					$("#mobile").addClass("unSelected1");
					$("#mobile").removeClass("selected1");
					common_controller.load_jewelry_scroller();
				});
	};

	this.load_mobile_tab = function () {
		$.get(HOST + "shops/home_online_shop_2/MOBILE", {currentTime: currentTime},
				function (data) {
					document.getElementById("jewelry_data").innerHTML = data;
					$("#jewelry_data").slideDown("slow");
					$("#jewelry").addClass("unSelected1");
					$("#jewelry").removeClass("selected1");
					$("#old_vehicle").addClass("unSelected1");
					$("#old_vehicle").removeClass("selected1");
					$("#mobile").addClass("selected1");
					$("#mobile").removeClass("unSelected1");
					common_controller.load_jewelry_scroller();
				});
	};

	this.load_book_tab = function () {
		$.get(HOST + "shops/home_online_shop_2/BOOK", {currentTime: currentTime},
				function (data) {
					document.getElementById("book_data").innerHTML = data;
					$("#book_data").slideDown("slow");
					$("#book").addClass("selected3");
					$("#book").removeClass("unSelected3");
					$("#cd").addClass("unSelected3");
					$("#cd").removeClass("selected3");
					$("#old_product").addClass("unSelected2");
					$("#old_product").removeClass("selected2");
					common_controller.load_book_scroller();
				});
	};

	this.load_cd_tab = function () {
		$.get(HOST + "shops/home_online_shop_2/CD", {currentTime: currentTime},
				function (data) {
					document.getElementById("book_data").innerHTML = data;
					$("#book_data").slideDown("slow");
					$("#cd").addClass("selected3");
					$("#cd").removeClass("unSelected3");
					$("#book").addClass("unSelected3");
					$("#book").removeClass("selected3");
					$("#old_product").addClass("unSelected2");
					$("#old_product").removeClass("selected2");
					common_controller.load_book_scroller();
				});
	};

	this.load_old_product_tab = function () {
		$.get(HOST + "products/home_product", {currentTime: currentTime},
				function (data) {
					document.getElementById("book_data").innerHTML = data;
					$("#book_data").slideDown("slow");
					$("#old_product").addClass("selected2");
					$("#old_product").removeClass("unSelected2");
					$("#cd").addClass("unSelected3");
					$("#cd").removeClass("selected3");
					$("#book").addClass("unSelected3");
					$("#book").removeClass("selected3");
					common_controller.load_book_scroller();
				});
	};

	this.load_house_scroller = function () {
		$(document).ready(function () {
			$("#house_data ul li").slideDown("slow");
			$("#house_ext a.scrollActive").removeClass("scrollActive");
			$("#house_ext a").first(0).addClass("scrollActive");
			$("#house_data").jCarouselLite({
				vertical: false,
				visible: 1,
				circular: false,
				btnNext: "#house_l_a",
				btnPrev: "#house_r_a",
				speed: 200,
				afterEnd: function (a) {
					$("#house_ext a.scrollActive").removeClass("scrollActive");
					$("#house_ext a." + $(a[0]).attr("id")).addClass("scrollActive");
				},
				btnGo: ["#house_ext .0", "#house_ext .1", "#house_ext .2", "#house_ext .3", "#house_ext .4"]
			});
			$("#house_ext a").click(function () {
				$("#house_ext a.scrollActive").removeClass("scrollActive");
				$(this).addClass("scrollActive");
			});
		});
	};

	this.load_complex_scroller = function () {
		$(document).ready(function () {
			$("#complex_data ul li").slideDown("slow");
			$("#complex_ext a.scrollActive").removeClass("scrollActive");
			$("#complex_ext a").first(0).addClass("scrollActive");
			$("#complex_data").jCarouselLite({
				vertical: false,
				visible: 1,
				circular: false,
				btnNext: "#complex_l_a",
				btnPrev: "#complex_r_a",
				speed: 200,
				afterEnd: function (a) {
					$("#complex_ext a.scrollActive").removeClass("scrollActive");
					$("#complex_ext a." + $(a[0]).attr("id")).addClass("scrollActive");
				},
				btnGo: ["#complex_ext .0", "#complex_ext .1", "#complex_ext .2", "#complex_ext .3", "#complex_ext .4"]
			});
			$("#complex_ext a").click(function () {
				$("#complex_ext a.scrollActive").removeClass("scrollActive");
				$(this).addClass("scrollActive");
			});
		});
	};

	this.load_boutique_scroller = function () {
		$(document).ready(function () {
			$("#boutique_data ul li").slideDown("slow");
			$("#boutique_ext a.scrollActive").removeClass("scrollActive");
			$("#boutique_ext a").first(0).addClass("scrollActive");
			$("#boutique_data").jCarouselLite({
				vertical: false,
				visible: 1,
				circular: false,
				btnNext: "#boutique_l_a",
				btnPrev: "#boutique_r_a",
				speed: 200,
				afterEnd: function (a) {
					$("#boutique_ext a.scrollActive").removeClass("scrollActive");
					$("#boutique_ext a." + $(a[0]).attr("id")).addClass("scrollActive");
				},
				btnGo: ["#boutique_ext .0", "#boutique_ext .1", "#boutique_ext .2", "#boutique_ext .3", "#boutique_ext .4"]
			});
		});
	};

	this.load_optical_scroller = function () {
		$(document).ready(function () {
			$("#optical_data ul li").slideDown("slow");
			$("#optical_ext a.scrollActive").removeClass("scrollActive");
			$("#optical_ext a").first(0).addClass("scrollActive");
			$("#optical_data").jCarouselLite({
				vertical: false,
				visible: 1,
				circular: false,
				btnNext: "#optical_l_a",
				btnPrev: "#optical_r_a",
				speed: 200,
				afterEnd: function (a) {
					$("#optical_ext a.scrollActive").removeClass("scrollActive");
					$("#optical_ext a." + $(a[0]).attr("id")).addClass("scrollActive");
				},
				btnGo: ["#optical_ext .0", "#optical_ext .1", "#optical_ext .2", "#optical_ext .3", "#optical_ext .4"]
			});
		});
	};

	this.load_latest_e_shop_scroller = function () {
		$(document).ready(function () {
			$("#e_shop_data ul li").slideDown("slow");
			$("#e_shop_ext a.scrollActive").removeClass("scrollActive");
			$("#e_shop_ext a").first(0).addClass("scrollActive");
			$("#e_shop_data").jCarouselLite({
				vertical: false,
				visible: 2,
				circular: false,
				btnNext: "#e_shop_l_a",
				btnPrev: "#e_shop_r_a",
				speed: 200,
				afterEnd: function (a) {
					$("#e_shop_ext a.scrollActive").removeClass("scrollActive");
					$("#e_shop_ext a." + $(a[0]).attr("id")).addClass("scrollActive");
				},
				btnGo: ["#e_shop_ext .0", "#e_shop_ext .1", "#e_shop_ext .2", "#e_shop_ext .3", "#e_shop_ext .4"]
			});
		});
	};

	this.load_jewelry_scroller = function () {
		$(document).ready(function () {
			$("#jewelry_data ul li").slideDown("slow");
			$("#jewelry_ext a.scrollActive").removeClass("scrollActive");
			$("#jewelry_ext a").first(0).addClass("scrollActive");
			$("#jewelry_data").jCarouselLite({
				vertical: false,
				visible: 1,
				circular: false,
				btnNext: "#jewelry_l_a",
				btnPrev: "#jewelry_r_a",
				speed: 200,
				afterEnd: function (a) {
					$("#jewelry_ext a.scrollActive").removeClass("scrollActive");
					$("#jewelry_ext a." + $(a[0]).attr("id")).addClass("scrollActive");
				},
				btnGo: ["#jewelry_ext .0", "#jewelry_ext .1", "#jewelry_ext .2", "#jewelry_ext .3", "#jewelry_ext .4"]
			});
		});
	};

	this.load_book_scroller = function () {
		$(document).ready(function () {
			$("#book_data ul li").slideDown("slow");
			$("#book_ext a.scrollActive").removeClass("scrollActive");
			$("#book_ext a").first(0).addClass("scrollActive");
			$("#book_data").jCarouselLite({
				vertical: false,
				visible: 1,
				circular: false,
				btnNext: "#book_l_a",
				btnPrev: "#book_r_a",
				speed: 200,
				afterEnd: function (a) {
					$("#book_ext a.scrollActive").removeClass("scrollActive");
					$("#book_ext a." + $(a[0]).attr("id")).addClass("scrollActive");
				},
				btnGo: ["#book_ext .0", "#book_ext .1", "#book_ext .2", "#book_ext .3", "#book_ext .4"]
			});
		});
	};

	this.load_ad_two = function () {
		$(document).ready(
				function () {
					$('#adBox2').cycle({
						pause: 1
					});
				});
	};

	this.load_ad_one = function () {
		$(document).ready(
				function () {
					$('#adBox1').cycle({
						pause: 1
					});
				});
	};

	this.load_ad_three = function () {
		$(document).ready(
				function () {
					$('#adBox3').cycle({
						pause: 1
					});
				});
	};

	this.astrologer_tab_data = function (itemId) {
		$.get(HOST + "astrologers/tab_detail/" + itemId, {currentTime: currentTime},
				function (data) {
					document.getElementById("shopShowCase").style.display = "none";
					document.getElementById("shopShowCase").innerHTML = data;
					$("#shopShowCase").fadeIn("slow");
				});
	};

	this.load_landing_page_right_ad = function () {
		if (document.getElementById("landingPageAd")) {
			$(document).ready(function () {
				$("#landingPageAd").jCarouselLite({
					vertical: true,
					hoverPause: true,
					visible: 6,
					auto: 500,
					speed: 1000
				});
			});
		}
	};

	this.load_galleria = function () {
		$.getScript(HOST + "js/jQuery/jquery.galleria.js", function () {
			$(document).ready(function () {
				$('ul.gallery_demo').galleria({
					history: false,
					clickNext: false,
					insert: undefined,
					onImage: function () {
						$('.nav').css('display', 'block');
					}
				});
			});
		});
	};

	this.load_resort_tab_detail = function (itemId) {
		$.get(HOST + "resorts/tab_detail/" + itemId, {currentTime: currentTime}, function (data) {
			document.getElementById("shopShowCase").innerHTML = data;
		});
	};

	this.get_coaching_institute_gallery = function (itemId) {
		$.get(HOST + "coaching_institutes/gallery/" + itemId, {currentTime: currentTime},
				function (data) {
					document.getElementById("shopShowCase").innerHTML = data;
					$(document).ready(function () {
						$("#ic1").imageCloud({
							width: 600,
							height: 600,
							color: '#aabb44',
							link: true
						});
					});
				});
	};

	this.coaching_institute_tab_data = function (itemId) {
		$.get(HOST + "coaching_institutes/tab_detail/" + itemId, {currentTime: currentTime},
				function (data) {
					document.getElementById("shopShowCase").innerHTML = data;
				});
	};

	this.institute_tab_data = function (itemId) {
		$.get(HOST + "institutes/institute_tab_data/" + itemId, {currentTime: currentTime},
				function (data) {
					document.getElementById("shopShowCase").innerHTML = data;
				});
	};

	this.load_saloon_image_gallery_scroller = function () {
		if (document.getElementById("saloonGalleryBox")) {
			$("#saloonGalleryBox").jCarouselLite({
				vertical: false,
				visible: 5,
				circular: true,
				btnNext: "#saloonGR",
				btnPrev: "#saloonGL",
				speed: 200,
				auto: 400,
				hoverPause: true
			});
		}
	};

	this.saloon_tab_data = function (itemId) {
		$.get(HOST + "saloons/saloon_show_case_tab_data/" + itemId, {currentTime: currentTime}, function (data) {
			document.getElementById("tabDataBox").style.display = "none";
			document.getElementById("tabDataBox").innerHTML = data;
			$("#tabDataBox").fadeIn(1500);
		});
	};

	this.saloon_gallery_image_big = function (itemId) {
		var galleryBoxObj = document.getElementById("galleryImgBig");
		galleryBoxObj.style.opacity = "0.1";
		$.get(HOST + "saloons/saloonShowCaseDetailCenter/" + itemId, {currentTime: currentTime},
				function (data) {
					galleryBoxObj.innerHTML = data;
					galleryBoxObj.style.opacity = "1";
					$("#saloonBigImg").fadeIn(1500);
				});
	};

	this.load_vehicle_gallery_scroller = function () {
		$.getScript(HOST + 'js/jQuery/jcarousellite_1.0.1.min.js', function () {
			if (document.getElementById("vehicleGalleryBox")) {
				$("#vehicleGalleryBox").jCarouselLite({
					vertical: false,
					visible: 7,
					btnNext: "#vehicleGR",
					btnPrev: "#vehicleGL",
					speed: 200,
					circular: true
				});
			}
		});
	};

	this.set_low_opacity = function (thisObject) {
		//activeImg
		if (!$(thisObject).hasClass("activeImg")) {
			$(thisObject).removeClass("highOpacity");
			$(thisObject).addClass("lowOpacity");
		}
	};

	this.set_high_opacity = function (thisObject) {
		$(thisObject).removeClass("lowOpacity");
		$(thisObject).addClass("highOpacity");
	};

	this.get_vehicle_detail = function (currentObj, vehicleId) {
		$.get(HOST + "vehicles/vehicle_detail/" + vehicleId, {currentTime: currentTime},
				function (data) {
					document.getElementById("showcaseDetail").innerHTML = data;
					$("#vehicleBigImg").fadeIn(1500);
					if (activeImg != undefined && activeImg != "vg" + vehicleId) {
						$("#" + activeImg).removeClass("highOpacity");
						$("#" + activeImg).removeClass("activeImg");
						$("#" + activeImg).addClass("lowOpacity");
					}
					$(currentObj).addClass("highOpacity");
					$(currentObj).addClass("activeImg");
					activeImg = "vg" + vehicleId;
				}
		);
	};

	this.set_active_image = function (currentObj) {
		$(currentObj).removeClass("shareeShowcaseImg");
		$(currentObj).addClass("shareeShowcaseImgActive");
	};

	this.set_in_active_image = function (currentObj) {
		$(currentObj).removeClass("shareeShowcaseImgActive");
		$(currentObj).addClass("shareeShowcaseImg");
	};

	this.sharee_detail_page = function (itemId) {
		$.get(HOST + "sharees/sharee_detail/" + itemId, {currentTime: currentTime},
				function (data) {
					document.getElementById("shareeShowcaseDetailBox").innerHTML = data;
					$("#shareeShowcaseBigImg").fadeIn(1500);
					$("#shareeShowcaseDesc").fadeIn(1500);
				});
	};

	this.load_jewelry_g_image_scroller = function () {
		$.getScript(HOST + "js/jQuery/jcarousellite_1.0.1.min.js", function () {
			if (document.getElementById("shopShowCaseJewelry")) {
				$(".showCaseImageBoxJ img").slideDown("slow");
				$("#shopShowCaseJewelry").jCarouselLite({
					vertical: false,
					visible: 4,
					circular: false,
					btnNext: "#jewelryRight",
					btnPrev: "#jewelryLeft",
					speed: 200
				});
			}
		});
	};

	this.load_jewelry_image_detail = function (jewelryId, template) {
		var jewelryImageBoxObj = document.getElementById("shopShowCase");
		$.get(HOST + "jewelries/jewelry_detail/" + jewelryId + "/" + template, {currentTime: currentTime},
				function (data) {
					jewelryImageBoxObj.style.display = "none";
					jewelryImageBoxObj.innerHTML = data;
					$("#shopShowCase").fadeIn("slow");
					$("#m_view").addClass("myProfileMenu");
					$("#m_view").removeClass("myProfileMenuSelected");
					$("#p_view").addClass("myProfileMenuSelected2");
					$("#p_view").removeClass("myProfileMenu2");
				});
	};

	this.load_slider = function () {
		$.getScript(HOST + 'js/jQuery/jcarousellite_1.0.1.min.js', function () {
			$("#designerGalleryBox").jCarouselLite({
				vertical: false,
				visible: 1.5,
				circular: true,
				btnNext: "#designerGalleryR",
				btnPrev: "#designerGalleryL",
				speed: 200
			});
		});
	};

	this.get_interior_image_detail = function (id) {
		$.get(HOST + "interiors/interior_detail/" + id, {currentTime: currentTime},
				function (data) {
					document.getElementById("imageDataBox").style.display = "none";
					document.getElementById("imageDataBox").innerHTML = data;
					$("#imageDataBox").fadeIn("slow");
				});
	};

	this.get_furniture_detail = function (furnitureId, template) {
		$.get(HOST + "furnitures/product_detail/" + furnitureId + "/" + template, {currentTime: currentTime},
				function (data) {
					document.getElementById("shopShowCase").innerHTML = data;
					$("#fBigImg").fadeIn("slow");
				}
		);
	};

	this.get_designer_cloth_image_detail = function (designerClothId) {
		$.get(HOST + "designer_clothes/designer_cloth_detail/" + designerClothId, {currentTime: currentTime},
				function (data) {
					document.getElementById("imageDataBox").style.display = "none";
					document.getElementById("imageDataBox").innerHTML = data;
					$("#imageDataBox").fadeIn("slow");
				});
	};

	this.load_boutique_gallery_scroll1 = function () {
		$(function () {
			$("#boutiqueGalleryBox1").jCarouselLite({
				vertical: true,
				hoverPause: true,
				visible: 3,
				/*auto:500,*/
				speed: 800,
				circular: false
			});
		});
	};

	this.load_boutique_gallery_scroll2 = function () {
		$(function () {
			$("#boutiqueGalleryBox2").jCarouselLite({
				vertical: true,
				hoverPause: true,
				visible: 3,
				/*auto:500,*/
				speed: 800,
				circular: false
			});
		});
	};

	this.load_color_picker = function (id) {
		$('#' + id).ColorPicker({
			color: '#FFFFFF',
			onShow: function (colpkr) {
				$(colpkr).fadeIn(500);
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut(500);
				return false;
			},
			onChange: function (hsb, hex, rgb) {
				$('#' + id).css('backgroundColor', '#' + hex);
				var color = hex.toUpperCase();
				$('#' + id).val(color);
			},
			onSubmit: function (hsb, hex, rgb) {
				var color = hex.toUpperCase();
				$('#' + id).val(color);
				$('#' + id).ColorPickerHide();
			},
			onBeforeShow: function () {
				$(this).ColorPickerSetColor(this.value);
			}
		}).bind('keyup', function () {
			$(this).ColorPickerSetColor(this.value);
		});
	};

	this.get_boutique_big_image = function (boutiqueId) {
		$.get(HOST + "boutiques/big_image/" + boutiqueId, {currentTime: currentTime},
				function (data) {
					document.getElementById("boutiqueBigImgBox").innerHTML = data;
					$("#boutiqueBigImg").fadeIn(1500);
					common_controller.boutique_image_detail(boutiqueId);
				});
	};

	this.boutique_image_detail = function (boutiqueId) {
		$.get(HOST + "boutiques/boutique_detail/" + boutiqueId, {currentTime: currentTime},
				function (data) {
					document.getElementById("imageData").innerHTML = data;
					$("#imageData").fadeIn(1500);
				});
	};

	this.disable_button = function (id) {
		document.getElementById(id).disabled = true;
	};

	this.load_vehicle_accessories_gallery = function () {
		$(document).ready(function () {
			//Show Banner
			$(".main_image .desc").show(); //Show Banner
			$(".main_image .block").animate({opacity: 0.85}, 1); //Set Opacity
			//Click and Hover events for thumbnail list
			$(".image_thumb ul li:first").addClass('active');
			$(".image_thumb ul li").click(
					function () {
						//Set Variables
						var imgAlt = $(this).find('img').attr("alt"); //Get Alt Tag of Image
						var imgTitle = $(this).find('a').attr("href"); //Get Main Image URL
						var imgDesc = $(this).find('.block').html(); 	//Get HTML of block
						var imgDescHeight = $(".main_image").find('.block').height();	//Calculate height of block

						if ($(this).is(".active")) {  //If it's already active, then...
							return false; // Don't click through
						} else {
							//Animate the Teaser
							$(".main_image .block").animate({
								opacity: 0,
								marginBottom: -imgDescHeight
							}, 250, function () {
								$(".main_image .block").html(imgDesc).animate({opacity: 0.85, marginBottom: "0"}, 250);
								$(".main_image img").attr({src: imgTitle, alt: imgAlt});
							});
						}
						$(".image_thumb ul li").removeClass('active'); //Remove class of 'active' on all lists
						$(this).addClass('active');  //add class of 'active' on this list only
						return false;

					}).hover(function () {
						$(this).addClass('hover');
					}, function () {
						$(this).removeClass('hover');
					});
			//Toggle Teaser
			$("a.collapse").click(function () {
				$(".main_image .block").slideToggle();
				$("a.collapse").toggleClass("show");
			});
		});
		common_controller.load_vehicle_accessory_scroller();
	};

	this.load_vehicle_accessory_scroller = function () {
		$.getScript(HOST + 'js/jQuery/jcarousellite_1.0.1.min.js', function () {
			$(document).ready(function () {
				$(".image_thumb").jCarouselLite({
					vertical: true,
					circular: false,
					visible: 4,
					speed: 200,
					btnNext: "#next",
					btnPrev: "#prev"
				});
			});
		});
	};

	var geocoder;
	var map;
	this.initialize = function () {
		geocoder = new google.maps.Geocoder();
		var latlng = new google.maps.LatLng(28.673871163807405, 77.22496000000001);   //Delhi, India
		var myOptions = {
			zoom: 15,
			center: latlng,
			mapTypeId: google.maps.MapTypeId.ROADMAP
		};
		map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	};

	this.load_google_map_by_address = function (address, id) {
		//var address = document.getElementById("address").value;
		geocoder = new google.maps.Geocoder();
		geocoder.geocode({'address': address}, function (results, status) {
			if (status == google.maps.GeocoderStatus.OK) {
				var myOptions = {
					zoom: 12,
					mapTypeId: google.maps.MapTypeId.ROADMAP,
					mapTypeControl: true,
					disableDoubleClickZoom: false,
					scrollwheel: false,
					backgroundColor: "inherit"
				};
				map = new google.maps.Map(document.getElementById(id), myOptions);
				map.setCenter(results[0].geometry.location);
				var marker = new google.maps.Marker({
					map: map,
					position: results[0].geometry.location
				});
				var infowindow = new google.maps.InfoWindow({content: address});
				google.maps.event.addListener(marker, 'click', function () {
					infowindow.open(map, marker);
				});
			} else {
				alert("Geocode was not successful for the following reason: " + status);
			}
		});
	};

	this.load_map = function (obj_id) {
		//  alert(obj_id);
		$(document).ready(function () {
			var address = trim(document.getElementById("address").value);
			if (address != null && address != "") {
				common_controller.load_google_map_by_address(address, "shopShowCase");
				//common_controller.load_current_sub_menu(obj_id);
			}
		});
	};

	this.load_book_show_case = function (shop_id, obj_id, template) {
		$.get(HOST + "books/book_detail/" + shop_id + "/" + template, {}, function (data) {
			$("#shopShowCase").html(data);
			$(document).ready(function () {
				common_controller.load_template(template);
				common_controller.load_current_sub_menu(obj_id);
			});
		});
	};

	this.load_hardware_show_case = function (shop_id, obj_id, template) {
		$.get(HOST + "hardwares/hardware_detail/" + shop_id + "/" + template, {}, function (data) {
			$("#shopShowCase").html(data);
			$(document).ready(function () {
				common_controller.load_template(template);
				common_controller.load_current_sub_menu(obj_id);
			});
		});
	};

	this.load_optical_show_case = function (shop_id, obj_id, template) {
		$.get(HOST + "opticals/optical_detail/" + shop_id + "/" + template, {}, function (data) {
			$("#shopShowCase").html(data);
			$(document).ready(function () {
				common_controller.load_template(template);
				common_controller.load_current_sub_menu(obj_id);
			});
		});
	};

	this.load_sharee_show_case = function (shop_id, obj_id, template) {
		$.get(HOST + "sharees/sharee_showcase/" + shop_id + "/" + template, {}, function (data) {
			$("#shopShowCase").html(data);
			$(document).ready(function () {
				common_controller.load_template(template);
				common_controller.load_current_sub_menu(obj_id);
			});
		});
	};

	this.load_sport_show_case = function (shop_id, obj_id, template) {
		$.get(HOST + "sports/sport_gallery/" + shop_id + "/" + template, {}, function (data) {
			$("#shopShowCase").html(data);
			$(document).ready(function () {
				common_controller.load_template(template);
				common_controller.load_current_sub_menu(obj_id);
			});
		});
	};

	this.load_vehicle_show_case = function (shop_id, obj_id, template) {
		$.get(HOST + "vehicles/vehicle_showcase/" + shop_id + "/" + template, {}, function (data) {
			$("#shopShowCase").html(data);
			$(document).ready(function () {
				common_controller.load_template(template);
				common_controller.load_current_sub_menu(obj_id);
			});
		});
	};

	this.load_designer_show_case = function (shop_id, obj_id, template) {
		$.get(HOST + "designer_clothes/show_case/" + shop_id + "/" + template, {}, function (data) {
			$("#shopShowCase").html(data);
			$(document).ready(function () {
				common_controller.load_template(template);
				common_controller.load_current_sub_menu(obj_id);
			});
		});
	};

	this.load_furniture_show_case = function (shop_id, obj_id, template) {
		$.get(HOST + "furnitures/furniture_detail/" + shop_id + "/" + template, {}, function (data) {
			$("#shopShowCase").html(data);
			$(document).ready(function () {
				common_controller.load_template(template);
				common_controller.load_current_sub_menu(obj_id);
			});
		});
	};

	this.load_interior_show_case = function (shop_id, obj_id, template) {
		$.get(HOST + "interiors/show_case/" + shop_id + "/" + template, {}, function (data) {
			$("#shopShowCase").html(data);
			$(document).ready(function () {
				common_controller.load_template(template);
				common_controller.load_current_sub_menu(obj_id);
			});
		});
	};

	this.load_computer_show_case = function (shop_id, obj_id, template) {
		$.get(HOST + "computers/gallery/" + shop_id + "/" + template, {}, function (data) {
			$("#shopShowCase").html(data);
			$(document).ready(function () {
				common_controller.load_template(template);
				common_controller.load_current_sub_menu(obj_id);
			});
		});
	};

	this.load_boutique_show_case = function (shop_id, obj_id, template) {
		$.get(HOST + "boutiques/show_case/" + shop_id + "/" + template, {}, function (data) {
			$("#shopShowCase").html(data);
			common_controller.load_template(template);
			common_controller.load_current_sub_menu(obj_id);
		});
	};

	this.load_vehicle_accessories_show_case = function (shop_id, obj_id, template) {
		$.get(HOST + "vehicle_accessories/gallery/" + shop_id + "/" + template, {}, function (data) {
			$("#shopShowCase").html(data);
			$(document).ready(function () {
				common_controller.load_template(template);
				common_controller.load_current_sub_menu(obj_id);
			});
		});
	};

	this.load_jewelry_show_case = function (shop_id, obj_id, template) {
		if (template != "slider_big_view") {
			$.get(HOST + "jewelries/show_case/" + shop_id + "/" + template, {}, function (data) {
				$("#shopShowCase").html(data);
				$(document).ready(function () {
					common_controller.load_template(template);
					common_controller.load_current_sub_menu(obj_id);
				});
			});
		}
		/*else {
		 $.get(HOST + "jewelries/gallery/" + shop_id, {}, function(data) {
		 $("#shopShowCase").html(data);
		 $(document).ready(function() {
		 common_controller.load_vehicle_accessories_gallery();
		 common_controller.load_current_sub_menu(obj_id);
		 });
		 });
		 }*/
	};

	this.load_medical_equipment_show_case = function (shop_id, obj_id, template) {
		$.get(HOST + "medical_equipments/shop_gallery/" + shop_id + "/" + template, {}, function (data) {
			$("#shopShowCase").html(data);
			$(document).ready(function () {
				common_controller.load_template(template);
				common_controller.load_current_sub_menu(obj_id);
			});
		});
	};

	this.load_eshop_product = function (shop_id, obj_id, template) {
		$.get(HOST + "eshop_products/products/" + shop_id + "/" + template, {currentTime: currentTime}, function (data) {
			$("#shopShowCase").html(data);
			$(document).ready(function () {
				common_controller.load_template(template);
				common_controller.load_current_sub_menu(obj_id);
			});
		});
	};

	this.load_shop_template = function (template_id) {
		$.get(HOST + "shop_templates/template_image/" + template_id, {}, function (data) {
			$("#tempData").html(data);
			$.blockUI({
				message: $('#tempDataBox'),
				css: {
					top: ($(window).height() - 400) / 2 + 'px',
					left: ($(window).width() - 400) / 2 + 'px',
					width: '570px',
					border: 'none',
					background: 'none'
				},
				overlayCSS: {backgroundColor: '#00f'}
			});
		});
	};

	this.load_flow_gallery = function () {
		$.getScript(HOST + "js/jQuery/jquery.easing.1.3.js");
		$.getScript(HOST + 'js/jQuery/jquery.flowgallery.js', function () {
			$(function () {
				$('#medical_gallery').flowGallery({
					thumbWidth: 100,
					activeIndex: 1,
					animate: true,
					forceWidth: false,
					forceHeight: false,
					backgroundColor: 'none',
					thumbHeight: 100,
					thumbTopOffset: 'auto',
					imagePadding: 0,
					easing: 'easeOutCubic',
					duration: 'slow',
					forwardOnActiveClick: true
				});
			});
		});
	};

	this.load_galleria_simple = function () {
		$("#big_img").fadeIn(1500);
		/*$("#shareeShowcaseDesc").fadeIn(1500);*/
	};

	this.load_ad_gallery = function () {
		var link = $("<link>");
		link.attr({
			type: 'text/css',
			rel: 'stylesheet',
			href: HOST + "css/jquery.ad-gallery.css"
		});
		$("head").append(link);
		$.getScript(HOST + "js/jQuery/jquery.ad-gallery.js", function () {
			var galleries = $('#kitchenGallery').adGallery();
			var effects = Array("slide-hori", "slide-vert", "fade", "resize");
			effects.sort(function () {
				return parseInt(Math.random() * 3)
			});
			galleries[0].settings.effect = effects[0];
			galleries[0].settings.width = true;
			galleries[0].settings.height = true;
		});
	};

	this.load_coin_slider = function () {
		var link = $("<link>");
		link.attr({
			type: 'text/css',
			rel: 'stylesheet',
			href: HOST + "css/coin-slider-styles.css"
		});
		$("head").append(link);
		$.getScript(HOST + "js/jQuery/coin-slider.min.js", function () {
			$('#coin-slider').coinslider({delay: 5000, width: 400, height: 400});
		});
	};

	this.load_current_sub_menu = function (obj_id) {
		if (obj_id != "p_view") {
			$("#" + obj_id).addClass("myProfileMenuSelected");
			$("#" + obj_id).removeClass("myProfileMenu");
			$("#p_view").removeClass("myProfileMenuSelected2");
			$("#p_view").addClass("myProfileMenu2");
		} else {
			$("#p_view").removeClass("myProfileMenu2");
			$("#p_view").addClass("myProfileMenuSelected2");
			$("div.myProfileMenuSelected").addClass("myProfileMenu");
			$("div.myProfileMenu").removeClass("myProfileMenuSelected");
		}
	};

	this.load_cupboard_gallery = function () {
		$.getScript(HOST + "js/jQuery/jcarousellite_1.0.1.min.js", function () {
			$("#boutiqueBigImg").fadeIn(1500);
			common_controller.load_boutique_gallery_scroll1();
			common_controller.load_boutique_gallery_scroll2();
		});
	};

	this.load_item_product_detail = function (product_id, model_name, replace_id, template) {
		$.get(HOST + common_controller.model_url[model_name] + product_id + "/" + template, {currentTime: currentTime},
				function (data) {
					$("#" + replace_id).html(data);
					$("#big_img").fadeIn(1500);
				}
		);
	};

	this.model_url = {
		"Boutique": "boutiques/boutique_detail/",
		"Book": "books/product_detail/",
		"DesignerCloth": "designer_clothes/designer_cloth_detail/",
		"Interior": "interiors/interior_detail/",
		"Sharee": "sharees/sharee_detail/",
		"Vehicle": "vehicles/vehicle_detail/",
		"Jewelry": "jewelries/jewelry_detail/",
		"Computer": "computers/product_detail/",
		"Furniture": "furnitures/product_detail/",
		"Hardware": "hardwares/product_detail/",
		"MedicalEquipment": "medical_equipments/product_detail/",
		"Optical": "opticals/product_detail/",
		"Sport": "sports/product_detail/",
		"VehicleAccessory": "vehicle_accessories/product_detail/",
		"EshopProduct": "eshop_products/product_detail/"
	};

	this.load_template = function (template) {
		if (template == "grid_view") {
			$.getScript(HOST + 'js/jQuery/grid_controller.js', function () {
				load_grid_gallery();
			});
		} else if (template == "cupboard_view") {
			common_controller.load_cupboard_gallery();
		} else if (template == "ad_gallery_view") {
			common_controller.load_ad_gallery();
		} else if (template == "slider_view") {
			common_controller.load_slider();
		} else if (template == "toggle_teaser_view") {
			common_controller.load_vehicle_accessories_gallery();
		} else if (template == "coin_slider_view") {
			common_controller.load_coin_slider();
		} else if (template == "flow_gallery_view") {
			common_controller.load_flow_gallery();
		} else if (template == "galleria_simple_view") {
			common_controller.load_galleria_simple();
		} else if (template == "galleria_view") {
			common_controller.load_galleria();
		} else if (template == "gallery_view") {
			common_controller.load_vehicle_gallery_scroller();
		}
	};

	this.load_online_shop_categories = function (replace_id) {
		if ($("#" + replace_id).html() == "") {
			$.get(HOST + "shop_categories/categories", {currentTime: currentTime}, function (data) {
				$("#" + replace_id).html(data);
				$("#" + replace_id).show("slide", {direction: "left"}, 1000);
			});
		}
	};

	this.check_empty_string = function (form) {
		var val = trim(form.q.value);
		return val != "";
	};

	this.disable_button = function (id) {
		document.getElementById(id).disabled = true;
		return true;
	};
}

var common_controller = new CommonController();

trim = function (stringToTrim) {
	return stringToTrim.replace(/^\s+|\s+$/g, "");
};

get_image_size = function (img_src) {
	var new_img = new Image();
	new_img.src = img_src;
	var size;
	size = $(new_img).ready(function () {
		return {width: new_img.width, height: new_img.height};
	});
	return size;
	//alert(p[0]['width']);
	//alert (p[0]['width']+" "+p[0]['height']);
};

function edit_profile_tab_active() {
	$("#edit").addClass("active");
	$("#password").removeClass("active");
	$("#my_business").removeClass("active");
}

function real_estate_tab_active() {
	$("#realestate").addClass("active");
}
function brand_tab_active() {
	$("#brand").addClass("active");
}
function company_tab_active() {
	$("#company").addClass("active");
}
function password_tab_active() {
	$("#password").addClass("active");
	$("#edit").removeClass("active");
	$("#my_business").removeClass("active");
}
function my_business_tab_active() {
	$("#my_business").addClass("active");
}
function active_tab(id) {
	//.log(obj.a);
	$("#"+id +" a").removeClass('active');
	//obj.addClass('active');
	//obj.closest('li').addClass('active');
}

my_account = function (controller, action) {
	jQuery.get(HOST_NAME + "/" + controller + "/" + action, {}, function (data) {
		jQuery('.edit_profile_div').html(data);
		validate_forms();
		initPaginator();
	});
}

function product_display(controller, action, id, cat_id) {
	jQuery.get(HOST_NAME + "/" + controller + "/" + action + '/' + id + '/' + cat_id, {},
			function (data) {
				jQuery('.edit_profile_div').html(data);
				initPaginators();
			});
}

function edit_user_and_business_detail(controller, action, shop_id, model_id) {
	jQuery.get(HOST_NAME + "/" + controller + "/" + action + '/' + shop_id + "/" + model_id, {},
			function (data) {
				jQuery('#container').html(data);

			});
}

function real_estate_sub_category(controller, action, id) {
	jQuery.get(HOST_NAME + "/" + controller + "/" + action + '/' + id, {},
			function (data) {
				jQuery('.edit_profile_div').html(data);
				initPaginator();
			});
}

function update_local_business_products(controller, action, $category_id, shop_id, model, $product_id) {
	jQuery.get(HOST_NAME + "/" + controller + "/" + action + '/' + $category_id + '/' + shop_id + "/" + model + "/" + $product_id, {},
			function (data) {
				jQuery('.edit_profile_div').html(data);

			});
}

/*function update_real_estate_products(controller, action, $real_estate_id, model, $product_id) {
 jQuery.get(HOST_NAME + "/" + controller + "/" + action + '/' + $real_estate_id  + "/" + model +"/" + $product_id, {},
 function (data) {
 jQuery('.edit_profile_div').html(data);

 });
 }*/

var initPaginator = function () {
	$("div#paginate a").click(function (e) {
		url = $(this).attr('href');
		// url = HOST_NAME + url;
		$.ajax({
			type: "get",
			url: url,
			datatype: "html",
			success: function (data) {
				//   index_outer = $(data).find('div.search_class');
				$(".edit_profile_div").html(data);
				initPaginator();
			},
			error: function () {
				console.log("AJAX request was a failure");
			}
		});
		return false;

	});
}

var initPaginators = function () {
	$("div#paginate a").click(function (e) {
		url = $(this).attr('href');
		// url = HOST_NAME + url;
		$.ajax({
			type: "get",
			url: url,
			datatype: "html",
			success: function (data) {
				//   index_outer = $(data).find('div.search_class');
				$(".edit_profile_div1").html(data);
				initPaginators();
			},
			error: function () {
				console.log("AJAX request was a failure");
			}
		});
		return false;

	});
}


function sales_home_page(controller, action, id, $model_name) {
	jQuery.get(HOST_NAME + "/" + controller + "/" + action + '/' + id + '/' + $model_name, {},
			function (data) {
				jQuery('#sale_div').html(data);
				initPaginator();
			});
}

function message() {
	alert('Go to your business first');
}
