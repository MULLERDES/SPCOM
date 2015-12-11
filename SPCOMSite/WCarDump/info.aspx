<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="WCarDump.info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderForNestedMasterPage" runat="server">
    <div style="text-align:center;">
        <h1><asp:Label runat="server" ID="mainMessage"></asp:Label></h1>
    </div>
</asp:Content>
