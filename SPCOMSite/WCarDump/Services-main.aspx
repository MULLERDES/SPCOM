<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage.master" AutoEventWireup="true" CodeBehind="Services-main.aspx.cs" Inherits="WCarDump.Services_main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentMainPageHolder" runat="server">
    
   

    <div style="width:100%;">
        <div style="border: dashed; border-width:1px; " >
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </div>
        <asp:Repeater ID="ServicesRepeater" runat="server" >
            <HeaderTemplate>
                <div>
                    Заголовок всех сервисов. Может быть здесь разместить меню.
                    <br />
                    Далее пойдет просто список всех Сервисов.
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <div style="border-style: solid; border-width: 2px; width:95%; margin:10px; padding:3px;" > 
                  <%# Eval("RawShort") %>
                </div>
                <div style="text-align:right; width:100%;">
                        <a href="ServiceEditor.aspx?id=<%# Eval("Id") %>&mode=edit" >Редактировать</a>
                        <a href="ServiceDetails.aspx?id=<%# Eval("Id") %>&mode=view" >Детальнее</a>
                </div>
            </ItemTemplate>
        </asp:Repeater> 
    </div>
   
</asp:Content>
