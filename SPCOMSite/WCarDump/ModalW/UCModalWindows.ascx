<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCModalWindows.ascx.cs" Inherits="WCarDump.ModalW.UCModalWindows"  %>
<link href="./ModalW/styleModals.css" rel="stylesheet" />
 <script>
    

     function ShowWindow(p) {
         document.getElementById(p).checked = true;
     }

     function HideWindow(p) {
         document.getElementById(p).checked = false;
     }
     function ShowWindow(p, p2) {
         
         document.getElementById(p).checked = true;

     }

 </script>

<style>
    .DError{
        color:red;
    }
</style>
<div class="modal">
  <input class="modal-open" id="modal-question" type="checkbox" hidden >
  <div class="modal-wrap" aria-hidden="true" role="dialog">
    <label class="modal-overlay" for="modal-question"></label>

    <div class="modal-dialog">
      <header>
          Задать вопрос
      </header>
            <div class="modal-body">
                Ваше имя:<asp:RequiredFieldValidator runat="server"
                 ControlToValidate="tbServiceQuestionFromName" ErrorMessage="Введите имя:" CssClass="DError">
            </asp:RequiredFieldValidator>
            
            <asp:TextBox runat="server" ID="tbServiceQuestionFromName" CssClass="inputText"></asp:TextBox>
               
                Ваш e-mail:<asp:RegularExpressionValidator ID="remail" runat="server" 
               ControlToValidate="tbServiceQuestionFromEmail" ErrorMessage="Введите e-mail" 
               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="DError">
            </asp:RegularExpressionValidator>    
            <asp:TextBox runat="server" ID="tbServiceQuestionFromEmail" CssClass="inputText"></asp:TextBox>
             
          
            <asp:TextBox runat="server" TextMode="MultiLine" ID="servFromMessage">Ваше сообщение:</asp:TextBox>
           <%-- <input type="submit" value="Отправить"  class="btn" style="float:right;" />--%>
            <button runat="server" class="btn" id="SendServicesQuestion" onserverclick="SendServicesQuestion_ServerClick" style="float:right;" >
                    Отправить
            </button>
            <div class="modal-footer-info" >После нажатия на кнопку "отправить" ваш запрос будет отправлен в компанию SPCOM. 
                Мы постараемся максимально быстро ответить на все Ваши вопросы. 
            </div>
     </div>
     
    </div>
  </div>
</div>


<!--  Уточнение цены на авто -->
<div class="modal">
  <input class="modal-open" id="modal-service-question" type="checkbox" hidden >
  <div class="modal-wrap" aria-hidden="true" role="dialog">
    <label class="modal-overlay" for="modal-service-question"></label>

    <div class="modal-dialog">
      <header>
          Уточниие цены услуги для вашего автомобиля
      </header>
            <div class="modal-body">
                Ваше имя:
            <asp:TextBox runat="server" ID="tbServiceQuestionAutoModelFromName" CssClass="inputTextThin"></asp:TextBox>
               
                Ваш e-mail:<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
               ControlToValidate="tbServiceQuestionAutoModelEmail" ErrorMessage="Введите e-mail" 
               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="DError">
            </asp:RegularExpressionValidator>    
            <asp:TextBox runat="server" ID="tbServiceQuestionAutoModelEmail" CssClass="inputTextThin"></asp:TextBox>
                 Марка вашего автомобиля:
            <asp:TextBox runat="server" ID="tbServiceQuestionAutoModelBrand" CssClass="inputTextThin" ></asp:TextBox>
                 Модель вашего автомобиля:
            <asp:TextBox runat="server" ID="tbServiceQuestionAutoModelModel" CssClass="inputTextThin"></asp:TextBox>
                  Год выпуска
            <asp:TextBox runat="server" ID="tbServiceQuestionAutoModelYear" CssClass="inputTextThin"></asp:TextBox>
                 Дополнительное сообщение:
            <asp:TextBox runat="server" ID="tbServiceQuestionAutoModelAddition" CssClass="inputTextThin" ></asp:TextBox>
             
          
          
           <%-- <input type="submit" value="Отправить"  class="btn" style="float:right;" />--%>
            <button runat="server" class="btn" id="btnServiceQuestionAutoModel" onserverclick="btnServiceQuestionAutoModel_ServerClick" style="float:right;" >
                    Отправить
            </button>
            <div class="modal-footer-info" >После нажатия на кнопку "отправить" ваш запрос будет отправлен в компанию SPCOM. 
                Мы постараемся максимально быстро ответить на все Ваши вопросы. 
            </div>
     </div>
     
    </div>
  </div>
