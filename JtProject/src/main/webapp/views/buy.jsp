<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Commerce | Payment</title>
</head>
<body>

<div class="body-text">Enter payment details to proceed </div>

  <form action="views/paymentSuccess.jsp" method=POST>
    <div class="form-container">
      <div class="personal-information">
        <h1>Payment Detalis</h1>
        <p>Price: Rs <%= request.getParameter("price") %></p>
        <p>Product name : <%= request.getParameter("name") %></p>


      </div>

          <input id="column-left" type="text" name="first-name" placeholder="First Name" required="required"/>
          <input id="column-right" type="text" name="last-name" placeholder="Last Name" required="required"/>
          <input id="input-field" type="text" name="number" pattern="[0-9]*" minlength="12" maxlength="12" placeholder="Card Number" required="required"/>
          <input id="column-left" type="text" name="expiry" placeholder="MM / YY" minlength="5" maxlength="5" pattern="(0[1-9]|1[0-2]) \/ \d{2} required="required"/>
          <input id="column-right" type="text" name="cvv" minlength="3" maxlength="3"  placeholder="CVV" required="required"/>

          <div class="card-wrapper"></div>

          <input id="input-field" type="text" name="streetaddress" required="required" autocomplete="on" maxlength="45" placeholder="Street Address"/>
          <input id="column-left" type="text" name="city" required="required" autocomplete="on" maxlength="20" placeholder="City"/>
          <input id="column-right" type="text" name="zipcode" required="required" autocomplete="on" pattern="[0-9]*" minlength="6"  maxlength="6" placeholder="ZIP code"/>
          <input id="input-field" type="email" name="email" required="required" autocomplete="on" maxlength="40" placeholder="Email"/>
          <input id="input-button" type="submit" value="Submit"/>

    </form>
  </div>

<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:400,900,700,500);

body {
  padding: 60px 0;
  background-color: rgba(178,209,229,0.7);
  margin: 0 auto;
  width: 600px;
}
.body-text {
  padding: 0 20px 30px 20px;
  font-family: "Roboto";
  font-size: 1em;
  color: #333;
  text-align: center;
  line-height: 1.2em;
}
.form-container {
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.card-wrapper {
  background-color: #6FB7E9;
  width: 100%;
  display: flex;

}
.personal-information {
  background-color: #3C8DC5;
  color: #fff;
  padding: 1px 0;
  text-align: center;
}
h1 {
  font-size: 1.3em;
  font-family: "Roboto"
}
input {
  margin: 1px 0;
  padding-left: 3%;
  font-size: 14px;
}
input[type="text"]{
  display: block;
  height: 50px;
  width: 97%;
  border: none;
}
input[type="email"]{
  display: block;
  height: 50px;
  width: 97%;
  border: none;
}
input[type="submit"]{
  display: block;
  height: 60px;
  width: 100%;
  border: none;
  background-color: #3C8DC5;
  color: #fff;
  margin-top: 2px;
  curson: pointer;
  font-size: 0.9em;
  text-transform: uppercase;
  font-weight: bold;
  cursor: pointer;
}
input[type="submit"]:hover{
  background-color: #6FB7E9;
  transition: 0.3s ease;
}
#column-left {
  width: 46.5%;
  float: left;
  margin-bottom: 2px;
}
#column-right {
  width: 46.5%;
  float: right;
}

@media only screen and (max-width: 480px){
  body {
    width: 100%;
    margin: 0 auto;
  }
  .form-container {
    margin: 0 2%;
  }
  input {
    font-size: 1em;
  }
  #input-button {
    width: 100%;
  }
  #input-field {
    width: 96.5%;
  }
  h1 {
    font-size: 1.2em;
  }
  input {
    margin: 2px 0;
  }
  input[type="submit"]{
    height: 50px;
  }
  #column-left {
    width: 96.5%;
    display: block;
    float: none;
  }
  #column-right {
    width: 96.5%;
    display: block;
    float: none;
  }
}
</style>

<script>
$('form').card({
    container: '.card-wrapper',
    width: 280,

    formSelectors: {
        nameInput: 'input[name="first-name"], input[name="last-name"]'
    }
});
</script>

</body>
</html>