<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="WCarDump.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta name="keywords" content=" Выставка, устройство Hitag3, программатор ключей, интернет магазин " />
    <meta name="description" content=" Компания принимает участие в международных выставках, занимается разработкой оборудования, продажа Hitag 3 " />
    <title> Новости сервисного центра SPCOM</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderForNestedMasterPage" runat="server">
    <style>
          
      .divALL {
       width: 100%;
       height:auto;
       background-image:url(css/images/news.png);
      
                 }
   
      .divNews{
          width:95%;
          height:auto;
          margin-bottom:30px;
          margin-top:20px;
      }

      .divTextNews{
      width:95%;
       margin:10px;
        text-align: justify;
        text-indent: 20px;
         margin-left:30px;
         margin-right:20px;
         margin-top:10px;
      }
      .divZag{
       font-size:15px;
       font-weight: 600;
       color:#1a155b;
        width:95%;
       margin:10px;
       border-bottom:groove;
       border-color:#130991;
       text-align: justify;
        text-indent: 20px;
         margin-left:30px;
         margin-right:20px;
         margin-top:10px;
         padding:8px;
      }
      
      .Bborder{
     padding: 7px;
    background-color: #1a155b;
    border: none;
    font-size: 15px;
    font-family: Arial;
    font-weight: bold;
    color:white;
      }
      .divPic{
      float:right;
       margin-left:10px
      }

       </style>
 <div class="divALL">
     <div class="divNews">     
    <div class="divZag">
        <label class="Bborder"> 1</label>
        Вся компания  SPcom готовится к очень важному событию, которое состоится 17 октября 2015 года. Нам предстоит участие в международной выставке 
   "interKeyService 2015 Poland" 
   </div>  
       
  <div class="divTextNews">
         <a href="ShopProductDetail.aspx?id=19">  <div class="divPic"> <img style="width:200px; height:auto;" src="htmlServiceImages/_editor_keys_enl.png" alt="Программатор ключей"/></div></a>
         Нашей компанией на данной выставке будет представлен уникальный прибор, разработанный специалистами SPcom. 
         Программатор новейшего поколения, предназначенный для работы с новым поколением транспондеров Hitag3(HitagPRO,PCF7953), который имеет функцию проверки и конфигурирования 16-байтного крипто пароля.
 </div> 
 <div class="divTextNews">
         Устройство <a href="ShopProductDetail.aspx?id=19">Hitag 3</a> Вы уже сейчас можете приобрести в нашем <a href="ShopProductsMainList.aspx"> магазине</a>, в категории <a href="ShopProductsMainList.aspx?id=12"> программаторы</a>.
</div>

   </div>

     <div class="divNews">     
    <div class="divZag">
        <label class="Bborder"> 2</label>
       Как Вы уже сами успели заметить, наша компания обновила свой сайт. Неизменными остались только наш логотип и сервис!
    

    </div>  
       
  <div class="divTextNews"> 
     <a href="ShopProductsMainList.aspx"> <img class="divPic"src="htmlServiceImages/logotip.png"  alt=" Логотип SPcom "/> </a>
        Изменения произошли не только внешне. Наш сайт полностью видоизменился и внутренне. 
         Теперь Вы сможете с легкостью ознакомиться со всеми видами <a href="ShopServicesMainList.aspx"> услуг</a>. В он-лайн режиме получить ответы на все волнующие Вас вопросы.

  </div> 
         <div class="divTextNews">Также на нашем сайте открылся <a href="ShopProductsMainList.aspx"> интернет-магазин</a>, в котором Вы можете приобрести высококачественное оборудование по доступным ценам. 
             </div>
         
 
 
   </div>

 </div>

</asp:Content>
