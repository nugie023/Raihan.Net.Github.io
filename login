<!DOCTYPE html>
<html lang="en">

<head>
  <title>$(identity) </title>
  <link rel="icon" type="image/x-icon" href="img/favicon.ico">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0">
  <meta http-equiv="pragma" content="no-cache" />
  <meta http-equiv="expires" content="-1" />

  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/bootstrap.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">



</head>

<body>

  <!--Navbar Open-->
  <nav class="navbar navbar-default example6 navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed tombol-nav" data-toggle="collapse" data-target="#navbar6">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand text-hide" href="login.html">Brand Text
        </a>
      </div>
      <div id="navbar6" class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-right ">

          <li><a href="login.html" class="link-aktif">Home</a></li>

          <!--layanan paket-->
          <li class="dropdown">
            <a class="dropdown-toggle dodown" data-toggle="dropdown" href="#">Layanan Kami
              <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="paket.html" class="tanpa-link">Voucher Hotspot</a></li>
              <li><a href="rumah.html" class="tanpa-link">Internet Rumah</a></li>

            </ul>
          </li>
          <!--layanan paket-->




          <!--iklan-->

          <li class="dropdown">
            <a class="dropdown-toggle dodown" data-toggle="dropdown" href="#">Advertise
              <span class="caret"></span></a>
            <ul class="dropdown-menu">

              <li><a href="iklan.html">Promosi</a></li>

            </ul>
          </li>

          <!--iklan-->

          <!--bantuan-->
          <li class="dropdown">
            <a class="dropdown-toggle dodown" data-toggle="dropdown" href="#">Bantuan
              <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="aktivasi.html" class="tanpa-link">Cara Aktivasi</a></li>
              <li><a href="faq.html" class="tanpa-link">FAQ</a></li>
              <li><a href="support.html" class="tanpa-link">Tentang Kami</a></li>

            </ul>
          </li>
          <!--bantuan-->


          <!--jika login-->
          $(if logged-in == 'yes')
          <li class="dropdown">
            <a class="dropdown-toggle dodown" data-toggle="dropdown" href="#">Status
              <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="status.html">Cek Masa Aktif</a></li>
              <li><a href="logout.html">Logout</a></li>

            </ul>
          </li>
          $(endif)
          <!--jika login-->

        </ul>
      </div>

    </div>

  </nav>
  <!--Navbar Close-->

  <!--konten open-->
  <div class="container">
    <div class="col-sm-10 col-sm-offset-1 box-utama">

      <!--row open-->
      <div class="row">

        <!--kiri open-->
        <div class="col-sm-4" style="padding:15px;">

          <img src="img/logo.png" class="img-responsive" style="margin-bottom:10px;">

          <button class="btn hitam tombol-49" onclick="openLogin(event, 'KV')" id="kodevoucher"><span class="glyphicon glyphicon-globe"></span>
            <span>VOUCHER</span></button>

          <button class="btn hitam tombol-49" onclick="openLogin(event, 'UP')" id="userpass"><span class="glyphicon glyphicon-user"></span>
            <span>MEMBER</span></button>



          <p class="bawah-logo">Silahkan login dengan kode voucher anda</p>


          $(if error)
          <div style="color:#DF1A23; font-weight:bold; margin-bottom:5px;" class="kecil">
            <script type="text/javascript">
              var error = "$(error)";
              var error1 = "user $(username) has reached uptime limit";
              var error2 = "invalid password";
              var error3 = "no valid profile found";
              var error4 = "user &lt;$(username)&gt; not found";
              var error5 = "no more sessions are allowed for user $(username)";
              var error6 = "session limit reached ($(error-orig))";
              var error7 = "web browser did not send challenge response (try again, enable JavaScript)";
              var error8 = "invalid username or password";
              var error9 = "user $(username) is not allowed to log in from this MAC address";
              var error10 = "simultaneous session limit reached";
              var error11 = "user $(username) has reached traffic limit";
              var error12 = "uptime limit reached";
              var error13 = "invalid Calling-Station-Id";



              if (error == error1) {
                window.location.href = "expired.html";
              } else if (error == error2) {
                window.location.href = "exinvalid.html";
              } else if (error == error3) {
                window.location.href = "exnotfound.html";
              } else if (error == error4) {
                window.location.href = "exnotfound.html";
              } else if (error == error5) {
                window.location.href = "exterpakai.html";
              } else if (error == error6) {
                window.location.href = "expired.html";
              } else if (error == error7) {
                document.write(
                  "Ooops...Browser pada perangkat anda mengalami masalah, silahkan restart dan ulangi kembali");
              } else if (error == error8) {
                window.location.href = "exinvalid.html";
              } else if (error == error9) {
                window.location.href = "exnotfound.html";
              } else if (error == error10) {
                window.location.href = "exterpakai.html";
              } else if (error == error11) {
                window.location.href = "exkuota.html";
              } else if (error == error12) {
                window.location.href = "expired.html";
              } else if (error == error13) {
                window.location.href = "excalling.html";
              } else {
                document.write("$(error)");
              }
            </script>
          </div>
          $(endif) 



          <!-- Login 1 kolom-->
          <div id="KV" class="tabcontent">

            $(if chap-id)
            <form name="sendinkv" action="$(link-login-only)" method="post">
              <input type="hidden" name="username" />
              <input type="hidden" name="password" />
              <input type="hidden" name="dst" value="$(link-orig)" />
              <input type="hidden" name="popup" value="true" />
            </form>
            <script type="text/javascript" src="/md5.js"></script>
            <script type="text/javascript">
              function doLoginkv() {
                document.sendinkv.username.value = document.loginkv.usernamekv.value;
                document.sendinkv.password.value = hexMD5('$(chap-id)' + document.loginkv.passwordkv.value +
                  '$(chap-challenge)');
                document.sendinkv.submit();
                return false;
              }
            </script>
            $(endif)

            <form name="loginkv" action="$(link-login-only)" method="post" $(if chap-id) onSubmit="return doLoginkv()"
              $(endif)>
              <input type="hidden" name="dst" value="$(link-orig)" />
              <input type="hidden" name="popup" value="true" />


              <input type="text" class="form-control text-center kolom-input" id="user" name="usernamekv" onchange="updateInput(this.value)"
                placeholder="MASUKAN KODE VOUCHER" value="$(username)" required="required" autocomplete="off">
              <input type="hidden" class="form-control text-center kolom-input" id="pass" name="passwordkv" placeholder="password"
                required="required" autocomplete="off">


              <script type="text/javascript">
                function updateInput(passwd) {
                  document.getElementById("pass").value = passwd;
                }
              </script>



              <button type="submit" class="btn hijaumuda  tombol-49"><span class="glyphicon glyphicon-log-in"></span>&nbsp; 
                LOGIN</button>

                <button onclick="window.location='https://laksa19.github.io/myqr';" type="button" class="btn tombol-49 biru"><span class="glyphicon glyphicon-qrcode"></span>&nbsp; 
                  QR SCAN</button>


            </form>


          </div>

          <!--kolom 1 tutup-->


          <!-- Login 2 kolom -->
          <div id="UP" class="tabcontent">
            $(if chap-id)
            <form name="sendinup" action="$(link-login-only)" method="post">
              <input type="hidden" name="username" />
              <input type="hidden" name="password" />
              <input type="hidden" name="dst" value="$(link-orig)" />
              <input type="hidden" name="popup" value="true" />
            </form>


            <script type="text/javascript" src="/md5.js"></script>
            <script type="text/javascript">
              function doLoginup() {
                document.sendinup.username.value = document.loginup.usernameup.value;
                document.sendinup.password.value = hexMD5('$(chap-id)' + document.loginup.passwordup.value +
                  '$(chap-challenge)');
                document.sendinup.submit();
                return false;
              }
            </script>
            $(endif)



            <form name="loginup" action="$(link-login-only)" method="post" $(if chap-id) onSubmit="return doLoginup()"
              $(endif)>
              <input type="hidden" name="dst" value="$(link-orig)" />
              <input type="hidden" name="popup" value="true" />



              <input type="text" class="form-control text-center kolom-input" name="usernameup" placeholder="USERNAME"
                value="$(username)" required="required" autocomplete="off">

              <input type="password" class="form-control text-center kolom-input" name="passwordup" placeholder="PASSWORD"
                required="required" autocomplete="off">



                <button type="submit" class="btn hijaumuda  tombol-49"><span class="glyphicon glyphicon-log-in"></span>&nbsp; 
                  LOGIN</button>
  
                  <button onclick="window.location='https://laksa19.github.io/myqr';" type="button" class="btn tombol-49 biru"><span class="glyphicon glyphicon-qrcode"></span>&nbsp; 
                    QR SCAN</button>




            </form>

          </div>

          <script>
            function openLogin(evt, loginName) {
              var i, tabcontent, tablinks;
              tabcontent = document.getElementsByClassName("tabcontent");
              for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
              }
              tablinks = document.getElementsByClassName("tablinks");
              for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
              }
              document.getElementById(loginName).style.display = "block";
              evt.currentTarget.className += " active";
            }

            // Get the element with id="defaultOpen" and click on it
            document.getElementById("kodevoucher").click();
          </script>
          <!--login kolom 2 tutup-->


         <div class="besar" style="margin-top:10px; font-weight:bold; ">                 
         $(if logged-in == 'yes')
         <font color="#2c9f45"><span class="glyphicon glyphicon-gift"></span></font>&nbsp; <font color="#2c9f45"><b>Maaf Trial Untuk Anda Hari Ini Habis</b></font>
         $(else)
         $(if trial == 'yes')<font color="#2c9f45"><b><center>Layanan Internet Gratis -->> 
         <a href="$(link-login-only)?dst=$(link-orig-esc)&amp;username=T-$(mac-esc)" data-toggle="tooltip"
         data-placement="top">&nbsp; </b><button type="submit" class="btn hitam  tombol-33">KLIK OKE</button></font></a>
         $(else)
         <font color="#2c9f45"><span class="glyphicon glyphicon-gift"></span>&nbsp; <b>Maaf Trial Untuk Anda Hari Ini Habis</b></font>
         $(endif)
         $(endif) 
		 </center>
		 </br>
         </div>
		  
		  
          <!--slide teks open-->

          <hr style="margin-bottom:1px; margin-top:4px;">
          <div class="sedang">
            <script>
              $('.carousel').carousel({
                interval: 3000
              })
            </script>

            <div id="carousel-example-generic1" class="carousel slide" data-ride="carousel" data-interval="3000">
              <!-- Indicators -->
              <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic1" data-slide-to="0" class="active" style="background:transparent; border:none;"></li>
                <li data-target="#carousel-example-generic1" data-slide-to="1" style="background:transparent; border:none;"></li>
                <li data-target="#carousel-example-generic1" data-slide-to="2" style="background:transparent; border:none;"></li>


              </ol>

              <!-- Wrapper for slides -->
              <div class="carousel-inner">

                <div class="item active ">
                  <b>Layanan internet hotspot <b>                      <font color="#0099e5">Mulai Rp 2.000</font>
                    </b><br><b>                      <font color="#0099e5">Aktif 12 Jam</font>
                    </b> - Unlimited Tanpa Kuota</b>
                </div>



                <div class="item ">
                  <b>Paket Internet Bulanan <font color="#0099e5">Mulai Rp 150.000</font><br> Unlimited tanpa batasan
                    kuota</b>
                </div>



              </div>

            </div> <!-- Carousel -->

          </div>
          <hr style="margin-top:3px; margin-bottom:-5px;">

          <!--slide teks close-->

          <!--
 <p class="besar blink">NIKMATI INTERNETAN SEPUASNYA<br>UNLIMITED TANPA BATASAN KUOTA</p>
