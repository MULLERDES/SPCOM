<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage.master" AutoEventWireup="true" CodeBehind="Krimistop.aspx.cs" Inherits="WCarDump.Krimistop.Krimistop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentMainPageHolder" runat="server">

   <style>
        .divText{
            text-align: justify;
            text-indent:30px;
            margin:10px;
        }
        .divKartinka1{
            margin-top:20px;
            padding-left:95px;
        }
        .divposleNachala{
             border-style: solid; border-width: 3px 0px 0px 0px;
             text-align: justify;
              text-indent:30px;
               margin:10px;
        }
        .divKartinka2{
            float:left;
            margin-right:15px;
        }
     
         .divKartinka3{
            margin-top:20px;
            padding-left:150px
         }   
       
    </style>

<div>
    <div class="divKartinka1">
        <img src="Images\logo1n.gif" width="450" height="80" />
    </div>
    
    <div class="divText">
        Одна из основных потребностей человека - это безопасность, того же заслуживает и Ваш автомобиль.
         Все мы устали каждую ночь вскакивать к окну при малейшем звуке сигнализации надоело
         бояться за автомобиль находясь в незнаком районе пришел конец мучениям. Пора начать спать спокойно
    </div>


    <div class="divposleNachala">
             Благодаря своему партнеру, компании Нанонет, которая является национальным оператором международной 
        системы маркировки и идентификации имущества  <strong>KRIMISTOP </strong>, мы смогли выйти на прогрессивно новый 
        уровень систем защиты автомобиля.
Противоугонная система <strong> KRIMISTOP </strong>. Это уникальная технология, которая была разработана в Чехии . 
        Это не сигнализация, не средство механической защиты, не система навигации, а система маркировки автомобиля.

    </div>

    <div class="divKartinka2">
        <img src="Images\kolo-extra(400x300).jpg" width="360" height="260" />
    </div>
    <div style="text-align: justify;text-indent:30px"> 
        Иной подход к защите не создает препятствия к хищению, а делает практически невозможным реализацию или использование украденного.
       <div>
           Уникальная технология, использующая микроточки и электронные микрочипы дополнена предупреждающими наклейками,
            которые вместе с основными записями о защищаемых предметах создают надежную защиту и являются серьезным
            помощником в борьбе с кражами имущества.
       </div>
    </div>
   <div class="divKartinka3">
       <img src="Images\obrazky_ru.gif" width="320" height="60"  />
   </div>
    <div class="divText">   
        Маркировка и регистрация предметов в системе <strong> KRIMISTOP </strong>позволяет легко, быстро и точно идентифицировать их. Маркируемые предметы могут быть использованы как улики. Шанс возврата владельцу возрастает и сроки возврата уменьшаются. Польза от маркировки очевидна уже в том, что промаркированное 
            системой имущество имеет предупреждающий и отталкивающий эффект и оно теряет свою ценность и становится опасным для незаконных владельцев и контрабандистов
        </div>

</div>
    
</asp:Content>
