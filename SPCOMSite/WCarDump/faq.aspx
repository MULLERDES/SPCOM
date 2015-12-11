<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage.master" AutoEventWireup="true" CodeBehind="faq.aspx.cs" Inherits="WCarDump.faq" %>
<asp:Content runat="server" ContentPlaceHolderID="nmpHEAD">
    <title> Вопросы и Ответы Как смотать пробег в Киеве?  </title>
     <meta name="keywords" content="Как скрутить пробег? Я хочу намотать спидометр" />
    <meta name="description" content=" Часто задаваемые вопросы наших клиентов " />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentMainPageHolder" runat="server">
    <Style>
        .divTelo{
            width:100%;
             margin-top:15px;
            text-align:justify;
        }
        .divHeader{
            font-weight: bold;
            margin:15px;
        }
        .divZagolovok{
             color:black;
             margin:15px;
           
        }
        .divVopros{
            font-style:italic;
            margin:15px;
            font-weight:bolder;
        }
        .divOtvet{
            border-style: solid; border-width: 0px 0px 0px 4px;
            margin-top:10px;
            margin-left:30px;
            padding-left:10px;
        }
        
    </style>


 <div class="divTelo">
     <div class="divHeader">
         ВОПРОС-ОТВЕТ<br>
         Ув. посетители здесь будут публиковаться ответы на более частые вопросы наших клиентов.
         <br>
         <br>
         Так же Вы можете задать свой вопрос по телефону который указан в контактах<%--, либо задать свой вопрос через блог--%>.
     </div>
     
     <div >
             <div class="divZagolovok">
             Вопрос 1:
             </div>
            <div class="divVopros">
                Я хочу <a href="ShopServicesDetails.aspx?id=1"> скрутить пробег на спидометре </a> перед продажей своего автомобиля,
                 но сомневаюсь законно ли это?Насколько законна коррекция спидометра?
           </div>
            <div class="divOtvet"> 
                <a href="ShopServicesDetails.aspx?id=1">Коррекция спидометра</a>  как и услуга «корректировка пробега», абсолютно легальны
                 и законны. Изменение данных о пробеге – это личное дело каждого владельца.
                 Однако, при прохождении технического обслуживания или продаже Вашего автомобиля, 
                рекомендуется предупреждать, что данные о пробеге подвергались корректировке. 
            </div>
     </div>
     

       <div >
             <div class="divZagolovok">
             Вопрос 2:
             </div>
            <div class="divVopros">
             Я приобрел новую панель приборов для своего автомобиля и хотел бы <a href="ShopServicesDetails.aspx?id=1">намотать спидометр</a> до оригинальных показаний. 
                Можете ли вы это сделать? 
           </div>
            <div class="divOtvet"> 
             Да, намотка спидометра ничем не отличается от обычной процедуры корректировки пробега.
            </div>
     </div>

     <div >
             <div class="divZagolovok">
             Вопрос 3:
             </div>
            <div class="divVopros">
              Безопасна ли смотка пробега на спидометре(одометре), 
                не отразится ли она на работоспособности электроники моего авто? 
           </div>
            <div class="divOtvet"> 
              При программировании панели приборов машины для коррекции спидометра, 
                затрагивается только область пробега оставляя все остальное неизменным. 
                Соответственно, остальные алгоритмы работы электроники автомобиля работают так же, как до коррекции.
            </div>
     </div>

     <div >
             <div class="divZagolovok">
             Вопрос 4:
             </div>
            <div class="divVopros">
             Я хочу произвести у вас корректировку спидометра своего автомобиля, но сомневаюсь в конфиденциальности информации. 
           </div>
            <div class="divOtvet"> 
             Услуги носят полностью конфиденциальный характер, показания одометра не фиксируются и не передаются третьим лицам. 
            </div>
     </div>

     <div >
             <div class="divZagolovok">
             Вопрос 5:
             </div>
            <div class="divVopros">
            Возможно ли определить была ли сделана коррекция на автомобиле? 
           </div>
            <div class="divOtvet"> 
          На большинстве автомобилей, при правильной коррекции, определить это невозможно, даже диллерскими сканерами.
            </div>
     </div>







 </div>




</asp:Content>
