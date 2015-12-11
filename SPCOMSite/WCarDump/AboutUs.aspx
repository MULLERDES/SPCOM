<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage.master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="WCarDump.partners" %>
<asp:Content ID="Content1" ContentPlaceHolderID="nmpHEAD" runat="server">
     <meta name="keywords" content="SPcom, сервисный центр, ремонт электроники, оборудование для ремонта " />
    <meta name="description" content=" SPcom - это высокотехнологичный сервисный центр, который занимается ремонтом автомобильной электроники" />
    <title>О компании СПКОМ | Киев Дарница </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentMainPageHolder" runat="server">
      <style>
            .divOpis {
                width: 100%;
                text-align: justify;
                text-indent: 20px;
                margin:10px;

            }

            .divPicBlok {
                float: left;
                margin: 30px;
            }
            .divPicBlok1 {
                float: left;
                margin: 30px;
                  }


                .divPicBlok img {
                    height: 100px;
                    width: auto;
                }
                .Compani{
                    width:100%
                }
                .divPIC{
                    width:500px;
                    margin:0 auto;
                }
        </style>
    <div class="Compani">
        <div class="divOpis">
        «SPCOM» — это сервисный центр который уже более 10 лет занимается исключительно комплексным <a href="ShopServicesMainList.aspx">ремонтом</a> автомобильной электроники, компьютерной диагностикой, ремонтом электронных спидометров, систем SRS, программированием ЧИП-Ключей и продажей диагностического оборудования. 
        </div>
        <div class="divOpis">
            Также, мы занимаемся поставкой и продажей высококачественного<a href="ShopProductsMainList.aspx#rhead"> оборудования </a>по работе с автомобилями и автомобильной электроникой.  
        </div>
        <div class="divOpis">
             Сегодня, все чаще в современных автомобилях используются сложные электронные инновации, что дает стимул нашей компании постоянно совершенствоваться и оттачивать свое мастерство на самой новейшей авто и мото технике. Наши нестандартные, индивидуальные подходы к работе могут удивить многие станции обслуживания автомобилей, так как мы работаем быстрее и качественней, по максимуму избегая дорогостоящих замен (что зачастую предлагает большинство СТО).   

        </div>
        <div class="divOpis">
            Мы никода не стоим на месте, на протяжении всего времени, компания совершенствует свои технологии, подбирает высокопрофессиональный персонал, внедряет использование самых передовых технологий. 
        </div>
        <div class="divOpis">
            Компания SPCOM ежегодно принимает участие в международных выставках
        </div>
  <div class="divPIC">
         <div class="divPicBlok1">
            <img src="htmlServiceImages/Darmar.png" />
        </div>
        <div class="divPicBlok1">
            <img src="htmlServiceImages/interkey150.png" />
        </div>
</div>

        </div>

        <div style="clear:both" class="divOpis">
            <a href="default.aspx"> «SPCOM»</a> — сотрудничает со многими компаниями, начиная от юридических которые сопровождают нас при оформлении договоров и контролируют качество закупленного оборудования. Заканчивая крупными поставщиками современного диагностического оборудования.

            <p>Среди них являются такие компании как:</p>
        </div>
        <div class="divPicBlok">
            <a href="http://www.legal-collegium.com.ua/"> Юридична регіональна колегія</a>
            <br />
            <a href="http://www.legal-collegium.com.ua/"> <img src="htmlServiceImages/legal_collegium.png" /></a>
        </div>
        <div class="divPicBlok">
            <a href="http://www.mmcflash.ru/"> Оборудование для Чип-тюнинга </a>
            <br />
            <a href="http://www.mmcflash.ru/"> <img src="htmlServiceImages/logo.png" /></a>
        </div>
        <div class="divPicBlok">
            <a href="http://www.mkservice.kiev.ua/">Служба вскрытия - открытия замков </a>
            <br />
            <a href="http://www.mkservice.kiev.ua/"> <img src="htmlServiceImages/logos.png" /></a>
        </div>
       

  
</asp:Content>
