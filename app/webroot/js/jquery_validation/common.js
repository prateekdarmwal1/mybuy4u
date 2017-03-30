var Password = function () {
};
Password.prototype.submit = function (formObject) {
    var $this = formObject
        , url = $this.attr('action')
        , method = $this.attr('method')
        , data = new FormData($this[0])
        , button = $this.find('input[type=submit]');
    jQuery.ajax({
        url:url,
        type:method,
        data:data,
        dataType:'json',
        cache:false,
        contentType:false,
        processData:false,
        beforeSend:function () {
            button.attr('disabled', 'disabled');
            button.html('Submitting...');
            $this.find("input").attr("readonly", "readonly");
            $this.find("textarea").attr("readonly", "readonly");
        },
        statusCode:{
            200:function (data) {
               passwordProcessData(data, $this);
            },
            500:function () {
                jQuery("div#query-form-msg").attr("class", "notice error");
                jQuery("div#query-form-msg i").attr("class", "icon-remove-sign icon-large");
                jQuery("div#query-form-msg span").html("There is some error occurred.");
            },
            404:function () {
                jQuery("div#query-form-msg").attr("class", "notice error");
                jQuery("div#query-form-msg i").attr("class", "icon-remove-sign icon-large");
                jQuery("div#query-form-msg span").html("There is some error occurred.");
            }
        },
        complete:function () {
            button.removeAttr('disabled');
            button.html("Submit");
            $this.find("input").removeAttr("readonly", "readonly").val("");
            $this.find("textarea").removeAttr("readonly", "readonly").val("");
        }
    })
};

passwordProcessData = function (data, $el) {
    var formId = $el.attr("id");
    jQuery.each(data, function (key, val) {
        if (key === "success") {
            jQuery("div#query-form-msg").attr("class", "notice success");
            jQuery("div#query-form-msg i").attr("class", "icon-ok icon-large");
            jQuery("div#query-form-msg span").html("Query has been sent successfully.");
            return false;
        } else if (key === "fail") {
            jQuery("div#query-form-msg").attr("class", "notice error");
            jQuery("div#query-form-msg i").attr("class", "icon-remove-sign icon-large");
            jQuery("div#query-form-msg span").html("There is some error occurred.");
            return false;
        } else {
            var error = '<label class="error" for="' + key + '">' + val + '</label>';
            key = "data[Home][" + key + "]";
            if (jQuery("form#" + formId + " input[name='" + key + "']")) {
                jQuery("form#" + formId + " input[name='" + key + "']").addClass("error");
                jQuery("form#" + formId + " input[name='" + key + "']").closest('.form-group').append(error);
            }
            if (jQuery("form#" + formId + " textarea[name='" + key + "']")) {
                jQuery("form#" + formId + " textarea[name='" + key + "']").addClass("error");
                jQuery("form#" + formId + " textarea[name='" + key + "']").closest('.form-group').append(error);
            }
        }
    });
};
/*
var Resume = function () {
};
Resume.prototype.submit = function (formObject) {
    var $this = formObject
        , url = $this.attr('action')
        , method = $this.attr('method')
        , data = new FormData($this[0])
        , button = $this.find('button[type=submit]');
    button.attr('disabled', 'disabled');
    jQuery.ajax({
        url:url,
        type:method,
        data:data,
        dataType:'json',
        cache:false,
        contentType:false,
        processData:false,
        beforeSend:function () {
            button.attr('disabled', 'disabled');
            button.html('Submitting...');
            $this.find("input").attr("readonly", "readonly");
            $this.find("textarea").attr("readonly", "readonly");
        },
        statusCode:{
            200:function (data) {
                resumeProcessData(data, $this);
            },
            500:function () {
                jQuery("div#resume-form-msg").attr("class", "notice error");
                jQuery("div#resume-form-msg i").attr("class", "icon-remove-sign icon-large");
                jQuery("div#resume-form-msg span").html("There is some error occurred.");
            },
            404:function () {
                jQuery("div#resume-form-msg").attr("class", "notice error");
                jQuery("div#resume-form-msg i").attr("class", "icon-remove-sign icon-large");
                jQuery("div#resume-form-msg span").html("There is some error occurred.");
            }
        },
        complete:function () {
            button.removeAttr('disabled');
            button.html("Submit");
            $this.find("input").removeAttr("readonly", "readonly").val("");
            $this.find("textarea").removeAttr("readonly", "readonly").val("");
        }
    });
};

resumeProcessData = function (data, $el) {
    var formId = $el.attr("id");
    jQuery.each(data, function (key, val) {
        if (key === "success") {
            jQuery("div#resume-form-msg").attr("class", "notice success");
            jQuery("div#resume-form-msg i").attr("class", "icon-ok icon-large");
            jQuery("div#resume-form-msg span").html("Resume has been sent successfully.");
            return false;
        } else if (key === "fail") {
            jQuery("div#resume-form-msg").attr("class", "notice error");
            jQuery("div#resume-form-msg i").attr("class", "icon-remove-sign icon-large");
            jQuery("div#resume-form-msg span").html("There is some error occurred.");
            return false;
        } else {
            var error = '<label class="error" for="' + key + '">' + val + '</label>';
            key = "data[Home][" + key + "]";
            if (jQuery("form#" + formId + " input[name='" + key + "']")) {
                jQuery("form#" + formId + " input[name='" + key + "']").addClass("error");
                jQuery("form#" + formId + " input[name='" + key + "']").closest('.form-group').append(error);
            }
            if (jQuery("form#" + formId + " textarea[name='" + key + "']")) {
                jQuery("form#" + formId + " textarea[name='" + key + "']").addClass("error");
                jQuery("form#" + formId + " textarea[name='" + key + "']").closest('.form-group').append(error);
            }
        }
    });
};


var Contact = function () {
};
Contact.prototype.submit = function (formObject) {
    var $this = formObject
        , url = $this.attr('action')
        , method = $this.attr('method')
        , data = new FormData($this[0])
        , button = $this.find('button[type=submit]');
    button.attr('disabled', 'disabled');
    jQuery.ajax({
        url:url,
        type:method,
        data:data,
        dataType:'json',
        cache:false,
        contentType:false,
        processData:false,
        beforeSend:function () {
            button.attr('disabled', 'disabled');
            button.html('Submitting...');
            $this.find("input").attr("readonly", "readonly");
            $this.find("textarea").attr("readonly", "readonly");
        },
        statusCode:{
            200:function (data) {
                contactProcessData(data, $this);
            },
            500:function () {
                jQuery("div#contact-form-msg").attr("class", "notice error");
                jQuery("div#contact-form-msg i").attr("class", "icon-remove-sign icon-large");
                jQuery("div#contact-form-msg span").html("There is some error occurred.");
            },
            404:function () {
                jQuery("div#contact-form-msg").attr("class", "notice error");
                jQuery("div#contact-form-msg i").attr("class", "icon-remove-sign icon-large");
                jQuery("div#contact-form-msg span").html("There is some error occurred.");
            }
        },
        complete:function () {
            button.removeAttr('disabled');
            button.html("Submit");
            $this.find("input").removeAttr("readonly", "readonly").val("");
            $this.find("textarea").removeAttr("readonly", "readonly").val("");
        }
    })
};
contactProcessData = function (data, $el) {
    var formId = $el.attr("id");
    jQuery.each(data, function (key, val) {
        if (key === "success") {
            jQuery("div#contact-form-msg").attr("class", "notice success");
            jQuery("div#contact-form-msg i").attr("class", "icon-ok icon-large");
            jQuery("div#contact-form-msg span").html("Information has been sent successfully.");
            return false;
        } else if (key === "fail") {
            jQuery("div#contact-form-msg").attr("class", "notice error");
            jQuery("div#contact-form-msg i").attr("class", "icon-remove-sign icon-large");
            jQuery("div#contact-form-msg span").html("There is some error occurred.");
            return false;
        } else {
            key = "data[Home][" + key + "]";
            var error = '<label class="error" for="' + key + '">' + val + '</label>';
            if (jQuery("form#" + formId + " input[name='" + key + "']")) {
                jQuery("form#" + formId + " input[name='" + key + "']").addClass("error");
                jQuery("form#" + formId + " input[name='" + key + "']").closest('.form-group').append(error);
            }
            if (jQuery("form#" + formId + " textarea[name='" + key + "']")) {
                jQuery("form#" + formId + " textarea[name='" + key + "']").addClass("error");
                jQuery("form#" + formId + " textarea[name='" + key + "']").closest('.form-group').append(error);
            }
        }
    });
};
*/