</div>



<div class="modal">
  <input class="modal-open" id="modal-buy" type="checkbox" hidden  >
  <div class="modal-wrap" aria-hidden="true" role="dialog">
    <label class="modal-overlay" for="modal-buy"></label>

    <div class="modal-dialog">
      <header>
          Заказ товара
      </header>
            <div class="modal-body">
                Ваше имя:
            
            <asp:TextBox runat="server" ID="tbBuyName" CssClass="inputText"></asp:TextBox>
                Ваш e-mail:<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
               ControlToValidate="tbBuyEmail" ErrorMessage="Введите e-mail" 
               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="DError">
            </asp:RegularExpressionValidator>    
            <asp:TextBox runat="server" ID="tbBuyEmail" CssClass="inputText"></asp:TextBox>
             
                Контактынй номер телефона:
            <asp:TextBox runat="server" ID="tbBuyTel" CssClass="inputText"></asp:TextBox>
          
            <asp:TextBox runat="server" TextMode="MultiLine" ID="tbBuyDescription">Дополнительное сообщение</asp:TextBox>
           <%-- <input type="submit" value="Отправить"  class="btn" style="float:right;" />--%>
            <button runat="server" class="btn" id="btnbuy" onserverclick="btnbuy_ServerClick"  >
                    Оформить
            </button>
            <div class="modal-footer-info" >После нажатия на кнопку "Оформить" ваш запрос будет отправлен в компанию SPCOM. 
                В ближайшее время с вами свяжутся для подтверждения заказа по указаному номеру телефона
            </div>
     </div>
     
    </div>
  </div>
</div>


<div class="modal">
   
<input class="modal-open" id="modaltrash" type="checkbox" hidden   >
       
  
  <div class="modal-wrap" aria-hidden="true" role="dialog">
    <label class="modal-overlay" for="modaltrash"></label>

    <div class="modal-dialog" style="max-width:700px;">
      <header>
          Корзина товаров
         </header>     
        <style>
            .litrash{
                border: solid rgba(152, 152, 152, 0.30);
                background-color: rgba(219, 226, 226, 0.5);
                padding:4px;
                margin:2px;
            }
        </style>
        <div class="modal-body" style="overflow-y: scroll; height:270px;">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <ul> 

      
                             <asp:Repeater ID="repProducts" runat="server">
                                <ItemTemplate> 
                                    <li class="litrash"> <%# Eval("Name") %>, Количество: <%# Eval("Count") %>, цена<span style="color:#e46e6e; margin-left:4px; font-weight: bold;"><%# Eval("PriceString") %></span>  

                                            
                                    <asp:Button ID ="bremoveProduct" runat="server"  Text ="X" OnClick="bremoveProduct_Click"   CssClass="bRemoveSmall" CommandArgument='<%# Eval("Id")%>' CommandName='<%# Eval("Product.GUID")%>'/>

                                    <asp:Repeater runat="server" ID="repMods">
                                        <HeaderTemplate><ul></HeaderTemplate>
                                        <ItemTemplate><li class="litrash">  <%# Eval("Name") %>,  цена:  <span style="color:#e46e6e; margin-left:4px; font-weight: bold;"><%# Eval("PriceString") %></span>  
                                                      <asp:Button ID="bremoveModItem" runat="server" Text="X" OnClick="bremoveModItem_Click" CssClass="bRemoveSmall" CommandArgument='<%# Eval("Id") %>'
                                                           CommandName=tguid
                                                          />
                                           
                                                      </li></ItemTemplate>
                                        <FooterTemplate></ul></FooterTemplate>
                                    </asp:Repeater>
                                    </li>
                                </ItemTemplate>
                                 <FooterTemplate>
                                        Сумма вхех товаров:<span style="font-weight:bold; color:red; "> <asp:Label runat="server" ID="SummaryPrice" Text="0"></asp:Label></span>
                                 </FooterTemplate>
                            </asp:Repeater>
                        
                        </ul>
                    </ContentTemplate>
                </asp:UpdatePanel>
               
            </div>
            <footer>
                <button runat="server" class="btn" onclick="HideWindow('modaltrash');ShowWindow('modal-buy'); return false;"  
                    style="width:auto; float:right; margin:5px; margin-right:40px;"
                    >
                    Отправить заказ:
                 </button>
              
            </footer>
    </div>
  </div>
</div>