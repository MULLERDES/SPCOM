<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPageShopProducts.master" AutoEventWireup="true" CodeBehind="ShopProductDetail.aspx.cs" Inherits="WCarDump.ShopProductDetail" EnableEventValidation="false" %>

<%@ Register Src="~/ModalW/UCModalWindows.ascx" TagName="UCModalWindows" TagPrefix="UCModalWindows" %>

<asp:Content ContentPlaceHolderID="productCPHHead" runat="server">
    <title>  <%= this.LoadName() %>  | Купить в  Магазине СПКОМ   | SPCOM (044) 228-12-17 </title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="cphProducts" runat="server">
    <link href="lightbox/css/lightbox.css" rel="stylesheet" />
    <script src="lightbox/js/lightbox.js"></script>

    <style>
        .divTopBlok {
            width: 90%;
        }

        .divBlokPicture {
            float: left;
            width: 150px;
            height: 190px;
            margin: 15px;
            border: groove;
        }

            .divBlokPicture img {
                width: 150px;
                height: 190px;
            }

        .DButton {
            float: left;
            margin-top: 0px;
            padding: 10px;
        }

        .DButton2 {
            float: left;
            margin-top: 10px;
            padding: 8px;
        }

        .divBottomBlok {
            background-color: white;
            width: 90%;
            height: auto;
            /*text-align:justify;*/
            margin: 15px;
            clear: left;
            border-top: groove;
            /*text-indent:30px;*/
            padding: 5px;
            border-bottom: groove;
        }

        .divZagolovok {
            margin-top: 10px;
            text-align: center;
            text-transform: uppercase;
            font-family: "Arial", Helvetica, sans-serif;
            font-weight: bold;
        }

        .divModiphAll {
            width: 90%;
            margin: 10px;
            border-bottom: groove;
        }

        .divModiphLeft {
            width: 40%;
            text-align: justify;
            float: left;
            padding: 10px;
            margin: 10px;
        }

        .divModiphRight {
            width: 49%;
            height: auto;
            border-left: groove;
            text-align: justify;
            float: left;
            padding: 10px;
        }

        .CountBOX {
            padding: 10px;
        }
    </style>





    <link href="css/styleShop.css" rel="stylesheet" />
    <a name="rhead"></a>


    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
    <UCModalWindows:UCModalWindows runat="server" ID="UCModalWindows" />
    <div class="divZagolovok">
        <%= LoadName() %>
    </div>

    <div class="divTopBlok">

        <div class="divBlokPicture">
            <%--<img src="Images/Без%20иdмени-1.png" />--%>

            <asp:HyperLink runat="server" ID="pictLink" NavigateUrl="Google.com" data-lightbox="image-1" data-title="My caption">
                <asp:Image runat="server" ID="mainPicture" />
            </asp:HyperLink>
        </div>

        <div style="height: 60px; padding-top: 30px;"><%= LoadShort() %></div>
        <div>

            <div class="DButton">
                <div class="price rectangle white">
                    <%= LoadPrice() %> €
                </div>
            </div>
            <div class="DButton">
                <asp:TextBox runat="server" ID="prodCount" Text="1" Width="30" CssClass="CountBOX"></asp:TextBox>

            </div>
            <div class="DButton">

                <button runat="server" class="rectangle blue btn" id="AddToTrash" onserverclick="AddToTrash_ServerClick">
                    Добавить в корзину
                </button>


            </div>
            <div class="DButton">
                <button runat="server" class="rectangle blue btn" onclick="ShowWindow('modaltrash'); return false;">
                    Просмотреть корзину
                </button>
            </div>

            <div class="DButton">

                <button runat="server" class="rectangle blue btn" onclick="ShowWindow('modal-question');return false;">
                    Задать вопрос
                </button>

            </div>

        </div>

    </div>

    <div class="divBottomBlok">
        <div class="divZagolovok">
            ОПИСАНИЕ
        </div>
        <p>
            <%= LoadRAW() %>
        </p>
    </div>


    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <asp:Repeater runat="server" ID="repMods">
                <HeaderTemplate>
                    <div class="divZagolovok">
                        СПИСОК МОДИФИКАЦИЙ
                    </div>

                </HeaderTemplate>
                <ItemTemplate>
                    <div class="divModiphAll">
                        <div class="divModiphLeft">
                            <%# Container.ItemIndex+1 %>: <%# Eval("Name") %>
                            <div class="DButton2">
                                <div class="price rectangle white">
                                    <%# WCarDump.Models.Converter.ToPrice( Eval("Price").ToString()) %>
                                </div>
                            </div>
                            <div class="DButton2">
                                <asp:Button runat="server" CssClass="rectangle blue btn" ID="bAddModToTrash" CommandArgument='<%# Eval("Id") %>' OnClick="bAddModToTrash_ServerClick" Text="Добавить"></asp:Button>
                            </div>
                        </div>
                        <div class="divModiphRight">
                            <%# Eval("Decription") %>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
                </FooterTemplate>
            </asp:Repeater>
        </ContentTemplate>
    </asp:UpdatePanel>



    <div style="margin: 0 auto; align-content: center; float: right;">
        <script type="text/javascript">(function () {
    if (window.pluso) if (typeof window.pluso.start == "function") return;
    if (window.ifpluso == undefined) {
        window.ifpluso = 1;
        var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
        s.type = 'text/javascript'; s.charset = 'UTF-8'; s.async = true;
        s.src = ('https:' == window.location.protocol ? 'https' : 'http') + '://share.pluso.ru/pluso-like.js';
        var h = d[g]('body')[0];
        h.appendChild(s);
    }
})();</script>
        <div class="pluso" data-background="transparent" data-options="big,square,line,horizontal,nocounter,theme=02" data-services="vkontakte,odnoklassniki,facebook,twitter,google,moimir,email,print"></div>
    </div>
</asp:Content>
