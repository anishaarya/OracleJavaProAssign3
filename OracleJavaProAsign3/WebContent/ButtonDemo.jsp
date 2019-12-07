<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function myFunction() {
	  // Get the checkbox
	  var checkBox = document.getElementById("myCheck");
	  // Get the output text
	  var text = document.getElementById("text");
	  // If the checkbox is checked, display the output text
	  if (checkBox.checked == true){
	    text.style.display = "block";
	  } else {
	    text.style.display = "none";
	  }
	}
	
function send() {
    var genders = document.getElementsByName("gender");
    if (genders[0].checked == true) {
        alert("Your gender is male");
    } else if (genders[1].checked == true) {
        alert("Your gender is female");
    } else {
        // no checked
        var msg = You must select your gender!br /><br />';
        document.getElementById('msg').innerHTML = msg;
        return false;
    }
    return true;
}
function reset_msg() {
    document.getElementById('msg').innerHTML = '';
}
</script>
</head>
<body>
<center>
<b>... Button Demo......<b>
<b>Hello this is a demo for button</b>
<form> <input type="button" value="Click me" onclick="alert('You clicked the button!')"> </form>
<b>TEXT BOX & PASSWORD</b>
<input type="text" name=tb>
<input type="password" value="">
<h1>Radio Button.....Demonstration........</h1>
<form action="" method="POST">
            <label>Gender:</label>
            <br />
            <input type="radio" name="gender" value="m" onclick="reset_msg();" />Male
            <br />
            <input type="radio" name="gender" value="f" onclick="reset_msg();" />Female
            <br />
            <div id="msg"></div>
            <input type="submit" value="Click...Me" onclick="return send();" />
        </form>

</center>
</center>

Checkbox: <input type="checkbox" id="myCheck" onclick="myFunction()">

<p id="text" style="display:none">Checkbox is CHECKED!</p>
</center>


</body>
</html>