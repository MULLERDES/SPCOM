<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPageAdmin.master" AutoEventWireup="true" CodeBehind="AdminServiseList.aspx.cs" Inherits="WCarDump.AdminServiseList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphAdminContent" runat="server">

     <style>
        .divTableServiseList{
            width:100%;
        }
        .divTableServiseList td{
            vertical-align:top;

        }
        .divTableServiseList td input{
            width:100%;
        }
    </style>
    
    <div style="width:100%; border: groove 1px; ">
    
        
          
        <div style="padding:18px; border: groove 1px; background-color:white; border-radius:15px;">
            <table class="divTableServiseList">
                <tr style="text-align:center;">
                    <td colspan="2" style="background-color: rgb(64, 128, 128); font-family: Arial, Helvetica, sans-serif;     font-size: 16px; color:white;">Список услуг компании SPcom</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr  size="1" witdh="100%" />
                    </td>
                    
                </tr>
                <tr>
                    <td colspan="2"><asp:Button runat="server" text="Добавить новую услугу" ID="baddNewService" OnClick="baddNewService_Click"/></td>
                </tr>
                <tr>
                    <td>№</td><td>Наименование услуги</td>
                </tr>
                <asp:Repeater ID="RepServices" runat="server">
                    <ItemTemplate>
                         <tr>
                            <td><a href="AdminServiseEditor.aspx?mode=edit&id=<%# Eval("Id") %>"><%# Container.ItemIndex+1 %></a></td>
                            <td><a href="AdminServiseEditor.aspx?mode=edit&id=<%# Eval("Id") %>"><%# Eval("Name") %></a> </td>
                            <td><a href="AdminServiseEditor.aspx?mode=edit&id=<%# Eval("Id") %>"><%# Eval("ServicesCategory.Name") %></a></td>
                        </tr>


                       
                    </ItemTemplate>
                </asp:Repeater>
               <%-- <tr>
                    <td>1</td><td><a href="#">Коррекция пробега</a></td>
                </tr>
                <tr>
                    <td>2</td><td><a href="#">Диагностика автомобиля </a></td>
                </tr>
                <tr>
                    <td>3</td><td><a href="#">Ремонт блоков SRS AirBag </a></td>
                </tr>
                <tr>
                    <td>4</td><td><a href="#">Переделка Американских авто под Европейские стандарт </a></td>
                </tr>
                <tr>
                    <td>5</td><td><a href="#">Ремонт битых пикселей на экранах BMW</a></td>
                </tr>
                <tr>
                    <td>6</td><td><a href="#">Ремонт автомобильной электроники </a></td>
                </tr>
                <tr>
                    <td>7</td><td><a href="#">Изготовление чип ключей  </a></td>
                </tr>
                 <tr>
                    <td>8</td><td><a href="#">Устранение ошибки Start Еrror </a></td>
                </tr>
                 <tr>
                    <td>9</td><td><a href="#">Противоугонная система — KRIMISTOP®.  </a></td>
                </tr>
                 <tr>
                    <td>10</td><td><a href="#">Программирование автомобиля и многое другое связанное с электроникой  </a></td>
                </tr>--%>
       
            </table>
        </div>
        
    </div>


</asp:Content>
