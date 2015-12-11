<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPageShopServices.master" AutoEventWireup="true" CodeBehind="ShopServicesDetails.aspx.cs" Inherits="WCarDump.ShopServicesDetails" %>
<%@  Register src="~/SelectModelAuto.ascx" TagName="SelectModelAuto" TagPrefix="SelectModelAuto" %>
<%@  Register src="~/ModalW/UCModalWindows.ascx" TagName="UCModalWindows" TagPrefix="UCModalWindows" %>
<asp:Content runat="server" ContentPlaceHolderID="servicesCPHHead">
    <title> <%= this.LoadName() %>  в Киеве  | SPCOM (044) 228-12-17 </title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphServices" runat="server">

 <style>
     .divALLText{
         text-align:justify;
         background-color:rgba(255, 255, 255, 0.80);
         width:731px;
         float:left;
         border: solid 1px rgba(103, 103, 103, 0.39);
         padding:10px;
     }
     .divBlokPrice{
         text-align:center;
         /*float:left;*/
         color:green;
         /*width:120px;*/
         font-size: xx-large;
         background-color:rgba(255, 255, 255, 0.90);
         border: solid 1px rgba(103, 103, 103, 0.39);
       
       
         margin-bottom:20px;
     }

     

     .DPrice{
        width: 80px;
        height: 20px;
        color: #50b752;
        font-weight: bold;
        text-shadow: 1px 1px 2px rgba(247, 247, 247, 0.57);
        background-color: #FFF3B5;
        border: solid 1px #ad5d05;
        border-radius: 2px;
        padding: 4px;
        font-size:17px;
        margin-left:15px;
        margin-top:5px;
        margin-bottom:5px;
     }
     .DButtonBuy button{
        width: 105px;
        height: 34px;
        background: url(css/images/buttonBuyGreen.png) no-repeat;
        border: none;
        cursor:pointer;
     }
     .DButtonBuy button:hover{
         box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.75);
     }
     .DSummary{
         font-size:17px;
         color:green;
     }
 </style>

  

    <style>
        .InfoBar{
           width:400px;
           margin:0 auto;
           margin-bottom:10px;
           padding:10px;
           background-color:#fefefe;
        }


        .polygone{
            background-color:#f7f6f6;

        }
        .rectangle{
            background-color:#168eca;
        }
        .rectangle:hover{
             background-color:#0f4a67;
             box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.5);
        }

        .InfoBar button{
            height:42px;
            border:none;
            border-radius:3px;
            margin-left:10px;
            font-size:20px;
            color:white;
            font-weight:bolder;
            font-family: "Arial", Helvetica, sans-serif;
        }
        .Konvertk{
            width:17px;
            height:11px;
            background: url(css/images/smallimages.png) no-repeat;
            float:left;
            margin-top:4px;
            margin-right:4px;
        }

        .Korzinka{
            width:25px;
            height:17px;
            background: url(css/images/smallimages.png) no-repeat;
            background-position-x:-17px;
            float:left;
            margin-top:4px;
            margin-right:4px;
        }
        .InfoBar .Price{
            height:26px;
            /*width:136px;*/
            color: #323232;
            border:solid 1px #000000;
            float:left;
            margin:0px; padding: 8px;
            text-align:center;
            text-shadow: 0 1px 0 #fff;
            font-weight:bolder;
            font-family: "Arial", Helvetica, sans-serif;
            font-size:20px;
            
        }
        .clear{
            height:0px;
        }
    </style>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<div style="text-align:center;">
  
  <h1 style="margin:0px;"><%= this.LoadName() %></h1>  
        </div>
    <div class="InfoBar">  
        
        <p class="Price polygone">цена <%= this.LoadPrice() %></p>
        <button class="rectangle" onclick="ShowWindow('modal-service-question'); return false;" style="margin-left:40px;">
            <div class="Konvertk"></div>
             Уточнить цену
        </button>
     <%--   <button class="rectangle">
             <div class="Korzinka"></div>
            Заказать услугу
        </button>--%>
        <div style="clear:both" ></div>
        
    </div>
    <div class="divALLText">
        <%=  this.LoadDetails() %>
     </div> 
    <UCModalWindows:UCModalWindows runat="server" id="UCModalWindows" />

      <div  style="margin:0 auto; align-content:center; float:right;">
    <script type="text/javascript">(function() {
  if (window.pluso)if (typeof window.pluso.start == "function") return;
  if (window.ifpluso==undefined) { window.ifpluso = 1;
    var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
    s.type = 'text/javascript'; s.charset='UTF-8'; s.async = true;
    s.src = ('https:' == window.location.protocol ? 'https' : 'http')  + '://share.pluso.ru/pluso-like.js';
    var h=d[g]('body')[0];
    h.appendChild(s);
  }})();</script>
<div  class="pluso" data-background="transparent" data-options="big,square,line,horizontal,nocounter,theme=02" data-services="vkontakte,odnoklassniki,facebook,twitter,google,moimir,email,print"></div>
</div>
</asp:Content>
