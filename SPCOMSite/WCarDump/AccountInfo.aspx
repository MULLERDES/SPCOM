<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPageAccount.master" AutoEventWireup="true" CodeBehind="AccountInfo.aspx.cs" Inherits="WCarDump.AccountInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphAccountContent" runat="server">
    <style>
        .accTableSumm{
            width:100%;
        }
        .accTableSumm td{
            vertical-align:top;

        }
        .accTableSumm td input{
            width:100%;
        }
    </style>
    
    <div style="width:100%; border: groove 1px; ">
    
          
        <div style="padding:18px; border: groove 1px; background-color:white; border-radius:15px;">
            <table class="accTableSumm">
                <tr style="text-align:center;">
                    <td colspan="2" style="background-color: rgb(64, 128, 128); font-family: Arial, Helvetica, sans-serif;     font-size: 16px; color:white;">Личные Данные</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr  size="1" witdh="100%" />
                    </td>
                    
                </tr>
                <tr>
                  <td>Имя</td><td><input type="text" id="tbaccFirstName" runat="server" /></td>
                </tr>
                <tr>
                  <td>Фамилия</td><td><input type="text" id="Text1" runat="server" /></td>
                </tr>
                <tr>
                  <td>Телефон</td><td><input type="text" id="Text2" runat="server" /></td>
                </tr>
                <tr>
                  <td>e-mail</td><td><input type="text" id="Text3" runat="server" /></td>
                </tr>
                <tr>
                  <td>Дополнительная информация</td><td><textarea type="text" id="Text4" runat="server"  style="height:80px; width:100%;"/></td>
                </tr>  
                 <tr>
                    <td colspan="2">
                        <hr  size="1" witdh="100%" />
                    </td>
                    
                </tr>          
                 <tr>
                  <td colspan="2" style="text-align:center;">Замена пароля:</td>
                </tr>
                <tr>
                  <td>Текущий</td><td><input type="text" id="Text5" runat="server" /></td>
                </tr>
                <tr>
                  <td>Новый</td><td><input type="text" id="Text6" runat="server" /></td>
                </tr>
                <tr>
                  <td>Еще раз новый</td><td><input type="text" id="Text7" runat="server" /></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center; padding-top:20px;"><input type="button" value="Сменить" style="width:100px;" /></td>
                </tr>
            </table>
        </div>

    </div>
</asp:Content>
