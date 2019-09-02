<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YoneticiPaneli.aspx.cs" Inherits="GunkarSogutma.YoneticiPaneli" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>GÜNKAR SOĞUTMA</title>
    <style>
        #bs-example-navbar-collapse-1 li a:hover {
            color: #00b6f1;
        }

        #bs-example-navbar-collapse-1 li a {
            color: white;
        }

        body {
            background-color: #0094ff;
        }

        img {
            padding: 0;
            max-width: 100%;
        }

        .row h3 {
            color: white;
        }

        .row a {
            text-decoration: none;
        }

            .row a:hover {
                color: #006600;
            }

        html {
            min-height: 100%;
            position: relative;
        }

        .kategoriListe {
            margin: 0px;
            padding: 0px;
            list-style-type: none;
        }

            .kategoriListe li a:hover {
                color: #006600;
            }

            .kategoriListe li a {
                display: block;
                text-decoration: none;
                margin: 0px;
                padding: 5px 5px 5px 20px;
                color: white;
            }


            .kategoriListe li:nth-child(odd) {
                background-color: #0094ff;
            }

        .urunListurun {
            background-color: red;
        }
    </style>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                <div style="width: 100%; height: 50px; float: left; margin-left: -17px">

                    <img style="height: 50px" src="Fotograflar/GunkarSogutmaJpg.PNG" />
                    <asp:Label ID="Label1" runat="server" Text="G Ü N K A R &nbsp;&nbsp; S O Ğ U T M A" Font-Bold="True" Font-Names="Arial Rounded MT Bold" Font-Size="XX-Large" ForeColor="#006600"></asp:Label>
                    <%--</marquee>--%>
                </div>

            </div>
        </div>
        </div>
    
        
    <nav class="navbar navbar-default" style="background-color: #0094ff">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="YoneticiPaneli.aspx">ANASAYFA</a></li>
                    <li><a href="YoneticiHakkimizda.aspx">HAKKIMIZDA</a></li>
                    <li><a href="Listeleme.aspx">ÜRÜNLER<span class="sr-only">(current)</span></a></li>
                    <li><a href="ProjeEkle.aspx">PROJELERİMİZ</a></li>
                </ul>
                
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="ReferansEkle.aspx">REFERANSLARIMIZ</a></li>
                    <li><a href="YoneticiServis.aspx"> TEKNİK SERVİS</a></li>
                    <li><a href="Yoneticiİletisim.aspx">İLETİŞİM</a></li>
                    <li><a href="Default.aspx">ÇIKIŞ</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
     <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">


                <center>
        <div id="slider-wrapper">
            <div class="slider">
                <a class="img-bir">
                    <img src="fotoimage/buzhane.jpg" />
                </a>
                <a class="img-iki">
                    <img src="fotoimage/kasapReyonu.jpg" />
                </a>
                <a class="img-uc">
                    <img src="fotoimage/morg.jpg" />
                </a>
                <a class="img-dort">
                    <img src="fotoimage/pastaborek.jpg" />
                </a>
                <a class="img-bes">
                    <img src="fotoimage/sutlukler.jpg" />
                </a>
            </div>
        </div>
            </div>
            </center>
        </div>
    </div>
