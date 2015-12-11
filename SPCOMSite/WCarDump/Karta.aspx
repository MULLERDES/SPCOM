<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage.Master" AutoEventWireup="true" CodeBehind="Karta.aspx.cs" Inherits="WCarDump.Karta" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentMainPageHolder" runat="server">
      <style>
        .divList{
            text-align:justify;
            margin-left:25px;
        }
    </style>


    <div class="divList"> 
<ul>
    <li> <a href="default.aspx">ГЛАВНАЯ СТРАНИЦА (СТО SPCOM: самые популярные услуги)</a></li>
    <li><a href="ShopServicesMainList.aspx">
        УСЛУГИ</a>
        <ul>
            <li><a href="ShopServicesDetails.aspx?id=1">Коррекция пробега: смотка и намотка показаний спидометра </a> </li>
            <li><a href="ShopServicesDetails.aspx?id=2">Диагностика автомобиля: компьютерная диагностика с помощью высококлассного оборудования</a></li>
            <li><a href="ShopServicesDetails.aspx?id=3">Ремонт блоков SRS Airbag - быстрое восстановление правильной работы системы SRS. </a></li>
            <li><a href="ShopServicesDetails.aspx?id=5">Ремонт битых пикселей на экранах BMW - восстановление погасших сегментов на экранах ЖКИ</a></li>
            <li><a href="ShopServicesDetails.aspx?id=6">Передел Американских авто на Европейские стандарты: мили в километры, галлоны в литры, фарингейты в цельсий</a></li>
            <li><a href="ShopServicesDetails.aspx?id=7">Ремонт автомобильной электроники:система зажигания, система запуска, электронное управление топливо подачи</a></li>
            <li><a href="ShopServicesDetails.aspx?id=8">Изготовление Чип-ключей: имея дубликат, владелец автомобиля сможет оставлять весь набор ключей при себе.</a></li>
            <li><a href="ShopServicesDetails.aspx?id=9">Устранения ошиби StartError - на автомобилях Mersedes Vito и Sprinter чаще всего возникает при выходе из строя штатного иммобилайзера</a></li>
            <li><a href="ShopServicesDetails.aspx?id=10">Противоугонная система Krimistop - новейшая система защиты и идентификации имущества</a></li>
            <li><a href="ShopServicesDetails.aspx?id=11">Программирование автомобиля - чип-тюнинг.</a> </li>
        </ul>
    </li>
    <li><a href="BlogMainList.aspx">БЛОГ (Наши работы)</a></li>
    <li><a href="404.html">
        МАГАЗИН</a>
         <ul>
           <li> <a href="ShopProductsMainList.aspx?id=12"> Программаторы </a> </li>
           <li> <a href="ShopProductsMainList.aspx?id=14"> Диагностическое оборудование </a> </li>
           <li> <a href="ShopProductsMainList.aspx?id=15"> Автоключи </a> </li>
           <li> <a href="ShopProductsMainList.aspx?id=16"> Коррекция пробега </a> </li>
       </ul>
    </li>
    <li><a href="faq.aspx">ЧАСТО ЗАДАВАЕМЫЕ ВОПРОСЫ (Возможна ли скрутка пробега на конкретном автомобиле? Вопросы конфиденциальности?)</a></li>
    <li><a href="partners.aspx">ПАРТНЕРЫ </a></li>
    <li><a href="contacts.aspx">КОНТАКТЫ</a></li>
    
</ul>
  </div>   
</asp:Content>
