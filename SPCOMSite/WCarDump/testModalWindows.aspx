<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testModalWindows.aspx.cs" Inherits="WCarDump.testModalWindows" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <style>
        .formDLG {
            width: 500px;
            height: auto;
            margin: 0 auto;
            max-width: 95%;
            box-sizing: border-box;
            padding: 5px;
            border-radius: 5px;
            background: RGBA(255,255,255,255);
            /*-webkit-box-shadow:  0px 0px 15px 0px rgba(0, 0, 0, .45);*/
            /*box-shadow:  0px 0px 15px 0px rgba(0, 0, 0, .45);*/
        }
        /* Стили полей ввода */
        .textbox {
            height: 50px;
            width: 100%;
            border-radius: 3px;
            border: rgba(0,0,0,.3) 2px solid;
            box-sizing: border-box;
            font-family: 'Open Sans', sans-serif;
            font-size: 18px;
            padding: 10px;
            margin-bottom: 5px;
        }
        /*.message:focus,
.textbox:focus{
  outline:none;
   border:rgba(24,149,215,1) 2px solid;
   color:rgba(24,149,215,1);*/
        }
        /* Стили текстового поля */
        .message {
            background: rgba(255, 255, 255, 0.4);
            width: 100%;
            height: 120px;
            border: rgba(0,0,0,.3) 2px solid;
            box-sizing: border-box;
            -moz-border-radius: 3px;
            font-size: 18px;
            font-family: 'Open Sans', sans-serif;
            -webkit-border-radius: 3px;
            border-radius: 3px;
            display: block;
            padding: 10px;
            margin-bottom: 5px;
            overflow: hidden;
        }
        /* Базовые стили кнопки */
        .button {
            height: 50px;
            width: 100%;
            border-radius: 3px;
            border: rgba(0,0,0,.3) 0px solid;
            box-sizing: border-box;
            padding: 10px;
            background: #071250;
            color: #FFF;
            font-family: 'Open Sans', sans-serif;
            font-weight: 400;
            font-size: 16pt;
            transition: background .4s;
            cursor: pointer;
            margin-top: 5px;
        }
            /* Изменение фона кнопки при наведении */
            .button:hover {
                background: #090d21;
            }

        /* Стили модального окна */
        .modal-header h2 {
            color: #555;
            font-size: 20px;
            font-weight: normal;
            line-height: 1;
            margin: 0;
        }
        /* кнопка закрытия окна */
        .modal .btn-close {
            color: #aaa;
            cursor: pointer;
            font-size: 30px;
            text-decoration: none;
            position: absolute;
            right: 5px;
            top: 0;
        }

            .modal .btn-close:hover {
                color: red;
            }
        /* слой затемнения */
        .modal-wrap:before {
            content: "";
            display: none;
            background: rgba(0, 0, 0, .3);
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: 101;
        }

        .modal-overlay {
            bottom: 0;
            display: none;
            left: 0;
            position: fixed;
            right: 0;
            top: 0;
            z-index: 102;
        }
        /* активация слоя затемнения и модального блока */
        .modal-open:checked ~ .modal-wrap:before,
        .modal-open:checked ~ .modal-wrap .modal-overlay {
            display: block;
        }

        .modal-open:checked ~ .modal-wrap .modal-dialog {
            -webkit-transform: translate(-50%, 0);
            -ms-transform: translate(-50%, 0);
            -o-transform: translate(-50%, 0);
            transform: translate(-50%, 0);
            top: 20%;
        }
        /* элементы модального окна */
        .modal-dialog {
            background: #fefefe;
            border: none;
            border-radius: 5px;
            position: fixed;
            width: 80%;
            max-width: 500px;
            left: 50%;
            top: -100%;
            -webkit-box-shadow: 0 15px 20px rgba(0,0,0,.22),0 19px 60px rgba(0,0,0,.3);
            -moz-box-shadow: 0 15px 20px rgba(0,0,0,.22),0 19px 60px rgba(0,0,0,.3);
            box-shadow: 0 15px 20px rgba(0,0,0,.22),0 19px 60px rgba(0,0,0,.3);
            -webkit-transform: translate(-50%, -500%);
            -ms-transform: translate(-50%, -500%);
            -o-transform: translate(-50%, -500%);
            transform: translate(-50%, -500%);
            -webkit-transition: -webkit-transform 0.4s ease-out;
            -moz-transition: -moz-transform 0.4s ease-out;
            -o-transition: -o-transform 0.4s ease-out;
            transition: transform 0.4s ease-out;
            z-index: 103;
        }

        .modal-body p {
            margin: 0;
        }

        .modal-header,
        .modal-footer {
            padding: 20px 20px;
        }

        .modal-header {
            border-bottom: #eaeaea solid 1px;
        }

            .modal-header h2 {
                font-size: 20px;
                margin: 0;
            }

        .modal-footer {
            border-top: #eaeaea solid 1px;
            text-align: right;
        }
        /* адаптивные картинки в модальном блоке */
        .modal-body img {
            max-width: 100%;
            height: auto;
        }
        /* кнопки */
        .btn {
            background: #fff;
            border: #555 solid 1px;
            border-radius: 3px;
            cursor: pointer;
            display: inline-block;
            font-size: 14px;
            padding: 8px 15px;
            text-decoration: none;
            text-align: center;
            min-width: 60px;
            position: relative;
        }

            .btn:hover, .btn:focus {
                background: #f2f2f2;
            }

        .btn-primary {
            background: #428bca;
            border-color: #357ebd;
            color: #fff;
        }

            .btn-primary:hover {
                background: #66A1D3;
            }

        .modalContainer {
            padding: 20px;
        }
    </style>

    <label class="btn" for="modal-1">Регистрация</label>
    <!-- Модальное окно -->
    <div class="modal">
        <input class="modal-open" id="modal-1" type="checkbox" />
        <div class="modal-wrap" aria-hidden="true" role="dialog">
            <label class="modal-overlay" for="modal-1"></label>
            <div class="modal-dialog">
                <div class="modal-header">
                    <h2>Регистрация пользователя </h2>
                    <label class="btn-close" for="modal-1" aria-hidden="true">×</label>
                </div>
                <div class="modal-body">
                    <div class="modalContainer">
                        <input name="name" placeholder="* Укажите ваше имя" class="textbox" />
                        <input name="name" placeholder="* Укажите фамилию" class="textbox" />
                        <input name="phonnumber" placeholder="* Укажите ваш телефон" class="textbox" type="text" />
                        <input name="emailaddress" placeholder="* Укажите ваш Email" class="textbox" type="email" />
                        <input name="password" placeholder="* Укажите пароль " class="textbox" type="password" />
                        <input name="password" placeholder="* Повторите пароль " class="textbox" type="password" />
                        <input name="submit" class="button" type="submit" value="Регистрация" />
                    </div>


                    <%-- <asp:Button runat="server" Text ="Регистрация" CssClass="button" />--%>
                </div>

            </div>
        </div>
    </div>






    <label class="btn" for="modal-2">Вход</label>
    <!-- Модальное окно -->
    <div class="modal">
        <input class="modal-open" id="modal-2" type="checkbox" />
        <div class="modal-wrap" aria-hidden="true" role="dialog">
            <label class="modal-overlay" for="modal-2"></label>
            <div class="modal-dialog">
                <div class="modal-header">
                    <h2>Вход </h2>
                    <label class="btn-close" for="modal-2" aria-hidden="true">×</label>
                </div>
                <div class="modal-body">
                    <div class="modalContainer">

                        <input name="emailaddress" placeholder="* Укажите ваш Email" class="textbox" type="email" />
                        <input name="password" placeholder="* Укажите пароль " class="textbox" type="password" />
                        <input name="submit" class="button" type="submit" value="Регистрация" />
                        <input name="submit" class="button" type="submit" value="Забыли пароль?" />
                    </div>
                </div>
                <%-- <div class="modal-footer">
        <label class="btn btn-primary" for="modal-1">Отлично!</label>
      </div>--%>
            </div>
        </div>
    </div>



    <label class="btn" for="modal-3">Восстановление пароля</label>
    <!-- Модальное окно -->
    <div class="modal">
        <input class="modal-open" id="modal-3" type="checkbox" />
        <div class="modal-wrap" aria-hidden="true" role="dialog">
            <label class="modal-overlay" for="modal-3"></label>
            <div class="modal-dialog">
                <div class="modal-header">
                    <h2>Забыли пароль? </h2>
                    <label class="btn-close" for="modal-3" aria-hidden="true">×</label>
                </div>
                <div class="modal-body">
                    <div class="modalContainer">
                        <input name="emailaddress" placeholder="* Укажите ваш Email" class="textbox" type="email" />
                        <input name="phonnumber" placeholder="* Укажите ваш телефон" class="textbox" type="text" />
                        <input name="submit" class="button" type="submit" value="Восстановить" />

                    </div>
                </div>
                <%-- <div class="modal-footer">
        <label class="btn btn-primary" for="modal-1">Отлично!</label>
      </div>--%>
            </div>
        </div>
    </div>




</body>
</html>
