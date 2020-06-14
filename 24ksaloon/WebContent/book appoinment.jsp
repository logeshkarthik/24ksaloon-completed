<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Appointment|24k Saloon</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="style.css" rel="stylesheet">
<link rel="stylesheet" href="styleforfooter.css">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
</head>
<body>
	<div id="container">
		<!--This is a division tag for body container-->
		<div id="body_header"></div>
		<form action="bookappointment" method="post">
			<fieldset>
				<legend>
					<span class="number">1</span>Your basic details
				</legend>
				<label for="name">Name:</label> <input type="text" id="name"
					name="user_name" placeholder="enter your name" required
					pattern="[a-zA-Z0-9]+"> <label for="mail">Email/optional:</label>
				<input type="email" id="mail" name="user_email"
					placeholder="enter email :abc@xyz.com"> <label for="tel">Contact
					Num:</label> <input type="tel" id="tel" placeholder="mobile"
					name="user_num" required>




			</fieldset>

			<fieldset>
				<legend>
					<span class="number">2</span>Appointment Details
				</legend>
				<label for="appointment_for">Appointment for*:</label> <select
					style="background-color: grey;" id="appointment_for"
					name="appointment_for">

					<option value="grooming">grooming</option>
					<option value="facial">facial</option>
					<option value="pedicure">pedicure</option>
					<option value="makeover">makeover</option>
					<option value="tatoo">tatoo</option>
					<option value="others">others</option>
				</select>
				<script>
		$(document).ready(function () {
  $("#appointment_for").CreateMultiCheckBox({ width: '100%',
             defaultText : 'Select Below', height:'auto',});
});
        $(document).ready(function () {
            $(document).on("click", ".MultiCheckBox", function () {
                var detail = $(this).next();
                detail.show();
            });

            $(document).on("click", ".MultiCheckBoxDetailHeader input", function (e) {
                e.stopPropagation();
                var hc = $(this).prop("checked");
                $(this).closest(".MultiCheckBoxDetail").find(".MultiCheckBoxDetailBody input").prop("checked", hc);
                $(this).closest(".MultiCheckBoxDetail").next().UpdateSelect();
            });

            $(document).on("click", ".MultiCheckBoxDetailHeader", function (e) {
                var inp = $(this).find("input");
                var chk = inp.prop("checked");
                inp.prop("checked", !chk);
                $(this).closest(".MultiCheckBoxDetail").find(".MultiCheckBoxDetailBody input").prop("checked", !chk);
                $(this).closest(".MultiCheckBoxDetail").next().UpdateSelect();
            });

            $(document).on("click", ".MultiCheckBoxDetail .cont input", function (e) {
                e.stopPropagation();
                $(this).closest(".MultiCheckBoxDetail").next().UpdateSelect();

                var val = ($(".MultiCheckBoxDetailBody input:checked").length == $(".MultiCheckBoxDetailBody input").length)
                $(".MultiCheckBoxDetailHeader input").prop("checked", val);
            });

            $(document).on("click", ".MultiCheckBoxDetail .cont", function (e) {
                var inp = $(this).find("input");
                var chk = inp.prop("checked");
                inp.prop("checked", !chk);

                var multiCheckBoxDetail = $(this).closest(".MultiCheckBoxDetail");
                var multiCheckBoxDetailBody = $(this).closest(".MultiCheckBoxDetailBody");
                multiCheckBoxDetail.next().UpdateSelect();

                var val = ($(".MultiCheckBoxDetailBody input:checked").length == $(".MultiCheckBoxDetailBody input").length)
                $(".MultiCheckBoxDetailHeader input").prop("checked", val);
            });

            $(document).mouseup(function (e) {
                var container = $(".MultiCheckBoxDetail");
                if (!container.is(e.target) && container.has(e.target).length === 0) {
                    container.hide();
                }
            });
        });

        var defaultMultiCheckBoxOption = { width: '220px', defaultText: 'Select Below', height: '200px' };

        jQuery.fn.extend({
            CreateMultiCheckBox: function (options) {

                var localOption = {};
                localOption.width = (options != null && options.width != null && options.width != undefined) ? options.width : defaultMultiCheckBoxOption.width;
                localOption.defaultText = (options != null && options.defaultText != null && options.defaultText != undefined) ? options.defaultText : defaultMultiCheckBoxOption.defaultText;
                localOption.height = (options != null && options.height != null && options.height != undefined) ? options.height : defaultMultiCheckBoxOption.height;

                this.hide();
                this.attr("multiple", "multiple");
                var divSel = $("<div class='MultiCheckBox'>" + localOption.defaultText + "<span class='k-icon k-i-arrow-60-down'><svg aria-hidden='true' focusable='false' data-prefix='fas' data-icon='sort-down' role='img' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 320 512' class='svg-inline--fa fa-sort-down fa-w-10 fa-2x'><path fill='currentColor' d='M41 288h238c21.4 0 32.1 25.9 17 41L177 448c-9.4 9.4-24.6 9.4-33.9 0L24 329c-15.1-15.1-4.4-41 17-41z' class=''></path></svg></span></div>").insertBefore(this);
                divSel.css({ "width": localOption.width });

                var detail = $("<div class='MultiCheckBoxDetail'><div class='MultiCheckBoxDetailHeader'><input type='checkbox' class='mulinput' value='-1982' /><div>Select All</div></div><div class='MultiCheckBoxDetailBody'></div></div>").insertAfter(divSel);
                detail.css({ "width": parseInt(options.width) + 10, "max-height": localOption.height });
                var multiCheckBoxDetailBody = detail.find(".MultiCheckBoxDetailBody");

                this.find("option").each(function () {
                    var val = $(this).attr("value");

                    if (val == undefined)
                        val = '';

                    multiCheckBoxDetailBody.append("<div class='cont'><div><input type='checkbox' class='mulinput' value='" + val + "' /></div><div>" + $(this).text() + "</div></div>");
                });

                multiCheckBoxDetailBody.css("max-height", (parseInt($(".MultiCheckBoxDetail").css("max-height")) - 28) + "px");
            },
            UpdateSelect: function () {
                var arr = [];

                this.prev().find(".mulinput:checked").each(function () {
                    arr.push($(this).val());
                });

                this.val(arr);
            },
        });
		</script>
				<!--    <label for="appointment_description">Appointment Description:</label>
        <textarea id="appointment_description" name="appointment_description" placeholder="I wish to get an appointment to skype for resolving a software problem."></textarea>-->
				<label for="date">Date*:</label> <input type="date" name="date"
					value="" required></input> <br> <label for="time">Time*:</label>
				<input type="time" name="time" value="" required></input> <br>
				<!--    <label for="duration">How Long??(Minutes)</label>
        <input type="radio" name="duration" value="30" checked> 30
        <input type="radio" name="duration" value="60"> 60
        <input type="radio" name="duration" value="90"> 90
        <input type="radio" name="duration" value="more"> more-->
			</fieldset>
			<button type="submit">Book Appointment</button>
		</form>
	</div>
	<style>
