<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPageAccount.master" AutoEventWireup="true" CodeBehind="AccountBasket.aspx.cs" Inherits="WCarDump.AccountBasket" %>
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
                    <td colspan="4" style="background-color: rgb(64, 128, 128); font-family: Arial, Helvetica, sans-serif;     font-size: 16px; color:white;">Корзина</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <hr  size="1" witdh="100%" />
                    </td>
                    
                </tr>
                <tr>
                    <td>№</td><td>Наименование</td><td>Количество</td><td>Цена</td>
                </tr>
                <tr>
                    <td>1</td><td>Товар1</td><td>1</td><td>100грн</td>
                </tr>
                <tr>
                    <td>1</td><td>Товар1</td><td>1</td><td>100грн</td>
                </tr>
                <tr>
                    <td>1</td><td>Товар1</td><td>1</td><td>100грн</td>
                </tr>
                <tr>
                    <td>1</td><td>Товар1</td><td>1</td><td>100грн</td>
                </tr>
                <tr>
                    <td>1</td><td>Товар1</td><td>1</td><td>100грн</td>
                </tr>
                <tr>
                    <td>1</td><td>Товар1</td><td>1</td><td>100грн</td>
                </tr>
                <tr>
                    <td>1</td><td>Товар1</td><td>1</td><td>100грн</td>
                </tr>
                 <tr style="text-align:center;background-color: rgb(64, 128, 128); font-family: Arial, Helvetica, sans-serif;     font-size: 16px; color:white;">
                    <td colspan="3" style=""></td><td>Сумма:1000грн</td>
                </tr>
                <tr>
                    <td></td><td></td><td></td>
                    <td>
                        <input type="button" value="Купить"  style="height:40px; "/>
                    </td>
                </tr>
            </table>
        </div>
        
    </div>


</asp:Content>
