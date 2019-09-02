<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Servis.aspx.cs" Inherits="GunkarSogutma.Servis" %>

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
    <title>SERVİS</title>
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
                    <asp:Label ID="Label2" runat="server" Text="G Ü N K A R &nbsp;&nbsp; S O Ğ U T M A" Font-Bold="True" Font-Names="Arial Rounded MT Bold" Font-Size="XX-Large" ForeColor="#006600"></asp:Label>
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
                    <li><a href="Default.aspx">ANASAYFA</a></li>
                    <li><a href="Hakkimizda.aspx">HAKKIMIZDA</a></li>
                    <li><a href="Urunler.aspx">ÜRÜNLER<span class="sr-only">(current)</span></a></li>
                    <li><a href="Projelerimiz.aspx">PROJELERİMİZ</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Referanslarimiz.aspx">REFERANSLARIMIZ</a></li>
                    <li><a href="Servis.aspx">TEKNİK SERVİS</a></li>
                    <li><a href="İletisim.aspx">İLETİŞİM</a></li>
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
        </div>
    </div>
    </center>
    <br />
    <div style="margin-bottom: 110px" class="container">
        <div class="row">
            <center><div class="col-lg-12 col-xs-12 col-md-12">
                <form action="" runat="server">
            <fieldset>
                <legend><b style="color:white">TEKNİK SERVİS</b></legend>
                <b style="color:white">Firma:</b><br />
                <asp:TextBox ID="txtFirma" runat="server" Width="310px"></asp:TextBox><br />
                <b style="color:white">İlgili Kişi:</b><br />
                <asp:TextBox ID="txtİlgiliKisi" runat="server" Width="310px"></asp:TextBox><br />
                <b style="color:white">Telefon:</b><br />
                <asp:TextBox ID="txtTelefon" runat="server" Width="310px"></asp:TextBox><br />
                <b style="color:white">E-Posta:</b><br />
                <asp:TextBox ID="txtEposta" runat="server" Width="310px"></asp:TextBox><br />
                 <b style="color:white">Konu:</b><br />
                <asp:TextBox ID="txtKonu" runat="server" Width="310px"></asp:TextBox><br />
                <b style="color:white">İçerik:</b><br />
                <asp:TextBox ID="txtİcerik" runat="server" Width="310px" TextMode="MultiLine"></asp:TextBox><br />
                <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click"></asp:Button>
               <asp:Label ID="Label1" runat="server"></asp:Label>
            </fieldset>
        </form>
            </div></center>
        </div>
    </div>
    <footer style="position: absolute; bottom: 0; width: 100%; background-color: #0094ff; height: 80px">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-xs-12 col-md-12">

                    <table border="0" style="margin: auto; color: white">
                        <tr>
                            <td>ADRES:</td>
                            <td>Denizköşkler Mah. Zafer Caddesi Şehit Kom. Er Murat Avuç Sokak No:11 Avcılar/İstanbul</td>
                        </tr>
                        <tr>
                            <td>TELEFON NUMARASI:</td>
                            <td>0532 615  00 08</td>
                        </tr>
                        <tr>
                            <td>E-MAİL:</td>
                            <td>gunkarsogutma@gmail.com </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>

