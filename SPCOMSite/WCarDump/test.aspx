<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="WCarDump.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="ModalWindow/DialogStyle.css" rel="stylesheet"/>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
    <script type="text/javascript" src="ModalWindow/jquery.leanModal.min.js"></script>
    <script type="text/javascript">
        $(function() {
            $('a[rel*=leanModal]').leanModal({ top : 150, closeButton: ".modal_close" });
        });
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
<a rel="leanModal" name="test" href="#test">Open</a> |

<div id="test" class="modals" >
    <div class="divDialogMain">
        <div class="dlgHeader">
            <h2>
                Регистрация нового пользователя
            </h2>
            <p>
                Это просто и бесплатно
            </p>
        </div>
        <form class="divDlgForm">
            <div class="divTextField">
                <label >Username</label>
                <input  class="good_input" style="background: #DEF5E1 url(good.png) 236px center no-repeat; "  name="" type="text">
            </div>
            <div class="divTextField">
                <label >Email adress</label>
                <input  class="good_input" name="" type="text">
            </div>
            <div class="divTextField">
                <label >Password</label>
                <input  class="good_input" name="" type="text">
            </div>
            <div class="divTextField">
                <label >Retype</label>
                <input  class="good_input" name="" type="text">
            </div>
            <div class="divBtnField">
                <button type="submit">Sign Up »</button>
            </div>
        </form>

    </div>
    <a class="modal_close" href="#"></a>
</div>


    </div>
    </form>
</body>
</html>
