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

  <link href="source/vendor/fancyclock/timedropper.css" rel="stylesheet">
  <link href="source/css/sb-admin-2.css" rel="stylesheet">
  <link href="source/css/custom.css" rel="stylesheet">
  <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

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
                  <h1 class="m-0 font-weight-bold spBlueText">Doctor Appointments</h1>
                </div>
                <div class="card-body">

                  <form id="validate_form" action="reservation.jsp" method="get">
                    <input id="r_token" class="form-control" type="hidden" />
                    <div class="form-group">
                      <label>Date</label>
                      <input id="appointmentDate" class="form-control" type="text" />
                    </div>
                    <div class="form-group">
                      <label>Amount</label>
                      <input id="docCharge" class="form-control" type="text" required data-parsley-trigger="focusin focusout" data-parsley-pattern="^[1-9]\d*(\.\d+)?$" />
                    </div>
                    <div class="form-group">
                      <label>Start time</label>
                      <input id="startTime" class="form-control" type="text" required data-parsley-trigger="keyup" data-parsley-pattern="^([01]\d|2[0-3]):?([0-5]\d)$" />
                    </div>
                    <div class="form-group">
                      <label>End time</label>
                      <input id="endTime" class="form-control" type="text" required data-parsley-trigger="keyup" data-parsley-pattern="^([01]\d|2[0-3]):?([0-5]\d)$" data-parsley-eql="" />
                    </div>

                    <div class="form-group">
                      <input type="Submit" id="submit" name="submit" value="Submit" class="btn btn-success" />
                      <div class="btn btn-success" onclick="updateFinalItem()" style="color: #fff !important;"> Update </div>
                    </div>
                  </form>


                  <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" data-order='[[ 0, "desc" ],[ 1, "desc" ]]'>
                      <thead>
                        <tr>
                          <th>Date</th>
                          <th>Time</th>
                          <th>Hospital</th>
                          <th>Patient</th>
                          <th>ReservationState</th>
                          <th>Area</th>
                          <th>Hospital Charge($)</th>
                          <th>My Charge($)</th>
                          <th>Action</th>
                          <th> </th>
                        </tr>
                      </thead>
                      <tbody id="tbody">
                      </tbody>
                    </table>
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
  <img src="source/img/loading.svg" alt="" id="loadingCycle">

  <!-- Bootstrap core JavaScript-->
  <script src="source/vendor/jquery/jquery.min.js"></script>
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
  <script src="source/js/parsley.js"></script>
  <script>
    var doctor_id = "1";
    var nowDate = new Date();

    nowDate.setDate(nowDate.getDate() + 2);
    var month = nowDate.getUTCMonth() + 1 < 10 ? '0' + (nowDate.getUTCMonth() + 1) : (nowDate.getUTCMonth() + 1);
    var year = nowDate.getUTCFullYear();
    var date = nowDate.getUTCDate() < 10 ? '0' + nowDate.getUTCDate() : nowDate.getUTCDate();
    var tday = month + "/" + date + "/" + year;
    window.Parsley.addValidator('eql', {
      validateString: function(input) {
        return parseInt(input.split(':').join(''), 10) > parseInt(document.getElementById("startTime").value.split(':').join(''), 10);
      },
      messages: {
        en: 'End-time should be a value after Start-time'
      }
    });
    $(document).ready(function() {


      getDdata();

      $('#appointmentDate').dateDropper({
        format: 'Y-m-d',
        minDate: tday
      });

      $("#startTime").timeDropper({
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

      $("#endTime").timeDropper({
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

      $('#validate_form').parsley();

      $("body").on('DOMSubtreeModified', ".td-time", function() {
        $(".parsley-eql").remove();
      });


      $('#validate_form').on('submit', function(event) {
        event.preventDefault();
        if ($('#validate_form').parsley().isValid()) {
          ksdata = {
            "doctor_id": doctor_id,
            "doctor_charge": document.getElementById("docCharge").value,
            "start_time": document.getElementById("startTime").value,
            "end_time": document.getElementById("endTime").value,
            "schedule_date": document.getElementById("appointmentDate").value
          }
          $.ajax({
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            url: "http://localhost:8080/paf/rest/v1/reservation/doctor",
            method: "POST",
            data: JSON.stringify(ksdata),
            beforeSend: function() {
              $('#submit').attr('disabled', 'disabled');
              $('#submit').val('Submitting...');
            },
            success: function(data) {
              $('#validate_form')[0].reset();
              $('#validate_form').parsley().reset();
              $('#submit').attr('disabled', false);
              $('#submit').val('Submit');
              window.location.replace("http://localhost:8080/paf/reservation.jsp");
            }
          });
        }
      });

    });

    function getDdata() {
      $.ajax({
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        url: "http://localhost:8080/paf/rest/v1/reservation/doctor/" + doctor_id,
        method: "GET",
        success: function(result) {
          var finalData = result.Data;
          var tbody = document.getElementById("tbody");
          tbody.innerHTML = "";
          if (true) {
            for (let i = 0; i < finalData.length; i++) {
              var row = tbody.insertRow(i);
              var reservation = "";
              var patient_name = "";
              var hos_charge = "";
              var hos_name = "";
              var hos_area = "";

              var dateis = "";
              var timeis = "";
              var mychargeis = "";

              if (finalData[i]['reservation_state'] == "0") {

                dateis = "<span style=\"color: red; font-weight: 600;\">" + finalData[i]['schedule_date'] + "</span>";
                timeis = "<span style=\"color: red; font-weight: 600;\">" + finalData[i]['start_time'] + "-" + finalData[i]['end_time'] + "</span>";
                mychargeis = "<span style=\"color: red; font-weight: 600;\">" + finalData[i]['doctor_charge'] + "</span>";
                reservation = "<span style=\"color: red; font-weight: 600;\">" + "active" + "</span>";
                patient_name = "<span style=\"color: red; font-weight: 600;\">" + "not set" + "</span>";
                hos_charge = "<span style=\"color: red; font-weight: 600;\">" + finalData[i]['hospital_charge'] + "</span>";
                hos_name = "<span style=\"color: red; font-weight: 600;\">" + finalData[i]['hospital'].name + "</span>";
                hos_area = "<span style=\"color: red; font-weight: 600;\">" + finalData[i]['hospital'].city + "</span>";

              } else if (finalData[i]['reservation_state'] == "1") {

                dateis = "<span style=\"color: green; font-weight: 600;\">" + finalData[i]['schedule_date'] + "</span>";
                timeis = "<span style=\"color: green; font-weight: 600;\">" + finalData[i]['start_time'] + "-" + finalData[i]['end_time'] + "</span>";
                mychargeis = "<span style=\"color: green; font-weight: 600;\">" + finalData[i]['doctor_charge'] + "</span>";
                reservation = "<span style=\"color: green; font-weight: 600;\">" + "pending" + "</span>";
                patient_name = "<span style=\"color: green; font-weight: 600;\">" + finalData[i]['patient'].f_name + " " + finalData[i]['patient'].l_name + "</span>";
                hos_charge = "<span style=\"color: green; font-weight: 600;\">" + finalData[i]['hospital_charge'] + "</span>";
                hos_name = "<span style=\"color: green; font-weight: 600;\">" + finalData[i]['hospital'].name + "</span>";
                hos_area = "<span style=\"color: green; font-weight: 600;\">" + finalData[i]['hospital'].city + "</span>";

              } else if (finalData[i]['reservation_state'] == "2") {

                dateis = "<span style=\"color: blue; font-weight: 600;\">" + finalData[i]['schedule_date'] + "</span>";
                timeis = "<span style=\"color: blue; font-weight: 600;\">" + finalData[i]['start_time'] + "-" + finalData[i]['end_time'] + "</span>";
                mychargeis = "<span style=\"color: blue; font-weight: 600;\">" + finalData[i]['doctor_charge'] + "</span>";
                reservation = "<span style=\"color: blue; font-weight: 600;\">" + "reserved" + "</span>";
                patient_name = "<span style=\"color: blue; font-weight: 600;\">" + finalData[i]['patient'].f_name + " " + finalData[i]['patient'].l_name + "</span>";
                hos_charge = "<span style=\"color: blue; font-weight: 600;\">" + finalData[i]['hospital_charge'] + "</span>";
                hos_name = "<span style=\"color: blue; font-weight: 600;\">" + finalData[i]['hospital'].name + "</span>";
                hos_area = "<span style=\"color: blue; font-weight: 600;\">" + finalData[i]['hospital'].city + "</span>";

              } else if (finalData[i]['reservation_state'] == "3") {

                dateis = "<span style=\"color: purple; font-weight: 600;\">" + finalData[i]['schedule_date'] + "</span>";
                timeis = "<span style=\"color: purple; font-weight: 600;\">" + finalData[i]['start_time'] + "-" + finalData[i]['end_time'] + "</span>";
                mychargeis = "<span style=\"color: purple; font-weight: 600;\">" + finalData[i]['doctor_charge'] + "</span>";
                reservation = "<span style=\"color: purple; font-weight: 600;\">" + "Waiting for hospital";
                patient_name = "<span style=\"color: purple; font-weight: 600;\">" + "not set" + "</span>";
                hos_charge = "<span style=\"color: purple; font-weight: 600;\">" + "not set" + "</span>";
                hos_name = "<span style=\"color: purple; font-weight: 600;\">" + "not set" + "</span>";
                hos_area = "<span style=\"color: purple; font-weight: 600;\">" + "not set" + "</span>";

              } else if (finalData[i]['reservation_state'] == "3") {

                dateis = "<span style=\"color: black; font-weight: 600;\">" + finalData[i]['schedule_date'] + "</span>";
                timeis = "<span style=\"color: black; font-weight: 600;\">" + finalData[i]['start_time'] + "-" + finalData[i]['end_time'] + "</span>";
                mychargeis = "<span style=\"color: black; font-weight: 600;\">" + finalData[i]['doctor_charge'] + "</span>";
                reservation = "<span style=\"color: black; font-weight: 600;\">" + "Waiting for doctor" + "</span>";
                patient_name = "<span style=\"color: black; font-weight: 600;\">" + "not set" + "</span>";
                hos_charge = "<span style=\"color: black; font-weight: 600;\">" + finalData[i]['hospital_charge'] + "</span>";
                hos_name = "<span style=\"color: black; font-weight: 600;\">" + finalData[i]['hospital'].name + "</span>";
                hos_area = "<span style=\"color: black; font-weight: 600;\">" + finalData[i]['hospital'].city + "</span>";
              }
              row.insertCell(0).innerHTML = dateis;
              row.insertCell(1).innerHTML = timeis;
              row.insertCell(2).innerHTML = hos_name;
              row.insertCell(3).innerHTML = patient_name;
              row.insertCell(4).innerHTML = reservation;
              row.insertCell(5).innerHTML = hos_area;
              row.insertCell(6).innerHTML = hos_charge;
              row.insertCell(7).innerHTML = mychargeis;
              row.insertCell(8).innerHTML = "<div class=\"btn myDarkRedBtnDifferent btn-icon-split btnSpNoMgn clickingAnimation1\" onclick=\"updateItem(" +
                "\'" +
                finalData[i]['reservation_token'] +
                "\'," +

                "\'" +
                finalData[i]['doctor_charge']+
                "\'," +

                "\'" +
                finalData[i]['start_time']  +
                "\'," +

                "\'" +
                finalData[i]['end_time'] +
                "\'," +

                "\'" +
                finalData[i]['schedule_date'] +
                "\'," +

                ")\"" +
                ">" +
                "<span class=\"icon text-white-50\"><i class=\"fas fa-hand-pointer\"></i></span>" +
                "<span class=\"text myDarkRedBtnDifferentText\">Update</span>" +
                "</div>";
              row.insertCell(9).innerHTML = "<div class=\"btn myDarkRedBtnDifferent btn-icon-split btnSpNoMgn clickingAnimation1\" onclick=\"deleteItem(" +
                "\'" +
                finalData[i]['reservation_token'] +
                "\'," +

                ")\"" +
                ">" +
                "<span class=\"icon text-white-50\"><i class=\"fas fa-hand-pointer\"></i></span>" +
                "<span class=\"text myDarkRedBtnDifferentText\">Delete</span>" +
                "</div>";
            }
            $('#dataTable').DataTable();
            $(".dataTables_length").hide();
            $("#dataTable_filter").hide();

          }
        },
        error: function(error) {
          $("#loadingCycle").hide();
          console.log("error");
        }
      });
    }

    function deleteItem(token) {
      $.ajax({
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        url: "http://localhost:8080/paf/rest/v1/reservation/" + token,
        method: "DELETE",
        success: function(result) {
          window.location.replace("http://localhost:8080/paf/reservation.jsp");
        },
        error: function(error) {}
      });
    }

    function updateItem(token, doctor_chag, s_time, e_time, sche_date) {
      if(token != null && token != ""){
        document.getElementById("r_token").value = token;
      }

      if(doctor_chag != null && doctor_chag != ""){
        document.getElementById("docCharge").value = doctor_chag;
      }

      if(s_time != null && s_time != ""){
        document.getElementById("startTime").value = s_time;
      }

      if(e_time != null && e_time != ""){
        document.getElementById("endTime").value = e_time;
      }

      if(sche_date != null && sche_date != ""){
        document.getElementById("appointmentDate").value = sche_date;
      }
    }


    function updateFinalItem() {
      csdata = {
        "reservation_token": document.getElementById("r_token").value,
        "doctor_charge": document.getElementById("docCharge").value,
        "start_time": document.getElementById("startTime").value,
        "end_time": document.getElementById("endTime").value,
        "schedule_date": document.getElementById("appointmentDate").value
      }
      $.ajax({
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        url: "http://localhost:8080/paf/rest/v1/reservation/doctor",
        method: "PUT",
        data: JSON.stringify(csdata),
        success: function(result) {
          window.location.replace("http://localhost:8080/paf/reservation.jsp");
        },
        error: function(error) {}
      });
    }
  </script>
</body>

</html>