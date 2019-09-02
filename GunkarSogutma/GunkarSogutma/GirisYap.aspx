<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GirisYap.aspx.cs" Inherits="GunkarSogutma.GirisYap" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>LOGİN</title>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        #Button1:hover{
            background-color:#b7fe05;
            font-size:120%;
        }
         #Button2:hover{
            background-color:#b7fe05;
            font-size:120%;
        }
         #Button1{
             width:150px;
             height:27px;
         }
         #Button2{
             width:150px;
             height:27px;
         }
    </style>
</head>
<body style="background-image: url('Fotograflar\\buz.jpg'); background-size: cover">

    <div class=" panel-img">
        <img src="Images/Panel.png" alt="" />
    </div>
    <form action="" method="post" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-xs-4" style="margin-top: 170px; margin-left: 300px">
                    <asp:TextBox ID="TextBox1" CssClass="txtKulAdi" runat="server" placeholder="KULLANICI ADI GİRİNİZ....."></asp:TextBox><br />
                    <br />
                    <asp:TextBox ID="TextBox2" CssClass="txtSifre" runat="server" placeholder="ŞİFRE GİRİNİZ....." OnSendingMail="TextBox2_SendingMail" TextMode="Password"></asp:TextBox><br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text=" YÖNETİCİ GİRİŞİ" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="MÜŞTERİ GİRİŞİ" OnClick="Button2_Click" /><br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#00CC00" Visible="False"></asp:Label>

                </div>
            </div>
        </div>



        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
