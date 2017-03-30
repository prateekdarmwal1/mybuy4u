$.validator.setDefaults({
	submitHandler:function (e) {
		var postData = $("#" + e.id).serializeArray();
		var formURL = e.action;
		jQuery.ajax({
			type:'POST',
			async:true,
			cache:false,
			url:formURL,
			success:function (response) {
				console.log(response);
				response = jQuery.parseJSON(response);
				jQuery.each(response, function (key, val) {
					console.log("val");
					console.log(val);
					if (key == "success") {
						alert('success');
					} else if (key == "errors") {
						jQuery.each(val, function (field, error) {
							var error = '<label class="error" for="' + field + '"style="display: inline;">' + error + '</label>';
							jQuery("#" + field).closest('.form-group').append(error);
						})

					} else if (key == "error") {
						var error = '<label class="error" for= email_id  style="display: inline;">' + val + '</label>';
						jQuery("#email_id").closest('p').append(error);
					}

				});
			},
			data:postData
		});
		return false;
	}
});
function validate_forms()
{
	$("#signupForm").validate({
		rules:{
			'data[User][first_name]':"required",
			'data[User][last_name]':"required",
			'data[User][password]':{
				required:true,
				minlength:5
			},
			'data[User][password_confirm]':{
				required:true,
				minlength:5,
				equalTo:"#password_confirm"
			},
			'data[User][email]':{
				required:true,
				email:true
			}
		},
		messages:{
			'data[User][first_name]':"Please enter your firstname",
			'data[User][last_name]':"Please enter your lastname",
			'data[User][password]':{
				required:"Please provide a password",
				minlength:"Your password must be at least 5 characters long"
			},
			'data[User][password_confirm]':{
				required:"Please provide a password",
				minlength:"Your password must be at least 5 characters long",
				equalTo:"Please enter the same password as above"
			},
			'data[User][email_id]':"Please enter a valid email address"
		}
	});
	$("#loginForm").validate({
		rules:{
			password:{
				required:true,
				minlength:5
			},
			email:{
				required:true,
				email:true
			}
		},
		messages:{
			password:{
				required:"Please provide a password"
			},
			email:"Please enter a valid email address"
		}
	});
	$("#OwnerEditProfileNewForm").validate({
		rules:{
			'data[Owner][FIRST_NAME]':{
				required:true
			},
			'data[Owner][LAST_NAME]':{
				required:true
			}
		},
		messages:{
			'data[Owner][FIRST_NAME]':{
				required:"Please provide a password"
			}
		}
	});
	$("#updatePasswordForm").validate({
		rules:{
			'data[Owner][OLD_PASSWORD]':{
				required:true
			},
			'data[Owner][PASSWORD]':{
				required:true
			},
			'data[Owner][REG_CNF_PASSWORD]':{
				required:true
			}
		},
		messages:{
			'data[Owner][OLD_PASSWORD]':{
				required:"Please provide a password"
			}
		}
	});
}
validate_forms();
