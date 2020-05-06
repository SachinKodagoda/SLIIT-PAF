<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>

<head>
  <meta charset="ISO-8859-1">
  <title>Payment Recipt</title>
  <link href="source/css/custom.css" rel="stylesheet">
  <!-- fonts-->
  <link href="source/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- timedropper css -->
  <link href="source/vendor/fancyclock/timedropper.css" rel="stylesheet">

  <!-- custom css-->
  <link href="source/css/sb-admin-2.css" rel="stylesheet">
  <link href="source/css/custom.css" rel="stylesheet">
  <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

</head>

<body>
  <div class="bThanak">
    <div class="thankYou">Thank you for purchasing</div>
    <c:set var="str1" value="${transaction.description}" />
    <c:set var="str2" value="${fn:split(str1, '|')}" />

    <div style="display: none;" id="hiddenTotal">${transaction.amount.total}</div>
    <div style="display: none;" id="hiddenInvoiceNo">${str2[7]}</div>
    <div style="display: none;" id="hiddenReservation">${str2[8]}</div>
    <div style="display: none;" id="hiddenPatient">${str2[9]}</div>
    <div style="display: none;" id="hiddenTimeStamp">${str2[10]}</div>
    <form action="booking.jsp" method="get" class="goForm" id="beforeMyHome">

    </form>
    <div class="goHome darkiBlue clickingAnimation1" onclick="updatePayment()">GO HOME</div>
    <div class="ErrorMessage" id="ErrorMessage"></div>
    <img src="source/img/loading.svg" alt="" id="loadingCycle">

  </div>
  <script src="source/vendor/jquery/jquery.min.js"></script>
  <script src="source/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="source/vendor/jquery-easing/jquery.easing.min.js"></script>
  <script>
    $(function() {
      $("#loadingCycle").hide();

    });
    var p_id = document.getElementById("hiddenPatient").innerText;
    var reservation_token = document.getElementById("hiddenReservation").innerText;
    var invoice_no = document.getElementById("hiddenInvoiceNo").innerText;
    var time_stamp = document.getElementById("hiddenTimeStamp").innerText;
    var total = document.getElementById("hiddenTotal").innerText;

    function updatePayment() {
      $("#loadingCycle").show();

      var csdata = {
        "id": invoice_no,
        "patient_id": p_id,
        "amount": total,
        "payment_datetime": time_stamp,
        "method": "paypal"
      }
      
      $.ajax({
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        url: "http://localhost:8080/paf/rest/v1/payment/patient",
        method: "POST",
        data: JSON.stringify(csdata),
        success: function(result) {
          $("#loadingCycle").hide();
          makeItReserve();
        },
        error: function(error) {
          var ErrorMessage = document.getElementById("ErrorMessage");
          ErrorMessage.innerHTML = "Payment Done but payment details not updated! please contact us";
          $("#loadingCycle").hide();
        }
      });


    }

    function makeItReserve() {
      $("#loadingCycle").show();
      var csdata = {
        "reservation_token": reservation_token,
        "patient_id": p_id,
        "payment_id": invoice_no
      }
      console.log(csdata);
      $.ajax({
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        url: "http://localhost:8080/paf/rest/v1/reservation/reserved",
        method: "PUT",
        data: JSON.stringify(csdata),
        success: function(result) {
          ErrorMessage.innerHTML = "";
          $("#beforeMyHome").submit();
        },
        error: function(error) {
          var ErrorMessage = document.getElementById("ErrorMessage");
          ErrorMessage.innerHTML = "Payment Done but reservation details not updated! please contact us";
          $("#loadingCycle").hide();
        }
      });
    }
  </script>
</body>

</html>