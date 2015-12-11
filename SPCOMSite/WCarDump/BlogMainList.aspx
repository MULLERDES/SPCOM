<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage.master" AutoEventWireup="true" CodeBehind="BlogMainList.aspx.cs" Inherits="WCarDump.BlogMainList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentMainPageHolder" runat="server">
   <a name="rhead"></a>
    <link href="css/StyleBlogMainList.css" rel="stylesheet" />
    <script type="text/javascript">var switchTo5x=true;</script>
    <script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
    <script type="text/javascript">
        stLight.options({ publisher: "2777fedd-2f2b-4756-991a-aec674dd1445", doNotHash: false, doNotCopy: false, hashAddressBar: false });

    </script>
     <link href="lightbox/css/lightbox.css" rel="stylesheet" />
    <script src="lightbox/js/lightbox.js"></script>

    <div class="BlogWrapper">
       <div class="BlogItem">
           <header>
               Ремонт панели приборов Suzuki Grand Vitara 
              
           </header>
           <div style="font-size:12px;">
                <div class="Date">
                     <img src="css/images/date.png" />
                22 августа 2015
               </div>
                <div class="User">
                   <img src="css/images/user.png" />
                SPCOM
               </div>
           </div>
                
           <div class="DConntent">
               Последнй интересный случай - это ремонт панели приборов в Suzuki Grand Vitara. В чем собственно интерес: 
               с панелью приборов была проведена, так сказать, некачественная работа и на экране вместо пробега 
               высвечивалась надпись «Error».
               <div  class="bIMG">
                <a href="lightbox/BlogImages/grand_vitara_do.jpg" data-lightbox="image-1" data-title="My caption">
                    <img  src="lightbox/BlogImages/thumbs_grand_vitara_do.jpg" />
                </a>
                
                   <a href="lightbox/BlogImages/grand_vitara_posle.jpg" data-lightbox="image-1" data-title="My caption">
                    <img  src="lightbox/BlogImages/thumbs_grand_vitara_posle.jpg" />
                    </a>
               <a href="lightbox/BlogImages/grand-vitara_vnutri1.jpg" data-lightbox="image-1" data-title="My caption">
                    <img  src="lightbox/BlogImages/thumbs_grand-vitara_vnutri1.jpg" />
                    </a>
               <a href="lightbox/BlogImages/grand-vitara_vnutri2.jpg" data-lightbox="image-1" data-title="My caption">
                    <img  src="lightbox/BlogImages/thumbs_grand-vitara_vnutri2.jpg" />
                    </a>
             
               </div>
                <div>  Разобрав панель, наши мастера обнаружили вырванные «умельцами» и затем восстановленные дорожки. На рисунке видна весьма 
                неаккуратная работа. 
                Специалисты SPCOM перепрошили панель приборов и она снова заработала. На фото можно увидеть панель до и после.
                </div>
             <hr />
            
           </div>
           <footer>
           <span class='st_facebook_hcount' displayText='Facebook'></span>
                    <span class='st_twitter_hcount' displayText='Tweet'></span>
                    <%--<span class='st_linkedin_hcount' displayText='LinkedIn'></span>--%>
                    <span class='st_odnoklassniki_hcount' displayText='Odnoklassniki'></span>
                    <span class='st_vkontakte_hcount' displayText='Vkontakte'></span>
                    <span class='st_email_hcount' displayText='Email'></span>
           </footer>
        
       </div>

        <div class="BlogItem">
           <header>
              Ремонт панели приборов Toyota Prado
              
           </header>
           <div style="font-size:12px;">
                <div class="Date">
                     <img src="css/images/date.png" />
                22 августа 2015
               </div>
                <div class="User">
                   <img src="css/images/user.png" />
                SPCOM
               </div>
           </div>
                
           <div class="DConntent">
               
Также одним из последних гостей нашего сервиса был прекрасный  Toyota Prado, все с той же панелью приборов. 
Владелец не мог видеть адекватные данные по пробегу, т.к. цифры были видны через одну. Проблема была в элементарном 
отпаявшемся контакте.
Наши специалисты сделали свое дело и панель выглядит как новая. Доказательство на фото.
               <div  class="bIMG">
                <a href="lightbox/BlogImages/toyota_prado_remont_poneli_priborov_1.jpg" data-lightbox="image-1" data-title="My caption">
                    <img  src="lightbox/BlogImages/toyota_prado_remont_poneli_priborov_1.jpg" />
                </a>

               </div>
               
             <hr />
            
           </div>
           <footer>
           <span class='st_facebook_hcount' displayText='Facebook'></span>
                    <span class='st_twitter_hcount' displayText='Tweet'></span>
                    <%--<span class='st_linkedin_hcount' displayText='LinkedIn'></span>--%>
                    <span class='st_odnoklassniki_hcount' displayText='Odnoklassniki'></span>
                    <span class='st_vkontakte_hcount' displayText='Vkontakte'></span>
                    <span class='st_email_hcount' displayText='Email'></span>
           </footer>
        
       </div>
    </div>
</asp:Content>
