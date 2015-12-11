<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPageShopProducts.master" AutoEventWireup="true" CodeBehind="ShopProductsMainList.aspx.cs" Inherits="WCarDump.ShopProductsMainList" %>
<asp:Content ContentPlaceHolderID="productCPHHead" runat="server">
    <title><%= this.CATNAME %>  Купить в Киеве</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphProducts" runat="server">

    <style>
        .divShopALLProduct{
   
            margin:10px;
            border-radius:4px;

        }
        .divShopProduct{
         float:left;
         width:170px;
         height:350px;
         background-color:#F3F6F9;
         margin:5px;
         border-radius: 4px;
         border: solid 1px #cbcbcb;
        }
        .divShopProduct:hover {
             box-shadow: 0px 0px 25px 1px rgba(0,0,0,0.5);

        }
        
        .divShopProduct .Header {
            text-align:center;
            margin-top:10px;
        }
         .divShopProduct .Header a{
            text-decoration:none;
        }

        .MiddleDescription{
            display:none;
            width:150px;
            margin:auto;
            font-size:11px;
        }
        .divShopProduct .ShortDescription {
            text-align:initial;
           
            overflow: hidden;
            /*white-space: nowrap;*/
            font-size:13px;
            width:150px;
            margin:auto;
        }
        .divShopProduct .pictureBox{
            width:150px;
            height:190px;
            margin:auto;
            margin-top:10px;
            border:solid 1px rgba(235, 235, 235, 0.82);
            border-radius:3px;
            
        }
        .picturePreview{
             width:150px;
            height:190px;
        }
     
         .divShopProduct pre{
             margin:0px;
         }

         .divShopProduct .Price{
            background-color:#f7f6f6;
            height:26px;
            width:136px;
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

       
        .visaMaster{
                float: right;
                width: 30px;
                height: auto;
                margin: 8px;
                margin-right: 20px;
        }
    </style>
    <link href="css/styleShop.css" rel="stylesheet" />
 <div class="divShopALLProduct" >  
         <a name="rhead"></a>
       <asp:Repeater runat="server" ID="repAllProducts">
           <ItemTemplate>
                 <a href="ShopProductDetail.aspx?id=<%# Eval("Id") %>#rhead">
                    <div class="divShopProduct">
                
                                    <div class="pictureBox">
                                        
                                        <asp:Image runat="server" ID="picturePreview" CssClass="picturePreview"  />
                                    </div>
                                    <div class="Header" >
                                     <%--  <a href="ShopProductDetail.aspx?id=<%# Eval("Id") %>#rhead">--%><%# Eval("Name") %><%--</a>--%>
                                    </div>
                                    <div class="Header" style="text-align:initial; padding-left:3px;">
                  
                                        <div style="clear:both;"></div>
                                        <div class="price rectangle white">
                                                             <%#  Eval("PriceString")+" "%> 
                                            <span style="font-size: 14px;">€</span>
                                         </div>
                                       
                                    </div>
                
                                    <div class="ShortDescription" >
                                       <span>
                                           <%# Eval("Description") %>
                  
                                       </span>
                    
                                    </div>

                               <div >
             
                               </div>
                               <div style="clear:both; height:20px;"></div>
                           </div>
                     </a>
           </ItemTemplate>
       </asp:Repeater>
</div>
</asp:Content>
