<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="ServiceEditor.aspx.cs" 
    Inherits="WCarDump.Supplements.ServiceCategories.ServiceEditor"
    validateRequest="false"
     %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderForNestedMasterPage" runat="server">

    <script type="text/javascript" src="Scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="ckeditor/adapters/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            CKEDITOR.replace('<%=CKHEAD.ClientID %>', { filebrowserImageUploadUrl: '/Supplements/Upload.ashx' });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            CKEDITOR.replace('<%=CKBODY.ClientID %>', { filebrowserImageUploadUrl: '/Supplements/Upload.ashx' });
        });
    </script>


    <div>
        Выбор категории:<asp:DropDownList ID="ddCategory" runat="server"></asp:DropDownList>
    </div>
 
    <div>
        Заголовок Услуги

        <CKEditor:CKEditorControl ID="CKHEAD" runat="server" HeighT="100%">
        </CKEditor:CKEditorControl>
    </div> 
    <div>
        Основная страница услуги
        <CKEditor:CKEditorControl ID="CKBODY" runat="server" HeighT="100%">
        </CKEditor:CKEditorControl>
    </div> 
    <div>
        <asp:Button ID="BSave" runat="server" Text="Сохранить" OnClick="BSave_Click" />
    </div>
   
</asp:Content>