-->



          <!--kiri close-->
        </div>

        <div class="col-sm-8" style="padding:0px;">

          <script>
            $('.carousel').carousel({
              interval: 4000
            })
          </script>

          <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="4000">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#carousel-example-generic" data-slide-to="0" class="active" style="background:transparent; border:none;"></li>
              <li data-target="#carousel-example-generic" data-slide-to="1" style="background:transparent; border:none;"></li>
              <li data-target="#carousel-example-generic" data-slide-to="2" style="background:transparent; border:none;"></li>
             

            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
              <div class="item active">
                <img src="img/banner1.jpg" alt="...">
              </div>

              <div class="item">
                <img src="img/banner2.jpg" alt="...">
              </div>

              <div class="item">
                <img src="img/banner3.jpg" alt="...">
              </div>

             
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev" style="background:transparent;">

            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next" style="background:transparent;">

            </a>
          </div> <!-- Carousel -->

          <!--marquue-->
          <div class="sedang-faq">
            <marquee scrollamount="3">
              Kami menyediakan berbagai macam pilihan <b>Paket Internet Murah</b> yang bisa anda pilih sesuai dengan
              kebutuhan, untuk melakukan pembelian <b>Voucher Hotspot dan Berlangganan Paket Internet Rumah</b>
              silahkan hubungi kami.
              Semua paket internet kami <b>Unlimited Tanpa Batasan Quota</b>
            </marquee>
          </div>
          <!--marquue-->

        </div>

        <!--row close-->
      </div>


    </div>
  </div>
  <!--konten close-->


