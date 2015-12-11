<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editor.aspx.cs" Inherits="WCarDump.Editor" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="text/javascript" src="Scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="ckeditor/adapters/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            CKEDITOR.replace('<%=txtCkEditor.ClientID %>', { filebrowserImageUploadUrl: '/Supplements/Upload.ashx' });
        });
    </script>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <CKEditor:CKEditorControl ID="txtCkEditor" runat="server" HeighT="100%">
      </CKEditor:CKEditorControl>
    </div>
    </form>
    
</body>
</html>