<br />
<div style="margin-bottom: 110px" class="container">
            <div class="row">
            <div class="col-lg-4 col-xs-4 col-md-4">
                <a href="Listeleme.aspx">
                    <img style="width:480px;height:284px" src="Fotograflar/kasapReyonu.jpg" /></a>
                <a href="Listeleme.aspx">
                    <h3 style="text-align: center">KASAP REYONU</h3>
                </a>
            </div>
            <div class="col-lg-4 col-xs-4 col-md-4">
                <a href="Listeleme.aspx">
                    <img style="width:480px;height:284px" src="Fotograflar/pastaborek.jpg" /></a>
                <a href="Listeleme.aspx">
                    <h3 style="text-align: center">PASTANE REYONU</h3>
                </a>
            </div>
            <div class="col-lg-4 col-xs-4 col-md-4">
                <a href="Listeleme.aspx">
                    <img style="width:480px;height:284px" src="Fotograflar/zeytinReyonu.jpg" /></a>
                <a href="Listeleme.aspx">
                    <h3 style="text-align: center">ZEYTİNLİK REYONU</h3>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-xs-4 col-md-4">
                <a href="Listeleme.aspx">
                    <img style="width:480px;height:284px" src="Fotograflar/buzhane.jpg" /></a>
                <a href="Listeleme.aspx">
                    <h3 style="text-align: center">SOĞUK HAVA ODASI</h3>
                </a>
            </div>
            <div class="col-lg-4 col-xs-4 col-md-4">
                <a href="Listeleme.aspx">
                    <img style="width:480px;height:284px" src="Fotograflar/morg.jpg" /></a>
                <a href="Listeleme.aspx">
                    <h3 style="text-align: center">MORG REYONU</h3>
                </a>
            </div>
            <div class="col-lg-4 col-xs-4 col-md-4">
                <a href="Listeleme.aspx">
                    <img style="width:480px;height:284px" src="Images/dondurma3.jpeg" /></a>
                <a href="Listeleme.aspx">
                    <h3 style="text-align: center">DONDURMA REYONU</h3>
                </a>
            </div>
            
            </div>
            <div class="row">
            <div class="col-lg-4 col-xs-4 col-md-4">
                <a href="Listeleme.aspx">
                    <img style="width:480px;height:284px" src="Images/amortisorlu.jpg" /></a>
                <a href="Listeleme.aspx">
                    <h3 style="text-align: center">MARKET REYONU</h3>
                </a>
            </div>
            <div class="col-lg-4 col-xs-4 col-md-4">
                <a href="Listeleme.aspx">
                    <img style="width:480px;height:284px" src="Images/bufe.jpg" /></a>
                <a href="Listeleme.aspx">
                    <h3 style="text-align: center">BÜFE REYONU</h3>
                </a>
            </div>
            <div class="col-lg-4 col-xs-4 col-md-4">
                <a href="Listeleme.aspx">
                    <img style="width:480px;height:284px" src="Images/imalat2.jpg" /></a>
                <a href="Listeleme.aspx">
                    <h3 style="text-align: center">İMALAT REYONU</h3>
                </a>
            </div>
        </div>
            <div class="row">
            <div class="col-lg-4 col-xs-4 col-md-4">
                <a href="Listeleme.aspx">
                    <img style="width:480px;height:284px" src="Images/sogutmaekipmani2.JPG" /></a>
                <a href="Listeleme.aspx">
                    <h3 style="text-align: center">SOĞUTMA EKİPMANLARI</h3>
                </a>
            </div>
            <div class="col-lg-4 col-xs-4 col-md-4">
                <a href="Listeleme.aspx">
                    <img style="width:480px;height:284px" src="Images/recellik.jpg" /></a>
                <a href="Listeleme.aspx">
                    <h3 style="text-align: center">REÇELLİK REYONU</h3>
                </a>
            </div>
            <div class="col-lg-4 col-xs-4 col-md-4">
                <a href="Listeleme.aspx">
                    <img style="width:480px;height:284px" src="Images/soklama3.jpg" /></a>
                <a href="Listeleme.aspx">
                    <h3 style="text-align: center">ŞOKLAMA GRUPLARI</h3>
                </a>
            </div>
        </div>
            <div class="row">
            <div class="col-lg-4 col-xs-4 col-md-4">
                <a href="Listeleme.aspx">
                    <img style="width:480px;height:284px" src="Images/buzlusu2.jpg" /></a>
                <a href="Listeleme.aspx">
                    <h3 style="text-align: center">BUZLU SU ÜNİTELERİ</h3>
                </a>
            </div>
            <div class="col-lg-4 col-xs-4 col-md-4">
                <a href="Listeleme.aspx">
                    <img style="width:480px;height:284px" src="Images/havuzreyonu3.jpg" /></a>
                <a href="Listeleme.aspx">
                    <h3 style="text-align: center">HAVUZ REYONU</h3>
                </a>
            </div>
            <div class="col-lg-4 col-xs-4 col-md-4">
                <a href="Listeleme.aspx">
                    <img style="width:480px;height:284px" src="Images/wafflekumpir4.jpg" /></a>
                <a href="Listeleme.aspx">
                    <h3 style="text-align: center">WAFFLE/KUMPİR</h3>
                </a>
            </div>
        </div>
        </div>


    <footer style="position: absolute; bottom: 0; width: 100%; background-color: #0094ff; height: 80px">
        <div class="container">
            <div class="row" style="text-align: center;">
            </div>
        </div>
    </footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
