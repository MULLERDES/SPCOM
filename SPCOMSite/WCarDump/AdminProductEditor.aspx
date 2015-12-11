<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPageAdmin.master" AutoEventWireup="true" 
    CodeBehind="AdminProductEditor.aspx.cs" Inherits="WCarDump.AdminProductEditor"
    validateRequest="false" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphAdminContent" runat="server">
        <script type="text/javascript" src="Scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="ckeditor/adapters/jquery.js"></script>
    <script type="text/javascript">
    $(function () {
    CKEDITOR.replace('<%=CKHEAD.ClientID %>', { filebrowserImageUploadUrl: '/Supplements/Upload.ashx' });
    });
        </script>
    <script language="C#" runat="server"> 

        void Upload_Click(Object sender, EventArgs e) {

            string strFileName, strRootUpload, strUniqueName;
            int index;
            strRootUpload = Server.MapPath("./uploadProducts");


            if (fileInp.PostedFile != null) {
                try {
                    strFileName = fileInp.PostedFile.FileName;
                    if (strFileName != "") {
                        strFileName = strFileName.Replace("/", "\\");
                        index = strFileName.LastIndexOf("\\");
                        strFileName = strFileName.Substring(index + 1);
                        strUniqueName = System.Guid.NewGuid().ToString()+ strFileName;
                        fileInp.PostedFile.SaveAs(strRootUpload + "\\" + strUniqueName);
                        //lblMessage.Text = "Файл успешно загружен с именем " + strUniqueName + "<p>";
                        imgPreview.ImageUrl = "~/uploadProducts/" + strUniqueName;
                    }
                }
                catch (Exception) {

                }
            }

        }

</script> 
    <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
    <link href="css/StyleAdmin.css" rel="stylesheet" />
    <div class="DWrapper">
        <div>
           
    
           
        </div>
        <div class="DHeader"> 
            <asp:button Text="Сохранить" runat="server" CssClass="Button ButtonSave" ID="bSaveProduct" OnClick="bSaveProduct_Click"></asp:button>
            <asp:button Text="Удалить" runat="server" ID="bRemoveRecord" OnClick="bRemoveRecord_Click"  CssClass="Button ButtonRemove"></asp:button>
        </div>
        <div class="DTable">
            <table style="width:100%;">
                <tr>
                    <td>Наименование</td>
                    <td><asp:TextBox runat="server" ID="tbNAme"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Цена</td>
                    <td><asp:TextBox runat="server" ID="tbPrice"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Категория</td>
                    <td><select runat="server" id="SelCatgory"></select></td>
                </tr>
                <tr>
                    <td>Краткое описание</td>
                    <td>
                        <textarea runat="server" id="tbDescr" style="height:60px;"></textarea></td>
                </tr>
                <tr>
                    <td>Изображение<br/> (120x120) </td>
                    <td>
                        <div style="border:solid 1px rgba(178, 178, 178, 0.47); width:150px; height:190px;">
                                <asp:Image runat="server" ID="imgPreview"  Width="150" Height="190"/>
                        </div>
                        <div>
                                <input id="fileInp" type="file" runat="server">
                        </div>
                        <div>
                            <asp:Button Text="Загрузить на сервер"  runat="Server" UseSubmitBehavior="false" ID="bLoadPic"  OnClick="Upload_Click" />
                        </div>
                       
                        
                    </td>
                </tr> 
                <tr>
                    <td colspan="2">
                        Детальное описание товара, которое будет отображено на странице
                              <CKEditor:CKEditorControl ID="CKHEAD" runat="server" HeighT="100%">
                                </CKEditor:CKEditorControl>
                    </td>
                </tr>

            </table>
             
                           <div>
                                    Наличие модификаций:<br/>
                                    Добавление модификации

                                </div>                
            <style>
                .MODS{

                }
                 modbutton{
                  
                }

                 .inputName{
                     width:100px;

                 }
                 .inputPrice{
                     width:50px;

                 }
                 .inputDescr{
                     width:400px;
                     height:100px;
                 }
            </style>
            <div class="MODS">
<asp:button Text="Добавить модификацию" runat="server" OnClick="bAddModifications_Click" CssClass=" ButtonSave"></asp:button>
                          
            
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                   
                                       <div>
                                        <table style="width:100%;" border="1">
                                            <tr>
                                                <th>№</th><th>Назв&Цена</th><th>Доп. информация</th><th>Управление</th>
                                                </tr>
                                      
                                            <asp:Repeater ID="repModificattions" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%# Container.ItemIndex+1 %></td>
                                                    
                                                        <td>
                                                            <asp:PlaceHolder ID="plhdrName" runat="server"> </asp:PlaceHolder>
                                                            <br />
                                                            Цена:
                                                            <asp:PlaceHolder ID="plhdrPrice" runat="server"> </asp:PlaceHolder>
                                                        </td>
                                                        <td>
                                                            <asp:PlaceHolder ID="plhdrDescription" runat="server"></asp:PlaceHolder>
                                                        </td>
                                                        <td>
                                                            <asp:PlaceHolder ID="plhdrButtons" runat="server"> </asp:PlaceHolder>
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </table>
                                    </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                      
            </div>                   
                                
                                    
                                      
                                 
                               
                          
                   
              
                
               
        </div>
    </div>

</asp:Content>
