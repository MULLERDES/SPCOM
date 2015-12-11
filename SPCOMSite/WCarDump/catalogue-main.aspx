<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="catalogue-main.aspx.cs" Inherits="WCarDump.catalogue_main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderForNestedMasterPage" runat="server">
    <style type="text/css">
        #divEmployees
        {
            font-family:Arial, Verdana, Sans-Serif;
            font-size:12px;
            padding:10px;
            border:solid 1px #0066CC;
        }
        
        #divEmployees .detail
        {
            border-bottom:dashed 1px #0066CC;
            margin-bottom:10px;
            padding:10px;
        }
        .divmenuHeader{
            float:left;
            margin:3px;
            padding:5px;
            border-radius: 15px 50px 30px;
            height:25px;
            background-color:lightblue;
        }
        .divmenuHeader a{
            color:navy;
        }
    </style>
    
    

    <div>
         <fieldset>
             
             <div style="width:80%; float:right; margin-left:20%;">
               <div class="divmenuHeader">
                   <a href="#">Пополнить базу</a>
               </div>
                 <div class="divmenuHeader">
                   <a href="#">Мои настройки</a> 
               </div>
                 <div class="divmenuHeader">
                   <a href="#">Дополнительная информация</a> 
               </div>
                 <div class="divmenuHeader">
                   <a href="#"> F.A.Q.</a>
               </div>
            </div>

   

            
        <div>
            <h2 style="text-align:center; margin:25px;">Полная база файлов</h2>

        <asp:Repeater ID="catalogueMainList" runat="server">
            <HeaderTemplate>
               <table style="width:100%; border:ridge;" border="1" >
                   <tr>
                       <td>
                           ID
                       </td>
                       <td>
                            Марка
                       </td>
                       <td>
                           Модель
                       </td>
                       <td>
                           Год выпуска
                       </td>
                       <td>
                           Модуль
                       </td>
                       <td>
                           Память
                       </td>
                       <td>
                           Номер блока
                       </td>
                       <td>
                           Тип файла
                       </td>
                   </tr>
            </HeaderTemplate>
            <ItemTemplate>
               <tr>
                       <td>
                           <%# Eval("ID")%>
                       </td>
                       <td>
                           <%# Eval("Brand")%>
                       </td>
                       <td>
                             <%# Eval("Model")%>
                       </td>
                       <td>
                             <%# Eval("Year")%>
                       </td>
                       <td>
                             <%# Eval("Module")%>
                       </td>
                       <td>
                             <%# Eval("MemType")%>
                       </td>
                       <td>
                             <%# Eval("BlockNumber")%>
                       </td>
                       <td>
                             <%# Eval("Type")%>
                       </td>
                   </tr>
		     </ItemTemplate>
           
            <FooterTemplate>
                </table>
          </FooterTemplate>
        </asp:Repeater>
        </div>
        </fieldset>
    </div>
</asp:Content>
