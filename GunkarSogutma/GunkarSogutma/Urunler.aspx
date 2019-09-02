<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="GunkarSogutma.Urunler" %>
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
    

       
    
<nav class="navbar navbar-default" style="background-color:#0094ff">
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
           <li> <a href="Default.aspx">ANASAYFA</a></li>
          <li><a href="Hakkimizda.aspx">HAKKIMIZDA</a></li>
        <li><a href="Urunler.aspx">ÜRÜNLER<span class="sr-only">(current)</span></a></li>
        <li><a href="Projelerimiz.aspx">PROJELERİMİZ</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
          <li><a href="Referanslarimiz.aspx">REFERANSLARIMIZ</a></li>
          <li><a href="Servis.aspx">TEKNİK SERVİS</a></li>
        <li><a href="İletisim.aspx">İLETİŞİM</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
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


      <div class="container" style="margin-bottom:110px;float:left">
          <div class="row">
              <div class="col-md-4 col-lg-4 col-xs-4 col-sm-4">
                  <div style="float:left;margin-right:70px">

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GunkarSogutmaConnectionString %>" SelectCommand="SELECT [kategoriId], [KategoriAdi] FROM [GKategoriler]"></asp:SqlDataSource>
            <br />
            <ul class="kategoriListe">

            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <li>
                        
                        <a  href='<%# "Urunler.aspx?urun="+Eval("kategoriId") %>''>
                       
                            <%# Eval("KategoriAdi") %>

                        </a>
                    </li>
                </ItemTemplate>
            </asp:ListView>
            </ul>
        </div>
                           </div>
              <div class="col-md-6 col-lg-6 col-xs-6 col-sm-6">
                   <form  id="form1" runat="server">
                      
                   <center>
    <div style="float:left">

                
     <asp:Repeater  ID="Repeater1"  runat="server" >
         <ItemTemplate>   


                    
<%--        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
            
            <ItemTemplate>--%>
                  <div style="float:left">
                      <tr><td>        
                <center><h3 style="margin-left:10px"><%# Eval("UrunAdi") %></h3></center>
                <asp:Image ID="Image1" runat="server" Height="180px" Width="180px" ImageUrl='<%#Eval("UrunResimYolu") %>'></asp:Image>&nbsp;
                          </td></tr>
                   </div>
             
<%--            </ItemTemplate>
        </asp:FormView>--%>
             
             </ItemTemplate>
                       </asp:Repeater>
                    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GunkarSogutmaConnectionString2 %>" SelectCommand="SELECT [UrunResimYolu],[UrunAdi] FROM [GGUrunler] WHERE ([kategoriId] = @AId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="AId" QueryStringField="urun" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
        
            </center
                       
                       </form>
                                           </div>
          </div>
      </div>
                  <%--<asp:Repeater ID="Repeater1" runat="server">
                      <ItemTemplate>
                         <div style="float:left;margin-bottom:7px"> <asp:Image ID="Image1" runat="server" Width="200px" Height="200px" runat="server" ImageUrl='<%#Eval("UrunResimYolu") %>' />
                     <div style="float:left;width:180px;height:180px;text-align:center;line-height:150px;margin-left:-7px;margin-right:-7px"><span><%#Eval("UrunAdi") %></span></div></div>
                           </ItemTemplate>
                  </asp:Repeater>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GunkarSogutmaConnectionString7 %>" SelectCommand="SELECT [UrunResimYolu],[UrunAdi] FROM [GUrunler]"></asp:SqlDataSource>--%>
     

     <footer style="position:absolute;bottom:0;width:100%;background-color:#0094ff;height:80px">
        <div class="container">
            <div class="row" style="text-align:center;">
                </div>
            </div>
         
           </footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
