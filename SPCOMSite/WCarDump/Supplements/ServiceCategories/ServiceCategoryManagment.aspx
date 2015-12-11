<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage.master" AutoEventWireup="true" CodeBehind="ServiceCategoryManagment.aspx.cs" Inherits="WCarDump.Supplements.ServiceCategories.ServiceCategoryManagment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentMainPageHolder" runat="server">


    <div>
        
        
        <table style="width:100%; border:none;">
            <tr>
                <td>
                    Название категории
                </td>
                <td>
                    <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    Краткое описание
                </td>
                <td>
                    <asp:TextBox ID="tbDescription" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Родительская категория
                </td>
                <td>
                    
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    
                </td>
            </tr>
            <tr>
                <td style="align-content:center;">                 
                      <asp:Button ID="Button1" runat="server" Text="Схранить" OnClick="Button1_Click" />
                      
                </td>
                <%--   <td>
                        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                </td>--%>
               
            </tr>
        </table>

        <asp:Label ID="lStatus" runat="server" Text=""></asp:Label>


        
    </div>
</asp:Content>
