<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPageAdmin.master" AutoEventWireup="true" CodeBehind="AdminProductsList.aspx.cs" Inherits="WCarDump.AdminProductsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphAdminContent" runat="server">
    <link href="css/StyleAdmin.css" rel="stylesheet" />
    <script runat="server">
        
    </script>
 <div class="DWrapper">
        <div class="DHeader" >
            Здесь можно посмотреть список товаров. Для этого клацайте куда попало и все получится!
        </div>
        <div class="DHeader">
            Добавление новой записи  в таблицу
            <div class="DLineTable">
                <div class="DColTable">
                    Наименование:
                </div>
                <div class="DColTable">
                    <asp:TextBox ID="tbAdd" Text ="" runat="server"></asp:TextBox>
                </div>
                 <div class="DColTable">
                     категория:
                </div>
                <div class="DColTable">
                   <select runat="server" id="SelCategory">
                    
                   </select>
                </div>
                <div class="DColTable">
                    <asp:Button runat="server"  Text="Добавить"   OnClick="BAddClick"/>
                </div>
                <div class="DLineEnding"><asp:Label runat="server" ID="lAddMessage" Text=""></asp:Label></div>
            </div>
        </div>
        <div class="DTable">
            
            <asp:Repeater ID="RepCategories" runat ="server">
                <ItemTemplate>
                    <div class="DLineTable">
                        <div class="DColTable"><%# Eval("Name") %></div>
                        <div class="DLineEnding"></div>
                    </div>
                    <asp:Repeater ID="RepProductsForCategory" runat="server">
                        <ItemTemplate>
                            <div class="DLineTable" style="padding-left:20px;">
                                <div class="DColTable"><a href="AdminProductEditor.aspx?mode=edit&id=<%# Eval("Id") %>"> <%# Eval("Id") %></a></div>
                                <div class="DColTable"><a href="AdminProductEditor.aspx?mode=edit&id=<%# Eval("Id") %>"> <%# Eval("Name") %></a></div>
                                <div class="DColTable">
                                  
                                <div class="DLineEnding"></div>  <asp:PlaceHolder runat="server" ID="phdrRemoveButton">

                                                       </asp:PlaceHolder></div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </ItemTemplate>
            </asp:Repeater>
           
            

        </div>
    </div>

</asp:Content>
