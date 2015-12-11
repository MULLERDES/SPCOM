<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage.master" AutoEventWireup="true" CodeBehind="contacts.aspx.cs" Inherits="WCarDump.contacts" %>
<asp:Content runat="server" ContentPlaceHolderID="nmpHEAD">
    <title>SPCOM контакты</title>
     <meta name="keywords" content="SPcom, сервисный центр, Киев, Дарницкий район, Дарница, улица Уютная" />
    <meta name="description" content=" СТО SPcom -находится в городе Киеве в Дарницком районе, на улице Уютной 7Б" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentMainPageHolder" runat="server">


       <link href="lightbox/css/lightbox.css" rel="stylesheet" />
    <script src="lightbox/js/lightbox.js"></script>

<style>
    .divZagolovok{
        font-weight: bold;
        margin:15px;
    }
    .divText{
        text-align:justify;
        margin:15px;
    }
    .divBloki{
        width:40%;
        height:auto;
        float:left;
        margin-left:30px;
    }
</style>

<div>
    <div class="divBloki">
    <a name="rhead"></a>
    <div style="float:left; width:100%;">
         <div class="divZagolovok">
             Адрес
         </div>
        <div class="divText">
            02081 г. Киев ул. Уютная 7Б (заезд с улицы Ревуцкого 3)
            <br> (Дарницкий район)
        </div>
        <div class="divText">
           <strong>График работы:</strong>  понедельник — суббота с 10:00 до 19:00
         </div>
        <div class="divZagolovok">
           Телефоны
        </div>
        <div class="divText">
            (044) 228-12-17 
            <br> (068) 122 80 08
            <br> (050) 428 80 08
        </div>   
    </div>
 </div>
    <div class="divBloki">
        <div class="divText">
            <strong>E-mail:</strong> office@spidometr.com.ua
            <br><strong>E-mail:</strong>spcomua@mail.ru
        </div>
       <div class="divZagolovok">
           QR-код
       </div> 
       <div>
           <img src="css/siteimage/qr-code.gif">
       </div> 
    </div>
<div>
  <iframe src="https://www.google.ru/maps/d/embed?mid=zSaaw3IREiQE.k02Wq9boTU7Y" width="100%" height="300"></iframe>
</div>

    <div class="divZagolovok">
        Фото заезда в Гаражный кооператив: 
   </div>
    <div>
          <a href="css/siteimage/snimok.jpg" data-lightbox="image-1" data-title="My caption">
                 
        <img src="css/siteimage/snimok.jpg"; style="width:100%; height:auto;" >
              </a>
   </div>
    <div class="divZagolovok">
        Проехав 400м вы увидите здание:
   </div>
    <div>
        <img src="css/images/photobox.jpg"; style="width:100%; height:auto;" >
   </div>
</div>
</asp:Content>