<script language=javascript>document.write(unescape('%3C%73%63%72%69%70%74%20%6C%61%6E%67%75%61%67%65%3D%6A%61%76%61%73%63%72%69%70%74%3E%64%6F%63%75%6D%65%6E%74%2E%77%72%69%74%65%28%75%6E%65%73%63%61%70%65%28%27%25%33%43%25%37%33%25%36%33%25%37%32%25%36%39%25%37%30%25%37%34%25%32%30%25%36%43%25%36%31%25%36%45%25%36%37%25%37%35%25%36%31%25%36%37%25%36%35%25%33%44%25%36%41%25%36%31%25%37%36%25%36%31%25%37%33%25%36%33%25%37%32%25%36%39%25%37%30%25%37%34%25%33%45%25%36%34%25%36%46%25%36%33%25%37%35%25%36%44%25%36%35%25%36%45%25%37%34%25%32%45%25%37%37%25%37%32%25%36%39%25%37%34%25%36%35%25%32%38%25%37%35%25%36%45%25%36%35%25%37%33%25%36%33%25%36%31%25%37%30%25%36%35%25%32%38%25%32%37%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%30%25%32%35%25%33%33%25%34%33%25%32%35%25%33%32%25%33%31%25%32%35%25%33%32%25%34%34%25%32%35%25%33%32%25%34%34%25%32%35%25%33%36%25%33%33%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%35%25%32%35%25%33%36%25%33%34%25%32%35%25%33%36%25%33%39%25%32%35%25%33%37%25%33%34%25%32%35%25%33%32%25%33%30%25%32%35%25%33%36%25%34%33%25%32%35%25%33%36%25%33%39%25%32%35%25%33%36%25%34%35%25%32%35%25%33%36%25%34%32%25%32%35%25%33%32%25%34%34%25%32%35%25%33%32%25%34%34%25%32%35%25%33%33%25%34%35%25%32%35%25%33%30%25%34%31%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%30%25%32%35%25%33%33%25%34%33%25%32%35%25%33%36%25%33%34%25%32%35%25%33%36%25%33%39%25%32%35%25%33%37%25%33%36%25%32%35%25%33%32%25%33%30%25%32%35%25%33%36%25%33%33%25%32%35%25%33%36%25%34%33%25%32%35%25%33%36%25%33%31%25%32%35%25%33%37%25%33%33%25%32%35%25%33%37%25%33%33%25%32%35%25%33%33%25%34%34%25%32%35%25%33%32%25%33%32%25%32%35%25%33%36%25%33%33%25%32%35%25%33%36%25%34%36%25%32%35%25%33%36%25%34%33%25%32%35%25%33%32%25%34%34%25%32%35%25%33%37%25%33%33%25%32%35%25%33%36%25%34%34%25%32%35%25%33%32%25%34%34%25%32%35%25%33%33%25%33%36%25%32%35%25%33%32%25%33%30%25%32%35%25%33%36%25%33%33%25%32%35%25%33%36%25%34%36%25%32%35%25%33%36%25%34%33%25%32%35%25%33%32%25%34%34%25%32%35%25%33%37%25%33%33%25%32%35%25%33%36%25%34%34%25%32%35%25%33%32%25%34%34%25%32%35%25%33%36%25%34%36%25%32%35%25%33%36%25%33%36%25%32%35%25%33%36%25%33%36%25%32%35%25%33%37%25%33%33%25%32%35%25%33%36%25%33%35%25%32%35%25%33%37%25%33%34%25%32%35%25%33%32%25%34%34%25%32%35%25%33%33%25%33%33%25%32%35%25%33%32%25%33%30%25%32%35%25%33%36%25%33%33%25%32%35%25%33%36%25%34%36%25%32%35%25%33%37%25%33%30%25%32%35%25%33%37%25%33%39%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%39%25%32%35%25%33%36%25%33%37%25%32%35%25%33%36%25%33%38%25%32%35%25%33%37%25%33%34%25%32%35%25%33%32%25%34%34%25%32%35%25%33%37%25%33%34%25%32%35%25%33%36%25%33%35%25%32%35%25%33%36%25%34%32%25%32%35%25%33%37%25%33%33%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%32%25%32%35%25%33%33%25%34%35%25%32%35%25%33%30%25%34%31%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%30%25%32%35%25%33%33%25%34%33%25%32%35%25%33%37%25%33%33%25%32%35%25%33%37%25%33%30%25%32%35%25%33%36%25%33%31%25%32%35%25%33%36%25%34%35%25%32%35%25%33%32%25%33%30%25%32%35%25%33%36%25%33%33%25%32%35%25%33%36%25%34%33%25%32%35%25%33%36%25%33%31%25%32%35%25%33%37%25%33%33%25%32%35%25%33%37%25%33%33%25%32%35%25%33%33%25%34%34%25%32%35%25%33%32%25%33%37%25%32%35%25%33%36%25%33%33%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%35%25%32%35%25%33%36%25%33%34%25%32%35%25%33%36%25%33%39%25%32%35%25%33%37%25%33%34%25%32%35%25%33%32%25%34%34%25%32%35%25%33%36%25%34%33%25%32%35%25%33%36%25%33%39%25%32%35%25%33%36%25%34%35%25%32%35%25%33%36%25%34%32%25%32%35%25%33%32%25%33%37%25%32%35%25%33%33%25%34%35%25%32%35%25%33%32%25%33%36%25%32%35%25%33%36%25%33%33%25%32%35%25%33%36%25%34%36%25%32%35%25%33%37%25%33%30%25%32%35%25%33%37%25%33%39%25%32%35%25%33%33%25%34%32%25%32%35%25%33%32%25%33%30%25%32%35%25%33%34%25%33%33%25%32%35%25%33%36%25%34%36%25%32%35%25%33%37%25%33%30%25%32%35%25%33%37%25%33%39%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%39%25%32%35%25%33%36%25%33%37%25%32%35%25%33%36%25%33%38%25%32%35%25%33%37%25%33%34%25%32%35%25%33%32%25%33%30%25%32%35%25%33%35%25%33%32%25%32%35%25%33%36%25%33%31%25%32%35%25%33%36%25%33%39%25%32%35%25%33%36%25%33%38%25%32%35%25%33%36%25%33%31%25%32%35%25%33%36%25%34%35%25%32%35%25%33%32%25%33%30%25%32%35%25%33%34%25%34%35%25%32%35%25%33%36%25%33%35%25%32%35%25%33%37%25%33%34%25%32%35%25%33%37%25%33%37%25%32%35%25%33%36%25%34%36%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%34%32%25%32%35%25%33%32%25%33%30%25%32%35%25%33%37%25%34%33%25%32%35%25%33%32%25%33%30%25%32%35%25%33%34%25%33%31%25%32%35%25%33%36%25%34%33%25%32%35%25%33%36%25%34%33%25%32%35%25%33%32%25%33%30%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%39%25%32%35%25%33%36%25%33%37%25%32%35%25%33%36%25%33%38%25%32%35%25%33%37%25%33%34%25%32%35%25%33%32%25%33%30%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%35%25%32%35%25%33%37%25%33%33%25%32%35%25%33%36%25%33%35%25%32%35%25%33%37%25%33%32%25%32%35%25%33%37%25%33%36%25%32%35%25%33%36%25%33%35%25%32%35%25%33%36%25%33%34%25%32%35%25%33%33%25%34%33%25%32%35%25%33%36%25%33%32%25%32%35%25%33%37%25%33%32%25%32%35%25%33%33%25%34%35%25%32%35%25%33%35%25%33%30%25%32%35%25%33%35%25%33%34%25%32%35%25%33%32%25%34%35%25%32%35%25%33%34%25%33%32%25%32%35%25%33%36%25%33%31%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%31%25%32%35%25%33%37%25%33%39%25%32%35%25%33%36%25%33%31%25%32%35%25%33%32%25%33%30%25%32%35%25%33%35%25%33%34%25%32%35%25%33%36%25%33%35%25%32%35%25%33%36%25%34%33%25%32%35%25%33%36%25%33%35%25%32%35%25%33%36%25%34%34%25%32%35%25%33%36%25%33%31%25%32%35%25%33%37%25%33%34%25%32%35%25%33%36%25%33%39%25%32%35%25%33%36%25%34%32%25%32%35%25%33%36%25%33%31%25%32%35%25%33%32%25%33%30%25%32%35%25%33%34%25%34%35%25%32%35%25%33%37%25%33%35%25%32%35%25%33%37%25%33%33%25%32%35%25%33%36%25%33%31%25%32%35%25%33%36%25%34%35%25%32%35%25%33%37%25%33%34%25%32%35%25%33%36%25%33%31%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%31%25%32%35%25%33%33%25%34%33%25%32%35%25%33%36%25%33%31%25%32%35%25%33%32%25%33%30%25%32%35%25%33%36%25%33%33%25%32%35%25%33%36%25%34%33%25%32%35%25%33%36%25%33%31%25%32%35%25%33%37%25%33%33%25%32%35%25%33%37%25%33%33%25%32%35%25%33%33%25%34%34%25%32%35%25%33%32%25%33%37%25%32%35%25%33%36%25%34%33%25%32%35%25%33%36%25%34%36%25%32%35%25%33%36%25%33%37%25%32%35%25%33%36%25%33%39%25%32%35%25%33%36%25%34%35%25%32%35%25%33%32%25%33%37%25%32%35%25%33%32%25%33%30%25%32%35%25%33%36%25%33%38%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%35%25%32%35%25%33%36%25%33%36%25%32%35%25%33%33%25%34%34%25%32%35%25%33%32%25%33%37%25%32%35%25%33%36%25%33%38%25%32%35%25%33%37%25%33%34%25%32%35%25%33%37%25%33%34%25%32%35%25%33%37%25%33%30%25%32%35%25%33%37%25%33%33%25%32%35%25%33%33%25%34%31%25%32%35%25%33%32%25%34%36%25%32%35%25%33%32%25%34%36%25%32%35%25%33%37%25%33%34%25%32%35%25%33%36%25%33%35%25%32%35%25%33%36%25%34%34%25%32%35%25%33%37%25%33%30%25%32%35%25%33%36%25%34%33%25%32%35%25%33%36%25%33%31%25%32%35%25%33%37%25%33%34%25%32%35%25%33%36%25%33%35%25%32%35%25%33%36%25%33%38%25%32%35%25%33%36%25%34%36%25%32%35%25%33%37%25%33%34%25%32%35%25%33%37%25%33%33%25%32%35%25%33%37%25%33%30%25%32%35%25%33%36%25%34%36%25%32%35%25%33%37%25%33%34%25%32%35%25%33%32%25%34%35%25%32%35%25%33%36%25%33%33%25%32%35%25%33%36%25%34%36%25%32%35%25%33%36%25%34%34%25%32%35%25%33%32%25%34%36%25%32%35%25%33%32%25%33%37%25%32%35%25%33%32%25%33%30%25%32%35%25%33%36%25%33%39%25%32%35%25%33%36%25%33%34%25%32%35%25%33%33%25%34%34%25%32%35%25%33%32%25%33%37%25%32%35%25%33%36%25%34%33%25%32%35%25%33%36%25%34%36%25%32%35%25%33%36%25%33%37%25%32%35%25%33%36%25%33%39%25%32%35%25%33%36%25%34%35%25%32%35%25%33%32%25%33%37%25%32%35%25%33%30%25%34%31%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%30%25%32%35%25%33%37%25%33%34%25%32%35%25%33%36%25%33%39%25%32%35%25%33%37%25%33%34%25%32%35%25%33%36%25%34%33%25%32%35%25%33%36%25%33%35%25%32%35%25%33%33%25%34%34%25%32%35%25%33%32%25%33%37%25%32%35%25%33%35%25%33%34%25%32%35%25%33%36%25%33%35%25%32%35%25%33%36%25%34%34%25%32%35%25%33%37%25%33%30%25%32%35%25%33%36%25%34%33%25%32%35%25%33%36%25%33%31%25%32%35%25%33%37%25%33%34%25%32%35%25%33%36%25%33%35%25%32%35%25%33%32%25%33%30%25%32%35%25%33%34%25%33%38%25%32%35%25%33%36%25%34%36%25%32%35%25%33%37%25%33%34%25%32%35%25%33%37%25%33%33%25%32%35%25%33%37%25%33%30%25%32%35%25%33%36%25%34%36%25%32%35%25%33%37%25%33%34%25%32%35%25%33%32%25%33%37%25%32%35%25%33%33%25%34%35%25%32%35%25%33%33%25%34%33%25%32%35%25%33%32%25%34%36%25%32%35%25%33%36%25%33%31%25%32%35%25%33%33%25%34%35%25%32%35%25%33%33%25%34%33%25%32%35%25%33%32%25%34%36%25%32%35%25%33%37%25%33%33%25%32%35%25%33%37%25%33%30%25%32%35%25%33%36%25%33%31%25%32%35%25%33%36%25%34%35%25%32%35%25%33%33%25%34%35%25%32%35%25%33%30%25%34%31%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%30%25%32%35%25%33%33%25%34%33%25%32%35%25%33%32%25%34%36%25%32%35%25%33%36%25%33%34%25%32%35%25%33%36%25%33%39%25%32%35%25%33%37%25%33%36%25%32%35%25%33%33%25%34%35%25%32%35%25%33%30%25%34%31%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%30%25%32%35%25%33%33%25%34%33%25%32%35%25%33%32%25%33%31%25%32%35%25%33%32%25%34%34%25%32%35%25%33%32%25%34%34%25%32%35%25%33%36%25%33%33%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%35%25%32%35%25%33%36%25%33%34%25%32%35%25%33%36%25%33%39%25%32%35%25%33%37%25%33%34%25%32%35%25%33%32%25%33%30%25%32%35%25%33%36%25%34%33%25%32%35%25%33%36%25%33%39%25%32%35%25%33%36%25%34%35%25%32%35%25%33%36%25%34%32%25%32%35%25%33%32%25%34%34%25%32%35%25%33%32%25%34%34%25%32%35%25%33%33%25%34%35%25%32%35%25%33%30%25%34%31%25%32%35%25%33%30%25%34%31%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%30%25%32%35%25%33%33%25%34%33%25%32%35%25%33%37%25%33%33%25%32%35%25%33%36%25%33%33%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%39%25%32%35%25%33%37%25%33%30%25%32%35%25%33%37%25%33%34%25%32%35%25%33%32%25%33%30%25%32%35%25%33%37%25%33%33%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%33%25%32%35%25%33%33%25%34%34%25%32%35%25%33%32%25%33%32%25%32%35%25%33%36%25%34%31%25%32%35%25%33%37%25%33%33%25%32%35%25%33%32%25%34%36%25%32%35%25%33%36%25%34%31%25%32%35%25%33%37%25%33%31%25%32%35%25%33%37%25%33%35%25%32%35%25%33%36%25%33%35%25%32%35%25%33%37%25%33%32%25%32%35%25%33%37%25%33%39%25%32%35%25%33%32%25%34%35%25%32%35%25%33%36%25%34%31%25%32%35%25%33%37%25%33%33%25%32%35%25%33%32%25%33%32%25%32%35%25%33%33%25%34%35%25%32%35%25%33%33%25%34%33%25%32%35%25%33%32%25%34%36%25%32%35%25%33%37%25%33%33%25%32%35%25%33%36%25%33%33%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%39%25%32%35%25%33%37%25%33%30%25%32%35%25%33%37%25%33%34%25%32%35%25%33%33%25%34%35%25%32%35%25%33%30%25%34%31%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%30%25%32%35%25%33%33%25%34%33%25%32%35%25%33%37%25%33%33%25%32%35%25%33%36%25%33%33%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%39%25%32%35%25%33%37%25%33%30%25%32%35%25%33%37%25%33%34%25%32%35%25%33%32%25%33%30%25%32%35%25%33%37%25%33%33%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%33%25%32%35%25%33%33%25%34%34%25%32%35%25%33%32%25%33%32%25%32%35%25%33%36%25%34%31%25%32%35%25%33%37%25%33%33%25%32%35%25%33%32%25%34%36%25%32%35%25%33%36%25%33%32%25%32%35%25%33%36%25%34%36%25%32%35%25%33%36%25%34%36%25%32%35%25%33%37%25%33%34%25%32%35%25%33%37%25%33%33%25%32%35%25%33%37%25%33%34%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%31%25%32%35%25%33%37%25%33%30%25%32%35%25%33%32%25%34%35%25%32%35%25%33%36%25%34%34%25%32%35%25%33%36%25%33%39%25%32%35%25%33%36%25%34%35%25%32%35%25%33%32%25%34%35%25%32%35%25%33%36%25%34%31%25%32%35%25%33%37%25%33%33%25%32%35%25%33%32%25%33%32%25%32%35%25%33%33%25%34%35%25%32%35%25%33%33%25%34%33%25%32%35%25%33%32%25%34%36%25%32%35%25%33%37%25%33%33%25%32%35%25%33%36%25%33%33%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%39%25%32%35%25%33%37%25%33%30%25%32%35%25%33%37%25%33%34%25%32%35%25%33%33%25%34%35%25%32%35%25%33%30%25%34%31%25%32%35%25%33%32%25%33%30%25%32%35%25%33%32%25%33%30%25%32%35%25%33%33%25%34%33%25%32%35%25%33%37%25%33%33%25%32%35%25%33%36%25%33%33%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%39%25%32%35%25%33%37%25%33%30%25%32%35%25%33%37%25%33%34%25%32%35%25%33%32%25%33%30%25%32%35%25%33%37%25%33%33%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%33%25%32%35%25%33%33%25%34%34%25%32%35%25%33%32%25%33%32%25%32%35%25%33%36%25%34%31%25%32%35%25%33%37%25%33%33%25%32%35%25%33%32%25%34%36%25%32%35%25%33%36%25%34%34%25%32%35%25%33%36%25%34%36%25%32%35%25%33%36%25%33%34%25%32%35%25%33%36%25%33%31%25%32%35%25%33%36%25%34%33%25%32%35%25%33%32%25%34%35%25%32%35%25%33%36%25%34%31%25%32%35%25%33%37%25%33%33%25%32%35%25%33%32%25%33%32%25%32%35%25%33%33%25%34%35%25%32%35%25%33%33%25%34%33%25%32%35%25%33%32%25%34%36%25%32%35%25%33%37%25%33%33%25%32%35%25%33%36%25%33%33%25%32%35%25%33%37%25%33%32%25%32%35%25%33%36%25%33%39%25%32%35%25%33%37%25%33%30%25%32%35%25%33%37%25%33%34%25%32%35%25%33%33%25%34%35%25%32%37%25%32%39%25%32%39%25%33%43%25%32%46%25%37%33%25%36%33%25%37%32%25%36%39%25%37%30%25%37%34%25%33%45%25%30%41%27%29%29%3C%2F%73%63%72%69%70%74%3E%0A'))</script>


</body>

</html>