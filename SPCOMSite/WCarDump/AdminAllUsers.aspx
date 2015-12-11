<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPageAdmin.master" AutoEventWireup="true" CodeBehind="AdminAllUsers.aspx.cs" Inherits="WCarDump.AllUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphAdminContent" runat="server">
  
     <style>
        .divTablePeople{
            width:100%;
        }
        .divTablePeople td{
            vertical-align:top;

        }
        .divTablePeople td input{
            width:100%;
        }
    </style>
    
    <div style="width:100%; border: groove 1px; ">
    
          
        <div style="padding:18px; border: groove 1px; background-color:white; border-radius:15px;">
            <table class="divTablePeople">
                <tr style="text-align:center;">
                    <td colspan="8" style="background-color: rgb(64, 128, 128); font-family: Arial, Helvetica, sans-serif;     font-size: 16px; color:white;">Пользователи</td>
                </tr>
                <tr>
                    <td colspan="8">
                        <hr  size="1" witdh="100%" />
                    </td>
                    
                </tr>
                <tr>
                    <td>№</td><td>Логин</td><td>Имя</td><td>Фамилия</td><td>Телефон</td><td>Электронная почта</td><td>Дата рег.</td><td>Роль</td>
                </tr>
              <%--  <tr>
                    <td>1</td><td><a href="#">VASY1965</a></td><td>+380501233445</td><td>VASY1965@yandex.ru</td><td> 07.01.2015</td>
                </tr>--%>
                <asp:Repeater ID="RAllUsers" runat="server">
                    <ItemTemplate>
                      
                         <tr> 
                              <td><%# Container.ItemIndex+1 %> </td>
                              <td><a href="AccountInfo.aspx?userid= <%# Eval("Id") %>" > <%# Eval("Login") %></a> </td>
                              <td><%# Eval("FirstName") %></td>
                              <td><%# Eval("LastName") %></td>
                              <td><%# Eval("Tel") %></td>
                              <td><%# Eval("Email") %></td>
                              <td><%# Eval("RegistrationDate") %></td>
                              <td><%# Eval("UserPermission.Name") %></td>
                               
                        </tr>

                      
                    </ItemTemplate>
                </asp:Repeater>
               
       
                 
       
            </table>
        </div>
        
    </div>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
              
    <div style="text-align:center;">
      
    </div>
  






</asp:Content>
