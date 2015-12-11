<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPageAdmin.master" AutoEventWireup="true" CodeBehind="AdminServiseEditor.aspx.cs" Inherits="WCarDump.AdminServiseEditor"  ValidateRequest="false"%>
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
            strRootUpload = Server.MapPath("./uploadServices");
            //lblMessage.Text = ""; 

            if (fileInp.PostedFile != null) {
                try {
                    strFileName = fileInp.PostedFile.FileName;
                    if (strFileName != "") {
                        strFileName = strFileName.Replace("/", "\\");
                        index = strFileName.LastIndexOf("\\");
                        strFileName = strFileName.Substring(index + 1);
                        strUniqueName = System.Guid.NewGuid().ToString() + "_" + strFileName;
                        fileInp.PostedFile.SaveAs(strRootUpload + "\\" + strUniqueName);
                        //lblMessage.Text = "Файл успешно загружен с именем " + strUniqueName + "<p>";
                        imgPreview.ImageUrl = "~/uploadServices/" + strUniqueName;
                    }
                }
                catch (Exception ex) {
                    //lblMessage.Text = ex.Message + "<p>";
                }
            }

        }

</script> 
    <style>
        .divTable{
             width:100%;
             margin:10px;
             background-color:white;
        }
        divTable tr{
            height:33px;
            margin-top:30px;
           
        }
        .divTable td{
            vertical-align:middle;
        }
        .divImage{
            height:150px;
            width:150px;
            border:groove;
        }
        .divImage img{
              height:150px;
              width:150px;
        }
        .divTextBlok{
            width:100%;
            

        }
    </style>

    
    <div>
        <asp:Button runat="server" ID="tbSave" OnClick="tbSave_Click" Text ="Сохранить запись" />
        <asp:Button runat="server" ID="tbRemove" OnClick="bRemoveRecord_Click" Text="Удалить запись" />
    </div>
    <table class="divTable">
         <tr style="text-align:center;">
                    <td colspan="2" style="background-color: rgb(64, 128, 128); font-family: Arial, Helvetica, sans-serif;     font-size: 16px; color:white;">Редактирование услуг</td>
                </tr>
         <tr>
                    <td colspan="2">
                        <hr  size="1" witdh="100%" />
                    </td>
                    
                </tr>
        <tr>
                <td>
                    Наименование услуги
                </td>
                <td> 
                    <asp:TextBox runat="server" ID="tbName"></asp:TextBox>
                </td>
            </tr>
        <tr>
                <td>
                    Цена услуги
                </td>
                <td> 
                    <asp:TextBox runat="server" ID="tbPrice"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Очень краткое описание
                </td>
                <td> 
                    <asp:TextBox runat="server" ID="tbShordDescription"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    Категория
                </td>
                <td> 
                    <select runat="server" id="SelCategory">

                    </select>
                </td>
            </tr>
            <tr>
                <td>
                   Картинка
                </td>
                <td> 
                     <input id="fileInp" type="file" runat="server">
                     <asp:Button Text="Загрузить на сервер"  runat="Server" UseSubmitBehavior="false" ID="bLoadPic"  OnClick="Upload_Click" />
                </td>
            </tr>
        <tr>
            <td></td>
            <td> 
                <div class="divImage">
                     <asp:Image runat="server" ImageUrl="#" Width="150" Height="150"  ID="imgPreview"/>

                    </div>

            </td>
        </tr>
    </table>
            
   
    <div class="divTextBlok">
    	
<CKEditor:CKEditorControl ID="CKHEAD" runat="server" HeighT="100%">
</CKEditor:CKEditorControl>

   </div>


</asp:Content>