jQuery(document).ready(function () {
    jQuery.validator.addMethod("alphabet_space", function (value, element) {
        return this.optional(element) || /^[A-Za-z ]+$/i.test(value);
    }, "Letters only please.");

    jQuery.validator.addMethod("subjectRule", function (value, element) {
        return this.optional(element) || /^[A-Za-z 0-9?-_]+$/i.test(value);
    }, "Only alphabet, numeric, ? - and _ are valid characters.");

    jQuery.validator.addMethod("resumeFileRule", function (value, element) {
        var ext = jQuery('input.uploadFile').val().split('.').pop().toLowerCase();
        var allow = new Array('pdf', 'doc', 'docx', 'txt');
        return jQuery.inArray(ext, allow) != -1;
    }, "Please choose Pdf, Doc, Docx, Txt file format only.");
});

var PasswordForm = function () {
    return {
        init:function () {
            var formObject = jQuery("form#passwordForm");
            var error = jQuery('.error', formObject);
            var success = jQuery('.success', formObject);
            formObject.validate({
                errorElement:'label',
                errorClass:'error',
                focusInvalid:false,
                ignore:"",
                rules:{
                    "data[Owner][old_password]":{
                        required:true
                    },
                    "data[Owner][registration_password]":{
                        required:true
                    },
                    "data[Owner][reg_cnf_password]":{
                        required:true
                    }
                },
                //onkeyup:false,
                //onfocusout:false,
                invalidHandler:function (event, validator) {
                    success.hide();
                    error.show();
                },
                highlight:function (element) {
                    jQuery(element).addClass('error');

                },
                unhighlight:function (element) {
                    jQuery(element).removeClass('error');
                },
                success:function (label) {
                    label.removeClass('error');
                },
                submitHandler:function (form) {
                    success.show();
                    error.hide();
                    var query = new Password();
                    query.submit(formObject);
                }
            });
        }
    }
}();
/*
var ContactForm = function () {
    return {
        init:function () {
            var formObject = jQuery("form#contactForm");
            var error = jQuery('.error', formObject);
            var success = jQuery('.success', formObject);
            formObject.validate({
                errorElement:'label',
                errorClass:'error',
                focusInvalid:false,
                ignore:"",
                rules:{
                    "data[Home][name]":{
                        required:true,
                        alphabet_space:true
                    },
                    "data[Home][email]":{
                        required:true,
                        email:true
                    },
                    "data[Home][description]":{
                        required:true
                    }
                },
                // onkeyup:false,
                //onfocusout:false,
                invalidHandler:function (event, validator) {
                    success.hide();
                    error.show();
                },
                highlight:function (element) {
                    jQuery(element).addClass('error');

                },
                unhighlight:function (element) {
                    jQuery(element).removeClass('error');
                },
                success:function (label) {
                    label.removeClass('error');
                },
                submitHandler:function (form) {
                    success.show();
                    error.hide();
                    var contact = new Contact();
                    contact.submit(formObject);
                }
            });
        }
    }
}();
var ResumeForm = function () {
    return {
        init:function () {
            var formObject = jQuery("form#resumeForm");
            var error = jQuery('.error', formObject);
            var success = jQuery('.success', formObject);
            formObject.validate({
                errorElement:'label',
                errorClass:'error',
                focusInvalid:false,
                ignore:"",
                rules:{
                    "data[Home][email]":{
                        required:true,
                        email:true
                    },
                    "data[Home][subject]":{
                        required:true,
                        subjectRule:true
                    },
                    "data[Home][file]":{
                        required:true,
                        extension:"docx|rtf|doc|pdf|txt"
                        //accept: 'application/pdf'
                        //resumeFileRule:true
                    },
                    "data[Home][description]":{
                        required:true
                    }
                },
                //onkeyup:false,
                //onfocusout:false,
                invalidHandler:function (event, validator) {
                    success.hide();
                    error.show();
                },
                highlight:function (element) {
                    jQuery(element).addClass('error');

                },
                unhighlight:function (element) {
                    jQuery(element).removeClass('error');
                },
                success:function (label) {
                    label.removeClass('error');
                },
                submitHandler:function (form) {
                    success.show();
                    error.hide();
                    var resume = new Resume();
                    resume.submit(formObject);
                }
            });
        }
    }
}();
*/
!function (cash) {
    var SubmitPassword = function () {
    }

    SubmitPassword.prototype.submit = function (e) {

        var $this = $(this)
            , url = $this.attr('action')
            , method = $this.attr('method')
            , data = new FormData($this[0])
            , button = $this.find('input[type=submit]')

        button.attr('disabled', 'disabled')

        e.preventDefault()

        jQuery.ajax({
            url:url,
            type:method,
            data:data,
            dataType:'json',
            cache:false,
            contentType:false,
            processData:false,
            statusCode:{

                200:function (data) {
                    $this.find('input[type=submit]')
                   submitPasswordProcessData(data, $this)
                },
                500:function () {
                    $this.trigger('bootstrap-ajax:error', [$this, 500])
                },
                404:function () {
                    $this.trigger('bootstrap-ajax:error', [$this, 404])
                }
            },

            complete:function () {

                button.removeAttr('disabled')
            }
        })
    }

    function submitPasswordProcessData(data, $el) {

        if (data['status'] == "success") {
            /*$(".alert").css('display', 'block');
            var $path = HOST + data['file_path'] + data['logo_name'];
            var $enable_id = data['id'] + "_enable";
            var $disable_id = data['id'] + "_disable";
            var $logo = data['logo_name'];
            $("#logos_list").prepend(
                "<td class='no-margin span3 user_logo' id=" + data['id'] + "><div class='space10'></div>" +
                    "<img class='span1 pull-left' style='margin-left: -4px;' height='60' width='60' src=" + $path + "><div class='details'><div class='clearfix'></div>" +
                    "<div class='details enable' style='display: none'  id=" + $enable_id + ">Enabled</div>" +
                    "<div class='disable' id=" + $disable_id + ">" +
                    "<label class='radio'>" +
                    "<input class='radio_buttons required pull-left' name='logo_name' type='radio' onclick='change_logo(" + data['id'] + ")'>Enable</label>" +
                    "<div class='clearBoth'></div>" +
                    "<div  style='cursor:pointer;'>" +
                    "<div class='icon' onclick='delete_logo(" + data['id'] + ")'>" +
                    "<i class='icon-trash'></i> Delete</div></div></div><br></td>");*/

        } else {

           // $("#add_logo").html(data.responseText);

        }
        $el.trigger('bootstrap-ajax:success', [data, $el]);
    }

    jQuery(function () {
        jQuery('body').on('submit', 'form.submitPassword', SubmitPassword.prototype.submit)

    })
}(window.jQuery);
