<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ErrorsDecode.aspx.cs" Inherits="WCarDump.ErrorsDecode" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderForNestedMasterPage" runat="server">
    <style>
        .BZagol{
            text-align:center;
            margin-top:10px;
        }
        .Blist{
            list-style-type:decimal;
        }
        .Btext{
            text-align:justify;
            text-indent:20px;
        }
        .Bselect{
            text-align:center;
            margin:10px;
            margin-top:10px;
            margin-bottom:10px;
        }
    </style>
    <div style="width:90%;margin:25px;">
    <div class="BZagol">
           <h3> РАСШИФРОВКА КОДОВ ОШИБОК</h3>
    </div>
    <div>
        <div class="Btext"><strong> Правила ввода: </strong></div> 
        <ul class="Blist">
            <li>
                Регистр при вводе кода значения не имеет
            </li>
            <li>
                Код неисправности должен быть введен полностью, с буквами (если они есть) 
            </li>
            <li>
                Буквы надо вводить с английской раскладкой клавиатуры 
            </li>
        </ul>

    </div>
    <div class="Btext">
        <strong>  </strong> На сайте может быть представлен неполный перечень кодов неисправностей. Связано это с тем, что производители автомобилей постоянно совершенствуют системы управления двигателем и добавляют новые коды ошибок. 
    </div>
        <div class="BZagol"> 
            <strong> Введите код неисправности для поиска </strong>
        </div>
        <div class="Bselect"> 
            Введите код ошибки:
            <input type="text" size="15" placeholder="Пример P1634" />
    <select name="autoID">
		<option value="1">Audi</option>
		<option value="2">BMW</option>
		<option value="3">Daewoo</option>
		<option value="4">Ford</option>
		<option value="5">Honda</option>
		<option value="6">Hyundai</option>
		<option value="7">Kia</option>
		<option value="8">Mazda</option>
		<option value="0">Mercedes</option>
		<option value="10">Mitsubishi</option>
		<option value="11">Nissan</option>
		<option value="12">Opel</option>
		<option value="0">Peugeot</option>
		<option value="1">Seat</option>
		<option value="1">Skoda</option>
		<option value="14">Subaru</option>
		<option value="15">Toyota</option>
		<option value="16">VolksWagen</option>
		<option value="17">Volvo</option>
		<option value="18">ВАЗ</option>
		<option value="19">ГАЗ</option>
	</select>
            <input type="submit" value="РАСШИФРОВАТЬ"/>
        </div>
        <div class="Btext"> 
            Подробное описание кодов неисправностей (в том числе отсутствующих на сайте), а также причины их возникновения смотрите в <strong> технической документации на автомобиль </strong>
        </div>
        <div class="Btext">
            <strong>Обращаем ваше внимание, </strong> что компания не занимается переводом английских терминов на русский язык.
        </div>
        <br />
        <br />
        <br />
        <br />
    </div>


</asp:Content>