body {
	background-color: black;
}

#body_header {
	width: auto;
	margin: 0px auto;
	text-align: center;
	font-size: 25px;
}

form {
	max-width: 300px;
	margin: 10px auto;
	padding: 10px 20px;
	background: #f4f7f8;
	border-radius: 8px;
}

h1 {
	margin: 0 0 30px 0;
	text-align: center;
}

input[type="text"], input[type="password"], input[type="date"], input[type="datetime"],
	input[type="email"], input[type="number"], input[type="search"], input[type="tel"],
	input[type="time"], input[type="url"], textarea, select {
	background: rgba(255, 255, 255, 0.1);
	border: none;
	font-size: 16px;
	height: auto;
	margin: auto;
	outline: 0;
	padding: 8px;
	width: 100%;
	background-color: #e8eeef;
	color: black;
	box-shadow: 0 1px 0 rgba(0, 0, 0, 0.03) inset;
	margin-bottom: 30px;
}

input[type="radio"], input[type="checkbox"] {
	margin: 0 4px 8px 0;
}

select {
	padding: 6px;
	height: 32px;
	border-radius: 2px;
}

button {
	padding: 19px 39px 18px 39px;
	color: #FFF;
	background-color: #4bc970;
	font-size: 18px;
	text-align: center;
	font-style: normal;
	border-radius: 5px;
	width: 100%;
	border: 1px solid #3ac162;
	border-width: 1px 1px 3px;
	box-shadow: 0 -1px 0 rgba(255, 255, 255, 0.1) inset;
	margin-bottom: 10px;
}

fieldset {
	margin-bottom: 30px;
	border: none;
}

legend {
	font-size: 1.4em;
	margin-bottom: 10px;
}

label {
	display: block;
	margin-bottom: 8px;
}

label.light {
	font-weight: 300;
	display: inline;
}

.number {
	background-color: #5fcf80;
	color: #fff;
	height: 30px;
	width: 30px;
	display: inline-block;
	font-size: 0.8em;
	margin-right: 4px;
	line-height: 30px;
	text-align: center;
	text-shadow: 0 1px 0 rgba(255, 255, 255, 0.2);
	border-radius: 100%;
}

form {
	max-width: 480px;
}

.MultiCheckBox {
	border: 1px solid #e2e2e2;
	padding: 5px;
	border-radius: 4px;
	cursor: pointer;
}

.MultiCheckBox .k-icon {
	font-size: 15px;
	float: right;
	font-weight: bolder;
	margin-top: -7px;
	height: 10px;
	width: 14px;
	color: #787878;
}

.MultiCheckBoxDetail {
	display: none;
	position: absolute;
	border: 1px solid #e2e2e2;
	overflow-y: hidden;
}

.MultiCheckBoxDetailBody {
	overflow-y: scroll;
}

.MultiCheckBoxDetail .cont {
	clear: both;
	overflow: hidden;
	padding: 2px;
}

.MultiCheckBoxDetail .cont:hover {
	background-color: #cfcfcf;
}

.MultiCheckBoxDetailBody>div>div {
	float: left;
}

.MultiCheckBoxDetail>div>div:nth-child(1) {
	
}

.MultiCheckBoxDetailHeader {
	overflow: hidden;
	position: relative;
	height: 28px;
	background-color: #3d3d3d;
}

.MultiCheckBoxDetailHeader>input {
	position: absolute;
	top: 4px;
	left: 3px;
}

.MultiCheckBoxDetailHeader>div {
	position: absolute;
	top: 5px;
	left: 24px;
	color: #fff;
}
</style>

</body>
</html>