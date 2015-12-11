<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPageShopProducts.Master" AutoEventWireup="true" CodeBehind="ShopPromo.aspx.cs" Inherits="WCarDump.ShopPromo" %>

<asp:Content ContentPlaceHolderID="productCPHHead" runat="server">
    <title>Намотка спидометра. Дубликат чип ключа. Киев.</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphProducts" runat="server">
  <style>  #f1_container {
        position: relative;
        margin: 10px auto;
        width:300px;
        height:150px;
        z-index: 1;
        float: left;
        /*border:solid 1px rgba(11, 15, 25, 0.74);*/
        /*padding:5px;*/
        background-color:white;
        margin:20px;
         /*box-shadow: -5px 5px 5px #b9a0f0;*/
         box-shadow: 4px 5px 5px 1px #dae2fa;
    }
    #f1_container {
 /*       perspective: 1000;*/
    }
    #f1_card {
        width: 100%;
        height: 100%;
        transform-style: preserve-3d;
        transition: all 0.2s linear;
    }
    #f1_container:hover #f1_card {
        transform: rotateX(180deg);
        

        /* box-shadow: -5px 5px 5px #aaa;*/
    }
    .face {
        position: absolute;
        width: 100%;
        height: 100%;
        backface-visibility: hidden;
    }
    .face.back {
        display: block;
        transform: rotateX(180deg);
        box-sizing: border-box;
        padding: 10px;
        color:black;
        text-align:center;
        overflow:hidden;
        background-color:#ebeeef;
    }

    .face h4{
        margin:0px;
        padding:0px;
        color:black;
        font-size:14px;
    }
    .face p{
        /*font-size:14px;*/
        color:#110808;
        text-align:left;
    }
    .DFront{
        width:100%

    }
    .Detal{
          margin-top:15px;
          color:black;
          padding:8px;
          background-color:#168eca;
      }
    
    </style>

         <%--<a href="">--%>
            <div id="f1_container">
                <div id="f1_card" class="shadow">
                    <div class="front face"> 
                       <div>
                           <img src="htmlServiceImages/PgogrammerShop.png" />
                       </div>
                    </div>
                    <div class="back face" >  
                          <strong> ПРОГРАММАТОРЫ HITAG </strong>
                        <br /> уникальные приборы
                        <br /><strong> MMC FLASH</strong> 
                        <div class="Detal"> <a href="ShopProductsMainList.aspx?id=12"<%--<%# Eval("Id") %>"--%>>Детальнее</a></div>
                    </div>
                </div>
            </div>
         <%-- </a>--%>
   
   <%--  <a href="">--%>
            <div id="f1_container">
                <div id="f1_card" class="shadow">
                    <div class="front face"> 
                       <div>
                           <img src="htmlServiceImages/DIAGNSHOP.png" />
                       </div>
                    </div>
                    <div class="back face">  
                          <strong> СКАНЕР АДАПТЕР</strong> 
                        <br /> и многое другое
                        <div class="Detal"> <a href="ShopProductsMainList.aspx?id=14"<%--<%# Eval("Id") %>"--%>>Детальнее</a></div>
                    </div>
                </div>
            </div>
       <%--   </a>--%>
   <%--  <a href="">--%>
            <div id="f1_container">
                <div id="f1_card" class="shadow">
                    <div class="front face"> 
                       <div>
                           <img src="htmlServiceImages/KEYSHOP.png" />
                       </div>
                    </div>
                    <div class="back face ">  
                         <strong> АВТОМОБИЛЬНЫЕ КЛЮЧИ</strong>
                        <br /> любой автомобиль
                         <br /> индивидуальный подход
                         <div class="Detal"> <a href="ShopProductsMainList.aspx?id=15"<%--<%# Eval("Id") %>"--%>>Детальнее</a></div>
                    </div>
                </div>
            </div>
    <%--      </a>
     <a href="">--%>
            <div id="f1_container">
                <div id="f1_card" class="shadow">
                    <div class="front face"> 
                       <div>
                           <img src="htmlServiceImages/KORREKCIYSHOP.png" />
                       </div>
                    </div>
                    <div class="back face ">  
                         <strong> МОТАЛКИ ПРОБЕГА</strong>
                       <br /> доступная цена
                        <br /> протоста использования
                         <div class="Detal"> <a href="ShopProductsMainList.aspx?id=16"<%--<%# Eval("Id") %>"--%>>Детальнее</a></div>
                    </div>
                </div>
            </div>
         <%-- </a>--%>


</asp:Content>
