<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPageShopServices.master" AutoEventWireup="true" CodeBehind="ShopServicesMainList.aspx.cs" Inherits="WCarDump.ShopServicesMainList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphServices" runat="server">
    
    <style>
  #f1_container {
        position: relative;
        margin: 10px auto;
        width:150px;
        height:180px;
        z-index: 1;
        float: left;
        border:solid 1px rgba(11, 15, 25, 0.74);
        padding:5px;
        background-color:white;
        margin:10px;
        
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
        color: white;
        
        overflow:hidden;
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
      .Price{
            height:26px;
            color: #323232;
            border:solid 1px #000000;
            margin:0px; padding: 8px;
            text-align:center;
            text-shadow: 0 1px 0 #fff;
            font-weight:bolder;
            font-family: "Arial", Helvetica, sans-serif;
            font-size:25px;
            
        }
      .Tback{
          margin-bottom:10px;
          font-size:20px;
          text-align:center;
          color:black;
      }
      .Detal{
          margin-top:15px;
          padding:8px;
            background-color:#168eca;
      }
    </style>
  
 
     <asp:Repeater runat="server" ID="RepeaterServices">
        <ItemTemplate>
         <a href="ShopServicesDetails.aspx?id=<%# Eval("Id") %>">
            <div id="f1_container">
                <div id="f1_card" class="shadow">
                    <div class="front face"> 
                       <h4><%# Eval("Name") %></h4>
                       <asp:PlaceHolder runat="server" ID="plhdrImage"> </asp:PlaceHolder>
                    </div>
                    <div class="back face ">  
                            <div class="Tback"><%# Eval("Name") %></div>
                         <p class=" Price">от <%# Eval("PriceInt") %></p>    
                          <div class="Detal"> <%--<a href="ShopServicesDetails.aspx?id=<%# Eval("Id") %>">--%>Детальнее<%--</a>--%></div><
                    </div>
                </div>
            </div>
          </a>
        </ItemTemplate>
    </asp:Repeater>





</asp:Content>
