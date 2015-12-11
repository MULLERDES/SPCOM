<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage.master" AutoEventWireup="true" CodeBehind="ServiceDetails.aspx.cs" Inherits="WCarDump.ServiceDetails" %>
<asp:Content runat="server"  ContentPlaceHolderID="nmpHEAD"> 
    <title> Услуги SPcom  </title>
     <meta name="keywords" content="Смотать пробег,расшифровка кодов ошибок, скрутить пробег, ремонт электроники, ремонт битых пикселей, ремонт SRS Airbag, Start Error, дубликат ключа авто, чип транспондер" />
    <meta name="description" content=" Часто задаваемые вопросы наших клиентов " />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentMainPageHolder" runat="server">
    
    <div style="width:100%;"> 
    <asp:Repeater ID="Repeater1" runat="server">
       
        <ItemTemplate>
          <div>
               <%# Eval("RawData") %>
          </div>
          <div style="text-align:right;">
            <%--  <a href="ServiceEditor.aspx">Редактировать</a>--%>
              
          </div>
       </ItemTemplate>
           
    </asp:Repeater>
    </div>
</asp:Content>
