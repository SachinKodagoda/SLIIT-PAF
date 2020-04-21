<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Appointments</title>

  <!-- fonts-->
  <link href="source/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- timedropper css -->
  <link href="source/vendor/fancyclock/timedropper.css" rel="stylesheet">

  <!-- custom css-->
  <link href="source/css/sb-admin-2.css" rel="stylesheet">
  <link href="source/css/custom.css" rel="stylesheet">
  <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

  <!-- Paypal cdn -->
  <script src="https://www.paypal.com/sdk/js?client-id=AdZM48-q2rAzDbdA8ImsNlQqmjvPl9aVtzoyjg95sSNbGktIA4iNc75bg7P_Ry0anVyhi6nSSUmyTqZg">

  </script>
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <li>
        <div class="sidebar-brand d-flex align-items-center justify-content-center">
          <div class="sidebar-brand-icon">
            <i class="fas fa-fw fa-heartbeat myheart"></i>
          </div>
          <div class="sidebar-brand-text mx-3 healthCare">Health Care</div>
        </div>
      </li>

      <!-- Divider -->
      <li>
        <hr class="sidebar-divider my-0" />
      </li>

      <!-- Nav Item - Dashboard -->
      <li class="nav-item"><a class="nav-link" href="patient_dashboard.html"> <i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span></a></li>

      <!-- Divider -->
      <li>
        <hr class="sidebar-divider" />
      </li>

      <!-- Heading -->
      <li class="sidebar-heading">Actions</li>

      <!-- Nav Item - Appointments -->
      <li class="nav-item active"><a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> <i class="fas fa-fw fa-pencil-alt"></i> <span>Appoinments</span>
        </a>

        <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item active" href="add_appointment.html">Add
              Appoinments</a>
            <hr class="noMarginHr" />
            <a class="collapse-item" href="list_appointment.html">List
              Appoinments</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
      <li>
        <hr class="sidebar-divider" />
      </li>

      <!-- Heading -->
      <li class="sidebar-heading">Settings</li>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages"> <i class="fas fa-fw fa-user"></i> <span>Profile</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="view_profile.html">View Profile</a>
            <!-- <div class="dropdown-divider"></div> -->
            <hr class="noMarginHr" />
            <a class="collapse-item" href="edit_profile.html">Edit Profile</a>
          </div>
        </div>
      </li>



      <!-- Nav Item - Payment -->
      <li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePayment" aria-expanded="true" aria-controls="collapsePages"> <i class="fas fa-fw fa-credit-card"></i> <span>Payment</span>
        </a>
        <div id="collapsePayment" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="payment_history.html">Payment
              History</a>
            <hr class="noMarginHr" />
            <a class="collapse-item" href="pending_payments.html">Pending
              Payments</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Handshake -->
      <li class="nav-item"><a class="nav-link" href="activity_logs.html"> <i class="fas fa-fw fa-list"></i> <span>Activity
            Log</span></a></li>

      <!-- Divider -->
      <li>
        <hr class="sidebar-divider d-none d-md-block" />
      </li>

      <!-- Sidebar Toggler (Sidebar) -->
      <li class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </li>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <h1 class="h5 mb-2 myTopicTop">Appoinments</h1>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">
            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1"><a class="nav-link dropdown-toggle clickingAnimation1" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-bell fa-fw myIcon"></i> <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">3+</span>

              </a> <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h4 class="dropdown-header">Alerts Center</h4>
                <div class="dropdown-item d-flex align-items-center">
                  <div class="mr-3">
                    <div class="icon-circle darkiBlue">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 12, 2019</div>
                    <span class="font-weight-bold">A new monthly report is
                      ready to download!</span>
                  </div>
                </div>
                <div class="dropdown-item d-flex align-items-center">
                  <div class="mr-3">
                    <div class="icon-circle darkiGreen">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 7, 2019</div>
                    $290.29 has been deposited into your account!
                  </div>
                </div>
                <div class="dropdown-item d-flex align-items-center">
                  <div class="mr-3">
                    <div class="icon-circle darkiYellow">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 2, 2019</div>
                    Spending Alert: We've noticed unusually high spending for your
                    account.
                  </div>
                </div>
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1"><a class="nav-link dropdown-toggle clickingAnimation1" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-envelope fa-fw myIcon"></i> <!-- Counter - Messages -->
                <span class="badge badge-danger badge-counter">7</span>
              </a> <!-- Dropdown - Messages -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">Message Center</h6>
                <div class="dropdown-item d-flex align-items-center">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="source/img/agent1.jpg" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate">Hi there! I am wondering if
                      you can help me with a problem I've been having.</div>
                    <div class="small text-gray-500">Sachin Kodagoda � 58m</div>
                  </div>
                </div>
                <div class="dropdown-item d-flex align-items-center">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="source/img/admin.jpg" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Your payment refunding is
                      considered!</div>
                    <div class="small text-gray-500">Admin � 1d</div>
                  </div>
                </div>
                <div class="dropdown-item d-flex align-items-center">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="source/img/doctor1.jpg" alt="">
                    <div class="status-indicator bg-danger"></div>
                  </div>
                  <div>
                    <div class="text-truncate">How is your health condition</div>
                    <div class="small text-gray-500">Julia Jhones � 2d</div>
                  </div>
                </div>
                <div class="dropdown-item d-flex align-items-center">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="source/img/system.svg" alt="">
                    <div class="status-indicator bg-primary"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Thank you login into our
                      system</div>
                    <div class="small text-gray-500">Chicken the Dog � 2w</div>
                  </div>
                </div>
                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
              </div>
            </li>

            <li>
              <div class="topbar-divider d-none d-sm-block"></div>
            </li>


            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow"><a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <span class="mr-2 d-none d-lg-inline mypName">Duminda Kodagoda</span>
                <img class="img-profile rounded-circle myPatientImage" src="source/img/patient1.jpg">
              </a> <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <!-- <div class="dropdown-divider"></div> -->
                <a class="dropdown-item mydropdown-item" href="#" data-toggle="modal" data-target="#logoutModal"> <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 myMenuIcon"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-12">
              <div class="card shadow mb-4">
                <div class="card-header py-3 spBlue">
                  <h1 class="m-0 font-weight-bold spBlueText">Book Now</h1>
                </div>
                <div class="card-body">
                  <div class="docRow">
                    <div class="docRowLeft">
                      <figure class="spDoctorImg">
                        <img src="source/img/doctor1.jpg" alt="">
                      </figure>
                    </div>
                    <div class="docRowRight">
                      <div class="spContentWrppr">
                        <div class="spContentWrpprInner">
                          <span>Primary care - Internist</span>
                          <h5>DR. Julia Jhones</h5>
                          <span class="rating"> <i class="fas fa-star fullStar"></i> <i class="fas fa-star fullStar"></i> <i class="fas fa-star fullStar"></i> <i class="fas fa-star-half-alt fullStar"></i> <i class="far fa-star fullStar"></i> <small>(145)</small>
                          </span>
                        </div>
                      </div>
                      <div class="viewPatientContainer">
                        <span class="myDarkBlueBtnRounder myDarkBlueBtnRounderFirst">854
                          Views</span> <span class="myDarkBlueBtnRounder">124
                          Patients</span>
                      </div>
                      <ul class="spContacts">
                        <li>
                          <h6>
                            <strong>Address</strong>
                          </h6> <span> 2726 Kotahena Street, Colombo 10 </span><br /> <a href="https://www.google.com/maps/dir//Assistance+%E2%80%93+H%C3%B4pitaux+De+Paris,+3+Avenue+Victoria,+75004+Paris,+Francia/@48.8606548,2.3348734,14z/data=!4m15!1m6!3m5!1s0x0:0xa6a9af76b1e2d899!2sAssistance+%E2%80%93+H%C3%B4pitaux+De+Paris!8m2!3d48.8568376!4d2.3504305!4m7!1m0!1m5!1m1!1s0x47e67031f8c20147:0xa6a9af76b1e2d899!2m2!1d2.3504327!2d48.8568361" target="_blank" class="darkRedText"> <strong>View
                              on map</strong></a>
                        </li>
                        <li>
                          <h6>
                            <strong>Phone</strong>
                          </h6> <a href="tel://0765742200" class="darkRedText">0765742200</a>
                          - <a href="tel://0312258946" class="darkRedText">0312258946</a>
                        </li>
                      </ul>

                    </div>
                  </div>
                  <hr class="middleDivider" />
                  <div class="container">
                    <h5 class="font-weight-bold custDoc">
                      <i class="fas fa-user-tie"></i> Professional statement
                    </h5>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing
                      elit. Expedita explicabo aperiam omnis eaque enim recusandae
                      incidunt repellat officiis harum, obcaecati at, facere quas
                      molestiae! Iste laudantium saepe mollitia architecto!
                      Repudiandae atque molestiae illo quod incidunt, officiis
                      vitae? Officia veritatis architecto dolorem culpa?
                      Reprehenderit, voluptates quibusdam quos odio sit accusamus
                      maxime.</p>
                    <div class="row">
                      <div class="col-12">Specializations</div>
                      <div class="col-xs-12 col-md-6 col-lg-5">
                        <ul>
                          <li>Abdominal Radiology</li>
                          <li>Addiction Psychiatry</li>
                          <li>Adolescent Medicine</li>
                          <li>Cardiothoracic Radiology</li>
                        </ul>
                      </div>
                      <div class="col-xs-12 col-md-6 col-lg-5">
                        <ul>
                          <li>Abdominal Radiology</li>
                          <li>Addiction Psychiatry</li>
                          <li>Adolescent Medicine</li>
                          <li>Cardiothoracic Radiology</li>
                        </ul>
                      </div>
                    </div>
                  </div>

                  <hr class="middleDivider" />
                  <div class="container datePickerMin">
                    <h5 class="font-weight-bold custDoc">
                      <i class="fas fa-clinic-medical"></i> Book a Visit
                    </h5>
                    <p>Doctors are available from 17:00 to 22:00. Select an
                      appointment and reserve by paying online</p>
                    <div class="customDateInputCover">
                      <div class="customDateInputMiddle">
                        Search by Date : <input id="date-input" class="form-control customDateInput" type="text">
                      </div>
                      <div class="customDateInputMiddle">
                        Time : <input type="text" class="form-control customDateInput" id="time-input">
                      </div>
                      <div class="customDateInputMiddle">
                        Hospital/Area/Keyword : <input type="text" class="form-control customDateInput" id="keyword-input">
                      </div>
                      <div class="customDateInputMiddle">
                        <div class="btn myDarkBlueBtnDifferent btn-icon-split btnSpNoMgn clickingAnimation1" id="ClearAllBtn">
                          <span class="icon text-white-50"> <i class="fas fa-eye"></i>
                          </span> <span class="text myDarkBlueBtnDifferentText">Clear
                            Selection</span>
                        </div>
                      </div>
                    </div>
                    <div class="table-responsive">
                      <table class="table table-bordered" id="dataTable">
                        <thead>
                          <tr>
                            <th>Date</th>
                            <th>Hospital</th>
                            <th>Area</th>
                            <th>Time</th>
                            <th>Amount($)</th>
                            <th>Action</th>
                          </tr>
                        </thead>
                        <tbody id="tbody">
                        </tbody>
                      </table>
                    </div>
                  </div>
                  <hr class="middleDivider" />
                  <div class="container">
                    <h5 class="font-weight-bold custDoc custDocCenter" id="thisIsPayment">
                      <i class="far fa-credit-card"></i> Make Payments
                    </h5>
                    <div class="billArea">
                      <div class="billBorder">
                        <form action="authorize_payment" method="post" id="authorize_payment">
                          <table class="billBorderTable" id="billBorderTable">
                            <tbody>
                              <tr>
                                <td>Invoice No : <input type="hidden" name="product" value="" id="cusProDes" /> <input type="hidden" name="total" value="0" id="cusProVal" />
                                </td>
                                <td id="bill_invoice">.......</td>
                              </tr>
                              <tr>
                                <td>Date :</td>
                                <td id="bill_date">.......</td>
                              </tr>
                              <tr>
                                <td>Hospital :</td>
                                <td id="bill_hospital">.......</td>
                              </tr>
                              <tr>
                                <td>Area :</td>
                                <td id="bill_area">.......</td>
                              <tr>
                                <td>Time :</td>
                                <td id="bill_time">.......</td>
                              </tr>
                              <tr>
                                <td>Amount :</td>
                                <td id="bill_amount">.......</td>
                              </tr>
                            </tbody>
                          </table>
                          <div class="ErrorMessage" id="ErrorMessage"></div>
                        </form>
                      </div>
                    </div>

                    <div class="paywith">Pay with :</div>
                    <div class="payPalContainer">
                      <div class="payPalContainerInner" id="authorize_payment_btn">
                        <img src="https://www.paypalobjects.com/webstatic/en_US/i/buttons/pp-acceptance-large.png" alt="Buy now with PayPal" />
                      </div>
                    </div>

                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; SLIIT@PAF PROJECT 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title logoutModalTopic" id="exampleModalLabel">Ready
            to Leave?</h5>
          <button class="close dammedClosed" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">X</span>
          </button>
        </div>
        <div class="modal-body logoutModal darkiBlueText">if you are
          ready to end your current session select "Logout" below</div>
        <div class="modal-footer customFooterModal">
          <button class="btn darkiRed" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn darkiBlue" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <div class="billModal" <c:if test="${payer.email != null}">style="display: block;"</c:if>>

    <div class="billModalInner">
      <c:set var="str1" value="${transaction.description}" />
      <c:set var="str2" value="${fn:split(str1, '|')}" />
      <form action="execute_payment" method="post" id="payingForm">

        <table class="paymentConfirmation">
          <tr>
            <td><b>Transaction Details:</b></td>
            <td><input type="hidden" name="paymentId" value="${param.paymentId}" /> <input type="hidden" name="PayerID" value="${param.PayerID}" /></td>
          </tr>
          <tr>
            <td>Invoice No</td>
            <td>: ${str2[7]}</td>
          </tr>
          <tr>
            <td>Shedule Date</td>
            <td>: ${str2[0]}</td>
          </tr>
          <tr>
            <td>Hospital</td>
            <td>: ${str2[1]}</td>
          </tr>
          <tr>
            <td>Area</td>
            <td>: ${str2[2]}</td>
          </tr>
          <tr>
            <td>Time</td>
            <td>: ${str2[3]} - ${str2[4]}</td>
          </tr>
          <tr>
            <td>Hospita Charge</td>
            <td>: $ ${str2[5]}</td>
          </tr>
          <tr>
            <td>Doctor Charge</td>
            <td>: $ ${str2[6]}</td>
          </tr>
          <tr>
            <td>Total</td>
            <td>: $ ${transaction.amount.total}</td>
          </tr>

          <tr class="extraMargin">
            <td><b>Payer Information:</b></td>
            <td></td>
          </tr>

          <tr>
            <td>Name:</td>
            <td>: ${payer.firstName} ${payer.lastName}</td>
          </tr>

          <tr>
            <td>Email:</td>
            <td>: ${payer.email}</td>
          </tr>
        </table>
        <div class="Paynow darkiBlue clickingAnimation1" id="payingBtn">Pay Now</div>
      </form>
    </div>
  </div>
  <img src="source/img/loading.svg" alt="" id="loadingCycle">

  <!-- Bootstrap core JavaScript-->
  <script src="source/vendor/jquery/jquery.min.js">

  </script>
  <script src="source/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="source/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Table plugings -->
  <script src="source/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="source/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Date and time -->
  <script src="source/vendor/jstime/datedropper.pro.min.js"></script>
  <script src="source/vendor/fancyclock/timedropper.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="source/js/sb-admin-2.js"></script>
  <script>
    var p_id = "1";
    var doctor_id = "1";
    var reservation_token = "";
    $(document).ready(function() {
      $("#loadingCycle").show();
      var request = $.ajax({
        url: `http://localhost:8080/paf/rest/v1/reservation/active/${doctor_id}`,
        method: "GET"
      });

      request.done(function(result) {
        $("#loadingCycle").hide();
        var error = result.Error;
        var data = result.Data;
        var dataCount = result.DataCount;
        var tbody = document.getElementById("tbody");
        if (error.code == 0) {
          if (dataCount > 0) {
            for (let i = 0; i < data.length; i++) {
              var row = tbody.insertRow(i);
              row.insertCell(0).innerHTML = data[i]['schedule_date'];
              row.insertCell(1).innerHTML = data[i]['hospital'].name;
              row.insertCell(2).innerHTML = data[i]['hospital'].city;
              row.insertCell(3).innerHTML = data[i]['start_time'] +
                "-" +
                data[i]['end_time'];
              row.insertCell(4).innerHTML = parseFloat(data[i]['doctor_charge']) +
                parseFloat(data[i]['hospital_charge']);
              row.insertCell(5).innerHTML = "<div class=\"btn myDarkRedBtnDifferent btn-icon-split btnSpNoMgn clickingAnimation1\" onclick=\"setPayments(" +
                "\'" +
                data[i]['schedule_date'] +
                "\'," +

                "\'" +
                data[i]['hospital'].name +
                "\'," +

                "\'" +
                data[i]['hospital'].city +
                "\'," +

                "\'" +
                data[i]['start_time'] +
                "\'," +

                "\'" +
                data[i]['end_time'] +
                "\'," +

                "\'" +
                data[i]['reservation_token'] +
                "\'," +

                "\'" +
                data[i]['doctor_charge'] +
                "\'," +

                "\'" +
                data[i]['hospital_charge'] +
                "\'" +

                ")\"" +
                ">" +
                "<span class=\"icon text-white-50\"><i class=\"fas fa-hand-pointer\"></i></span>" +
                "<span class=\"text myDarkRedBtnDifferentText\">Select</span>" +
                "</div>";

            }
            $('#dataTable').DataTable();
            $(".dataTables_length").hide();
            $("#dataTable_filter").hide();
          }
        } else {
          console.log("error");
          $("#loadingCycle").hide();
        }

        $(".myDarkRedBtnDifferent").click(
          function(e) {
            $([document.documentElement, document.body]).animate({
                scrollTop: $("#billBorderTable").offset().top
              },
              500);
            e.preventDefault();
          });
      });

      request.fail(function(jqXHR, textStatus) {
        console.log(textStatus);
        console.log(jqXHR);
      });
      $('#date-input').dateDropper({
        format: 'Y-m-d'
      });
      $("#time-input").timeDropper({
        format: 'HH:mm',
        autoswitch: false,
        meridians: false,
        mousewheel: false,
        setCurrentTime: true,
        init_animation: "fadein",
        primaryColor: "#F3443E",
        borderColor: "#F3443E",
        backgroundColor: "#FFF",
        textColor: '#555'
      });

      $("#date-input").change(
        function() {
          $("#keyword-input")[0].value = "";
          $("#time-input")[0].value = "";
          var dataTable_filter = $("#dataTable_filter").find("input")[0];
          dataTable_filter.value = $("#date-input")[0].value;
          e = $.Event('keyup');
          e.keyCode = 13;
          $("[aria-controls='dataTable']").trigger(e);
        });

      $("#authorize_payment_btn").click(function() {
        $("#loadingCycle").show();
        var ErrorMessage = document.getElementById("ErrorMessage");
        ErrorMessage.innerHTML = "";
        var cus_data = {
          patient_id: p_id,
          reservation_token: reservation_token
        }
        if (reservation_token != "") {
          csdata = {
            "patient_id": p_id,
            "reservation_token": reservation_token
          }
          $.ajax({
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            url: "http://localhost:8080/paf/rest/v1/reservation/pending",
            method: "PUT",
            data: JSON.stringify(csdata),
            success: function(result) {
              ErrorMessage.innerHTML = "";
              $("#authorize_payment").submit();
            },
            error: function(error) {
              ErrorMessage.innerHTML = "Some error Occured";
              $("#loadingCycle").hide();
            }
          });
        } else {
          ErrorMessage.innerHTML = "Please select reservation";
          $("#loadingCycle").hide();
        }
      })

      $("body").on('DOMSubtreeModified', ".td-time", function() {
        $("#keyword-input")[0].value = "";
        var dataTable_filter = $("#dataTable_filter").find("input")[0];
        var getDateStrng = $("#date-input")[0].value;
        var getUncropped = $("#time-input")[0].value;
        var res = getUncropped.split(":");
        var resetFirstVal = res[0];
        var resetLastVal = res[1] >= 30 ? 30 : '00';
        dataTable_filter.value = getDateStrng + " " + resetFirstVal + ":" + resetLastVal;
        e = $.Event('keyup');
        e.keyCode = 13;
        $("[aria-controls='dataTable']").trigger(e);
      });

      $("#payingBtn").click(function() {
        $("#payingForm").submit();
      });

      $("#keyword-input").keyup(
        function() {
          $("#date-input")[0].value = "";
          $("#time-input")[0].value = "";
          var dataTable_filter = $("#dataTable_filter").find("input")[0];
          dataTable_filter.value = $("#keyword-input")[0].value;
          e = $.Event('keyup');
          e.keyCode = 13;
          $("[aria-controls='dataTable']").trigger(e);
        });

      $("#ClearAllBtn").click(
        function() {
          $("#date-input")[0].value = "";
          $("#time-input")[0].value = "";
          $("#keyword-input")[0].value = "";
          var dataTable_filter = $("#dataTable_filter").find("input")[0];
          dataTable_filter.value = "";
          e = $.Event('keyup');
          e.keyCode = 13;
          $("[aria-controls='dataTable']").trigger(e);
          document.getElementById('bill_invoice').innerHTML = ".......";
          document.getElementById('bill_date').innerHTML = ".......";
          document.getElementById('bill_hospital').innerHTML = ".......";
          document.getElementById('bill_area').innerHTML = ".......";
          document.getElementById('bill_time').innerHTML = ".......";
          document.getElementById('bill_amount').innerHTML = ".......";
        })

      $("#time-input")[0].value = "";

    });

    function setPayments(shedule_date, hospital, area, start_time,
      end_time, re_token, doctor_charge, hospital_charge) {
      var bill_invoice = document.getElementById('bill_invoice');
      var bill_date = document.getElementById('bill_date');
      var bill_hospital = document.getElementById('bill_hospital');
      var bill_area = document.getElementById('bill_area');
      var bill_time = document.getElementById('bill_time');
      var bill_amount = document.getElementById('bill_amount');
      var cusProDes = document.getElementById('cusProDes');
      var cusProVal = document.getElementById('cusProVal');
      var nowDate = new Date();
      var month = nowDate.getUTCMonth() + 1 < 10 ? '0' + (nowDate.getUTCMonth() + 1) : (nowDate.getUTCMonth() + 1);
      var year = nowDate.getUTCFullYear();
      var date = nowDate.getUTCDate() < 10 ? '0' + nowDate.getUTCDate() : nowDate.getUTCDate();
      var hours = nowDate.getUTCHours() < 10 ? '0' + nowDate.getUTCHours() : nowDate.getUTCHours();
      var mins = nowDate.getUTCMinutes() < 10 ? '0' + nowDate.getUTCMinutes() : nowDate.getUTCMinutes();
      var secs = nowDate.getUTCSeconds() < 10 ? '0' + nowDate.getUTCSeconds() : nowDate.getUTCSeconds();
      var invoiceNO = p_id + year + month + date + hours + mins + secs;
      var time_stamp = year+ "-" + month + "-" + date + " " + hours + ":" + mins + ":" +secs;
      bill_invoice.innerHTML = invoiceNO;
      bill_date.innerHTML = shedule_date;
      bill_hospital.innerHTML = hospital;
      bill_area.innerHTML = area;
      bill_time.innerHTML = start_time + "-" + end_time;
      bill_amount.innerHTML = " $ " + (parseFloat(hospital_charge) + parseFloat(doctor_charge));
      cusProDes.value =
        shedule_date + "|" +
        hospital + "|" +
        area + "|" +
        start_time + "|" +
        end_time + "|" +
        hospital_charge + "|" +
        doctor_charge + "|" +
        invoiceNO + "|" +
        re_token + "|" +
        p_id + "|" +
        time_stamp;
      cusProVal.value = parseFloat(hospital_charge) + parseFloat(doctor_charge);
      reservation_token = re_token;
      var ErrorMessage = document.getElementById("ErrorMessage");
      ErrorMessage.innerHTML = "";
    }
  </script>
</body>

</html>