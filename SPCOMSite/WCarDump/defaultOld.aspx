<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage.Master" AutoEventWireup="true" CodeBehind="defaultOld.aspx.cs" Inherits="WCarDump._default" %>

<asp:Content ContentPlaceHolderID="nmpHEAD" runat="server">
    <title>SPCOM Автомобильная электроника</title>
</asp:Content>

<asp:Content ID="Content8" ContentPlaceHolderID="ContentMainPageHolder" runat="server">
  <style>
            .DText {
                width:400px;
                height:300px;
                text-align: justify;
                margin: 20px;
                float:left;
                border: solid 1px rgba(135, 135, 135, 0.11);
                border-radius: 8px;
                background-color:#EBF0F5;
                
                text-indent:20px;
              
            }
           .DText:hover ,.DText2:hover,.DText3:hover{
                box-shadow:0 0 5px;
           }


            .DPicture {
                /*border: solid 1px rgba(135, 135, 135, 0.41);*/
                float: left;
                margin: 8px;
                margin-left: 45px;
                border-radius: 5px;
                /*background-color:rgba(218, 223, 223, 0.41);*/
                /*padding:5px;
                 padding-left:0px;
                 padding: 5px;*/
                text-indent: initial;
                
            }
            .DPicture:hover, .DPicture2:hover{
                 box-shadow:0 0 10px;
            }
             .DText2 {
                width:250px;
                height:200px;
                text-align: justify;
                margin: 20px;
                float:left;
                border: solid 1px rgba(135, 135, 135, 0.11);
                border-radius: 5px;
                background-color:rgb(235, 240, 245);
                padding:5px;
            }
              .DTextSpisok {
                width:250px;
                height:200px;
                text-align: justify;
                margin: 20px;
                float:left;
                border: solid 1px rgba(135, 135, 135, 0.11);
                border-radius: 5px;
                background-color:rgb(235, 240, 245);
                padding:5px;
                text-decoration:none;
            }
              .DTextSpisok:hover{
                   box-shadow:0 0 10px;
              }
              .DTextSpisok a{
                  text-decoration:none;
                  color:#000000;
              }
              .DPicture2{
                 /*border: solid 1px rgba(135, 135, 135, 0.41);*/
                 float:left;
                 margin:10px;
                 margin-left:10px;
                 border-radius: 5px;
                 /*background-color:rgba(218, 223, 223, 0.41);*/
                 padding:5px;
                 text-indent: initial;
                 }

            .clear {
                 clear: both;
            }
            .DZagolovok {
                /*border: solid 1px rgba(135, 135, 135, 0.11);*/
                /*background-image: url('htmlServiceImages/phon 2.png');*/
                border-radius: 8px 8px 0px 0px;
                padding:6px;
                background-color:#70b0fb;
            }
            .DText3 {
                padding-top:6px;
                padding-bottom:6px;
                width:250px;
                /*height:70px;*/
                margin: 20px;
                text-align:center;
                font-size:x-large;
                /*font-weight: bolder;*/
                /*font-family: "Arial", Helvetica, sans-serif;*/
                float:left;
                /*border: solid 1px rgba(135, 135, 135, 0.11);*/
                border-radius: 5px;
                /*background-image: url('htmlServiceImages/PHON.png');*/
                 background-color:#70b0fb;
            }
            .DText3 a{
                
                text-decoration:none;
                  color:#FFF;
                  text-shadow: black 1px 0px, 
                      black 1px 1px, black 0px 1px, 
                      black -1px 1px, black -1px 0px, 
                      black -1px -1px, black 0px -1px,
                       black 1px -1px;
            }
        </style>
        <div class="DText">
            <div class="DZagolovok" > <strong> SP<span style="color:#213853;">COM</span></strong>  это современный и высокотехнологичный сервисный центр.</div>
            <img style="width:150px; height:auto; float:right;margin:15px;" src="htmlServiceImages/glav stranica.png" />
         <div style="margin:5px;">
                <div style="text-indent:20px;"> Уже более 10 лет мы занимаемся комплексным ремонтом автомобильной электроники.
            </div>
            <div style="text-indent:20px;">
                Наша компания готова предоставить Вам полный спектр услуг и обслужить самые современные автомобили.
                </div>
            <div style="text-indent:20px;">
                На протяжении всего времени мы используем только самые передовые технологии, и профессиональное оборудование. Мы отбираем лучших сотрудников.
                </div>
            </div>
         </div>
             
        <div class="DText">
           <a href="ShopProductsMainList.aspx" style="color:black;"><div class="DZagolovok">  <strong> SP<span style="color:#213853;">COM</span></strong>   занимается продажей оборудования для работы с автомобильной электроникой.</div>
                </a> 
            <div class="DPicture">
                <a href="ShopProductDetail.aspx?id=19#rhead"><img style=" width:110px;height:105px;" src="htmlServiceImages/ProgrPorshe.jpg" /></a>
            </div>
            <div class="DPicture">
                <a href="ShopProductDetail.aspx?id=20#rhead"><img style=" width:110px;height:105px;" src="htmlServiceImages/xwvOIWVm4F4.jpg" /></a>
            </div>
            <div class="DPicture">
                <a href="ShopProductDetail.aspx?id=21#rhead"><img style=" width:110px;height:105px;" src="htmlServiceImages/TOVAR MMC.jpg"/></a>
            </div>
            <div class="DPicture">
                <a href="ShopProductDetail.aspx?id=23#rhead"><img style=" width:110px;height:105px;" src="htmlServiceImages/TOVARKLUCHAUDI.png"/> </a>
            </div>
            </div> 


        <div class="DText3" style="margin-left:40px;">
           <a href="ShopServicesDetails.aspx?id=1">КОРРЕКЦИЯ ПРОБЕГА </a>
        </div>
            <div class="DText3">
                <a href="ShopServicesDetails.aspx?id=2">ДИАГНОСТИКА АВТО </a>
            </div>
            <div class="DText3">
                <a href="ShopServicesDetails.aspx?id=18">РАСКОДИРОВКА МАГНИТОЛ </a>
            </div>
            
              
        
        <div class="DTextSpisok">
            <strong> Мы предлагаем:</strong>
                <ul>
                    <li>
                        <a href="ShopServicesDetails.aspx?id=2"> Диагностику автомобиля </a>
                    </li>
                    <li>
                        <a href="ShopServicesDetails.aspx?id=1"> Коррекцию пробега </a>
                    </li>
                    <li>
                        <a href="ShopServicesDetails.aspx?id=3">Ремонт блоков AirBag </a>
                    </li>
                    <li>
                        <a href="ShopServicesDetails.aspx?id=7"> Ремонт автоэлектроники </a>
                    </li>
                    <li>
                        <a href="ShopServicesDetails.aspx?id=11"> Чип-тюнинг</a>
                      </li>
                    <li>
                        <a href="ShopServicesDetails.aspx?id=5"> Восстановление погасших сегментов ЖКИ</a>
                    </li>
                    <li>
                        <a href="ShopServicesDetails.aspx?id=10"> Уникальную защиту и многое другое </a>
                   </li>
                </ul>


</div>
        <div class="DText2">
            <a href="contacts.aspx#rhead"><img src="htmlServiceImages/mapGSpsd.png"/></a>
        </div>
        <div class="DText2">
            <div style="text-align:center"> <strong> Участие в международных выставках</strong></div>
                <div class="DPicture2">
                    <img style=" width:90px;height:90px;" src="htmlServiceImages/Darmar.png" />
                </div>
                <div class="DPicture2">
                    <img style=" width:90px;height:90px;" src="htmlServiceImages/interkey150.png" />
                </div>

            </div>
        
</asp:Content>
