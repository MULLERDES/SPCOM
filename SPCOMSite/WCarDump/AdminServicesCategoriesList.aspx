<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPageAdmin.master" AutoEventWireup="true" CodeBehind="AdminServicesCategoriesList.aspx.cs" Inherits="WCarDump.AdminCategoriesList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphAdminContent" runat="server">

    <link href="css/StyleAdmin.css" rel="stylesheet" />

     <div class="DWrapper">
        <div class="DHeader" >
            Здесь можно редактировать категории услуг. 
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
                    родительская категория:
                </div>
                <div class="DColTable">
                   <select runat="server" id="SelectAddParent">
                    
                   </select>
                </div>
                <div class="DColTable">
                    <asp:Button runat="server"  Text="Добавить" OnClick="bAddClick" />
                </div>
                <div class="DLineEnding"><asp:Label runat="server" ID="lAddMessage" Text=""></asp:Label></div>
            </div>
        </div>
        <div class="DTable">
            <div class="DLineTable">
                
                <div class="DColTable">
                    №
                </div>
                 <div class="DColTable">
                    Наименование:
                </div>
                <div class="DColTable">
                    Родительская категория:
                </div>
                 <div style="clear:both;"></div>    
            </div>
           
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                   <div class="DLineTable">
                
                        
                        <div class="DColTable">
                           <%# Container.ItemIndex+1 %> 
                        </div>
                       <div class="DColTable">
                          <asp:PlaceHolder ID="bitemDepth" runat="server">
                              
                          </asp:PlaceHolder>
                        </div>
                         <div class="DColTable">
                             <%--<input type="text" id=" value="Наименование" runat="server"/>--%>
                             <asp:PlaceHolder ID="bitemTextboxPH" runat="server">

                             </asp:PlaceHolder>
                        </div>
                        <div class="DColTable">
                             <asp:PlaceHolder ID="phdr" runat="server">

                             </asp:PlaceHolder>
                        </div>
                        <div class="DColTable">
                             <asp:PlaceHolder ID="bitemSavePH" runat="server">

                             </asp:PlaceHolder>
                        </div>
                        <div class="DColTable">
                            <asp:PlaceHolder ID="bitemDeletePH" runat="server">

                            </asp:PlaceHolder>
                        </div>
                         <div style="clear:both;"></div>    
                    </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </div>









</asp:Content>
