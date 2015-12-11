<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPageShopProducts.master" AutoEventWireup="true" CodeBehind="ShopConfirmOrder.aspx.cs" Inherits="WCarDump.ShopConfirmOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphProducts" runat="server">
     <style>
        .divTableOrder{
            width:100%;
        }
        .divTableOrder td{
            vertical-align:top;

        }
        .divTableOrder td input{
            width:100%;
        }
    </style>
    <div style="width:100%; border: groove 1px; ">
    
          
        <div style="padding:18px; border: groove 1px; background-color:white; border-radius:15px;">
            <table class="divTableOrder">
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
              
               
                 <tr style="text-align:center;background-color: rgb(64, 128, 128); font-family: Arial, Helvetica, sans-serif;     font-size: 16px; color:white;">
                    <td colspan="3" style=""></td><td>Сумма:400грн</td>
                </tr>

                <tr>
                    <td>Фамилия </td> <td> <input type="text" size="40" /></td>
                </tr>
                <tr>
                    <td>Имя </td> <td> <input type="text" size="40" /></td>
                </tr>
                <tr>
                    <td>E-mail </td> <td> <input type="email" size="40" /></td>
                </tr>
                <tr>
                    <td>Телефон</td> <td> <input type="number" size="40" /></td>
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
