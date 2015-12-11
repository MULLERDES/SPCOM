<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WCarDump._default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderForNestedMasterPage" runat="server">
    <style>
        .Bloktext {
            float: right;
            width: 400px;
            height: auto;
            margin: 10px;
            color: white;
            text-align: justify;
        }

        .Paragrah {
            text-align: right;
            margin: 20px;
        }

        .Num1 {
            padding: 10px;
            background-color: rgba(37, 41, 53, 0.90);
            border: none;
            font-size: 18px;
            font-family: Arial;
            font-weight: bold;
        }

        .List1 {
            color: white;
            list-style: none;
            margin: 10px;
            margin-left: 10px;
        }

        .List2 {
            list-style: initial;
            margin: 10px;
            margin-left: 10px;
        }

        .btn1 {
            float: right;
            padding: 10px;
            color: white;
            background-color: rgba(37, 41, 53, 0.90);
            cursor: pointer;
        }
    </style>

    <div class="DefaultContainer">
        <div class="ContainerPage" id="mainpage">
            <style>
                .DText {
                    width: 400px;
                    height: 300px;
                    margin: 20px;
                    float: left;
                    border: solid 1px rgba(135, 135, 135, 0.11);
                    border-radius: 5px;
                }

                .DText2 {
                    width: 250px;
                    height: 200px;
                    text-align: justify;
                    margin: 15px;
                    float: left;
                    border: solid 1px rgba(135, 135, 135, 0.11);
                    border-radius: 5px;
                    background-color: rgb(235, 240, 245);
                    padding: 5px;
                }

                .super-spcom {
                    margin: 110px;
                    clear: both;
                    font-size: small;
                    text-align: center;
                }
            </style>
            <div style="margin-left: 40px;">
                <div class="DText">
                    <a href="ShopServicesDetails.aspx?id=1">
                        <img src="htmlServiceImages/Korrekciy.png" alt="Коррекция пробега" />
                    </a>
                </div>

                <div class="DText">
                    <a href="ShopProductDetail.aspx?id=25#rhead">
                        <img src="htmlServiceImages/NamotkaGlav.png" alt="Намотка спидометра CAN" />
                    </a>
                </div>
                <div class="DText2">
                    <a href="ShopServicesDetails.aspx?id=9">
                        <img src="htmlServiceImages/SRS1.png" alt="Ремонт блоков SRS" /></a>
                </div>

                <div class="DText2">
                    <a href="contacts.aspx#rhead">
                        <img src="htmlServiceImages/Map.png" alt="Карта, Киев " /></a>
                </div>
                <div class="DText2">
                    <a href="ShopServicesDetails.aspx?id=2">
                        <img src="htmlServiceImages/Diagnostika.png" alt="Диагностика автомобиля" /></a>
                </div>
            </div>
        </div>
    

        <div class="ContainerPage" id="PCorrection">
            <div style="width: 100%; background: url(test/phonCorrect.png) no-repeat; height: 400px; border: solid 1px;">
                <div class="Bloktext">
                    <div>
                        <ul>
                            <li class="List1">
                                <label class="Num1">1</label>
                                КОРРЕКЦИЯ ПРОБЕГА
                                  <ul class="List2">
                                      <li>автомобилей</li>
                                      <li>мотоциклов</li>
                                      <li>всего что движется и имеет одометр</li>
                                  </ul>
                                Эта процедура позволяет изменять показания щитка приборов
                                   (электронный спидометр / одометр), на те показания, которые необходимы нашим клиентам.   
                            </li>
                            <li class="List1">
                                <label class="Num1">2</label>
                                РЕМОНТ ПРИБОРНОЙ ПАНЕЛИ
                                    <ul class="List2">
                                        <li>после не корректного вмешательства</li>
                                        <li>непредвиденная поломка</li>
                                        <li>любые другие причины</li>
                                    </ul>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <a href="ShopServicesDetails.aspx?id=1">
                            <label class="btn1">Детальная информация</label>
                        </a>
                    </div>
                </div>

            </div>

        </div>
        <div class="ContainerPage" id="PDiagnostic">
            <div style="width: 100%; background: url(test/phonDiagnos.png) no-repeat; height: 400px; border: solid 1px;">
                <div class="Bloktext">
                    <div>
                        <div class="Paragrah">
                            АВТОДИАГНОСТИКА
                        </div>
                        <ul>
                            <li class="List1">
                                <label class="Num1">1</label>
                                Мы с точностью дадим ответы на следующие вопросы:
                                  <ul class="List2">
                                      <li>попадал ли автомобиль в ДТП?</li>
                                      <li>какие кузовные детали менялись ?</li>
                                      <li>ремонтировался ли автомобиль ?</li>
                                  </ul>
                            </li>
                            <li class="List1">
                                <label class="Num1">2</label>
                                Мы гарантируем:
                                    <ul class="List2">
                                        <li>проверить состояние двигателя</li>
                                        <li>провести компьютерную диагностику электронных систем автомобиля</li>
                                        <li>провести состояние коробки передач, подвески и др. системы автомобиля</li>
                                    </ul>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <a href="ShopServicesDetails.aspx?id=2">
                            <label class="btn1">Детальная информация</label>
                        </a>
                    </div>
                </div>

            </div>

        </div>

        <div class="ContainerPage" id="PAirBag">
            <div style="width: 100%; background: url(test/phonAirbag.png) no-repeat; height: 400px; border: solid 1px;">
                <div class="Bloktext">
                    <div>
                        <div class="Paragrah">
                            РЕМОНТ БЛОКОВ SRS Airbag
                        </div>
                        <ul>
                            <li class="List1">
                                <label class="Num1">1</label>
                                Потеря работоспособности блоков SRS может быть связана:
                                  <ul class="List2">
                                      <li>со сбоями данных во внутренней памяти</li>
                                      <li>с нарушениями в работе генератора</li>
                                      <li>с некорректно проведенными работами</li>
                                      <li>c плавной и долгой разрядкой аккумулятора</li>
                                      <li>c ошибками в периферии блока</li>
                                  </ul>
                            </li>
                        </ul>
                        <div class="Paragrah">Благодаря ремонту блоков управления AIRBAG происходит быстрое восстановление правильной работы системы SRS.</div>
                    </div>
                    <div>
                        <a href=" ShopServicesDetails.aspx?id=3">
                            <label class="btn1">Детальная информация</label>
                        </a>
                    </div>
                </div>

            </div>

        </div>

        <div class="ContainerPage" id="PPixeli">
            <div style="width: 100%; background: url(test/phonPixeli.png) no-repeat; height: 400px; border: solid 1px;">
                <div class="Bloktext">
                    <div>
                        <div class="Paragrah">
                            ВОССТАНОВЛЕНИЕ ПОГАСШИХ СЕГМЕНТОВ
                              <br />
                            НА ЭКРАНАХ BMW
                        </div>
                        <ul>
                            <li class="List1">
                                <label class="Num1">1</label>
                                Чаще всего с проблемой «битых» пикселей (пропадание пикселей на информационном дисплее приборного щитка и приемника) сталкиваются владельцы автомобилей BMW
                                  <ul class="List2">
                                      <li>Восстановление уберет дискомфорт</li>
                                      <li>Восстановится корректная информация</li>
                                      <li>Автомобиль снова станет идеальным</li>
                                  </ul>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <a href="ShopServicesDetails.aspx?id=5">
                            <label class="btn1">Детальная информация</label>
                        </a>
                    </div>
                </div>
            </div>

        </div>

        <div class="ContainerPage" id="PAmerican">
            <div style="width: 100%; background: url(test/phonAmerican.png) no-repeat; height: 400px; border: solid 1px;">
                <div class="Bloktext">
                    <div>
                        <div class="Paragrah">
                            ПЕРЕДЕЛКА АМЕРИКАНСКИХ АВТО 
                             <br />
                            ПОД ЕВРОПЕЙСКИЕ СТАНДАРТЫ
                        </div>
                        <ul>
                            <li class="List1">
                                <label class="Num1">1</label>
                                Перевод системы исчисления автомобиля:
                                  <ul class="List2">
                                      <li>Мили в километры</li>
                                      <li>Галлоны в литры</li>
                                      <li>Фарингейты в цельсии</li>
                                  </ul>
                            </li>
                            <li class="List1">
                                <label class="Num1">2</label>
                                Установка карт Украины на штатные системы навигации
                            </li>
                        </ul>
                    </div>
                    <div>
                        <a href="ShopServicesDetails.aspx?id=5">
                            <label class="btn1">Детальная информация</label>
                        </a>
                    </div>
                </div>
            </div>

        </div>
        <div class="ContainerPage" id="PElectronika">
            <div style="width: 100%; background: url(test/phonElectronika.png) no-repeat; height: 400px; border: solid 1px;">
                <div class="Bloktext">
                    <div>
                        <div class="Paragrah">
                            РЕМОНТ АВТОМОБИЛЬНОЙ ЭЛЕКТРОНИКИ
                        </div>
                        <ul>
                            <li class="List1">
                                <label class="Num1">1</label>
                                Электроника — это сердце вашего автомобиля, от нее зависят:
                                  <ul class="List2">
                                      <li>Система зажигания</li>
                                      <li>Система запуска</li>
                                      <li>Электронное управление подачи топлива</li>
                                  </ul>
                            </li>
                            <li class="List1">
                                <label class="Num1">2</label>
                                SPCOM проводит полную диагностику электроники
                                  <ul class="List2">
                                      <li>Устраняют ошибки в работе </li>
                                      <li>Сбои в программах</li>
                                      <li>Проводит замену и ремонт блоков и датчиков</li>
                                  </ul>
                            </li>

                        </ul>
                    </div>
                    <div>
                        <a href="ShopServicesDetails.aspx?id=5">
                            <label class="btn1">Детальная информация</label>
                        </a>
                    </div>
                </div>
            </div>

        </div>
        <div class="ContainerPage" id="PChipKey">
            <div style="width: 100%; background: url(test/phonChipKluch.png) no-repeat; height: 400px; border: solid 1px;">
                <div class="Bloktext">
                    <div>
                        <div class="Paragrah">
                            ИЗГОТОВЛЕНИЕ ЧИП-КЛЮЧЕЙ
                        </div>
                        <ul>
                            <li class="List1">
                                <label class="Num1">1</label>
                                Изготовление Чип-ключей:
                                   <ul class="List2">
                                       <li>На любую марку</li>
                                       <li>На любую модель</li>
                                       <li>Индивидуально программируется</li>
                                       <li>Индивидуально нарезается</li>
                                   </ul>
                            </li>
                            <li class="List1">
                                <label class="Num1">2</label>
                                Ключи изнотавливаются
                                  <ul class="List2">
                                      <li>Быстро </li>
                                      <li>Качественно</li>
                                      <li>Любой сложности</li>
                                  </ul>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <a href="ShopServicesDetails.aspx?id=5">
                            <label class="btn1">Детальная информация</label>
                        </a>
                    </div>
                </div>
            </div>

        </div>
        <div class="ContainerPage" id="PStartError">
            <div style="width: 100%; background: url(test/phonStartError.png) no-repeat; height: 400px; border: solid 1px;">
                <div class="Bloktext">
                    <div>
                        <div class="Paragrah">
                            УСТРАНЕНИЕ ОШИБКИ START ERROR
                        </div>
                        <ul>
                            <li class="List1">
                                <label class="Num1">1</label>
                                Главная причина появления такой ошибки – рассинхронизация иммобилайзера с блоком управления двигателя автомобиля, когда код отдаваемый на ECU не распознается.
                            </li>
                            <li class="List1">
                                <label class="Num1">2</label>
                                Специалисты SPCOM устраняют ошибку START ERROR путем синхронизации иммобилайзера и блока управления 
                                  
                            </li>
                            <li class="List1">
                                <label class="Num1">3</label>
                                Вам необходимы только:
                                   <ul>
                                       <li>блок управления двигателем
                                       </li>
                                       <li>иммобилайзер
                                       </li>
                                       <li>ключ
                                       </li>
                                   </ul>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <a href="ShopServicesDetails.aspx?id=5">
                            <label class="btn1">Детальная информация</label>
                        </a>
                    </div>
                </div>
            </div>

        </div>
        <div class="ContainerPage" id="PKrimistop">
            <div style="width: 100%; background: url(test/phonKrimistop.png) no-repeat; height: 400px; border: solid 1px;">
                <div class="Bloktext">
                    <div>
                        <div class="Paragrah">
                            ЗАЩИТА KRIMISTOP
                        </div>
                        <ul>
                            <li class="List1">
                                <label class="Num1">1</label>
                                Система защиты и маркировки Krimistop:
                                  <ul class="List2">
                                      <li>Это современно</li>
                                      <li>Это дешево</li>
                                      <li>Это действенно</li>
                                      <li>Позволяет бороться с нечестными СТО</li>
                                      <li>Не портит внешний вид</li>
                                  </ul>
                            </li>
                            <li class="List1">
                                <label class="Num1">2</label>
                                Угон промаркированного автомобиля является абсолютно невыгодным для воров, потому что такой автомобиль крайне затруднительно продать как целиком, так и по запасным частям. 
                            </li>
                        </ul>
                    </div>
                    <div>
                        <a href="ShopServicesDetails.aspx?id=5">
                            <label class="btn1">Детальная информация</label>
                        </a>
                    </div>
                </div>
            </div>

        </div>
        <div class="ContainerPage" id="PProgram">
            <div style="width: 100%; background: url(test/photoProgram.png) no-repeat; height: 400px; border: solid 1px;">
                <div class="Bloktext">
                    <div>
                        <div class="Paragrah">
                            ЧИП-ТЮНИНГ
                        </div>
                        <ul>
                            <li class="List1">
                                <label class="Num1">1</label>
                                Чип-тюнинг позволяет:
                                  <ul class="List2">
                                      <li>Увеличить крутящий момент</li>
                                      <li>Снять или сдвинуть ограничитель оборотов и скорости;</li>
                                      <li>Снизить расход топлива;</li>
                                      <li>Оптимизировать режим работы вентилятора охлаждения.</li>
                                      <li>Мощность и экономичность в полном тандеме;</li>
                                  </ul>
                            </li>

                        </ul>
                    </div>
                    <div>
                        <a href="ShopServicesDetails.aspx?id=5">
                            <label class="btn1">Детальная информация</label>
                        </a>
                    </div>
                </div>
            </div>

        </div>

        <div class="ContainerPage" id="PMagnitoli">
            <div style="width: 100%; background: url(test/phonMagnitoli.png) no-repeat; height: 400px; border: solid 1px;">
                <div class="Bloktext">
                    <div>
                        <div class="Paragrah">
                            РАСКОДИРОВКА МАГНИТОЛ
                        </div>
                        <ul>
                            <li class="List1">
                                <label class="Num1">1</label>
                                Раскодировкой называют процесс определения кода аппарата и разблокирование его,
                            </li>
                            <li class="List1">
                                <label class="Num1">2</label>
                                Если вы ещё не заблокировали аппарат, и не знаете верного кода, то лучше не вводите ничего, это несколько упростит раскодирование.
                            </li>
                            <li class="List1">
                                <label class="Num1">3</label>
                                Не стоит подбирать код магнитолы или пытаться раскодировать автомагнитолу самостоятельно
                            </li>
                        </ul>
                    </div>
                    <div>
                        <a href="ShopServicesDetails.aspx?id=5">
                            <label class="btn1">Детальная информация</label>
                        </a>
                    </div>
                </div>
            </div>

        </div>

        <div class="ContainerPage" id="PNamotki">
            <div style="width: 100%; background: url(test/phonNamotki.png) no-repeat; height: 400px; border: solid 1px;">
                <div class="Bloktext">
                    <div>
                        <div class="Paragrah">
                            ИЗГОТОВЛЕНИЕ НАМОТОК ПРОБЕГА
                        </div>
                        <ul>
                            <li class="List1">
                                <label class="Num1">1</label>
                                Преимущества прибора
                                  <ul class="List2">
                                      <li>Быстрое подключение через штатный разъем для диагностики автомобиля;</li>
                                      <li>Скорость намотки до 5000 км/ч. Можно быстро увеличить пробег;</li>
                                      <li>Подключение осуществляется без вмешательства в электропроводку;</li>
                                      <li>Подключение в салоне автомобиля.</li>
                                      <li>Доступная цена</li>
                                  </ul>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <a href="ShopServicesDetails.aspx?id=5">
                            <label class="btn1">Детальная информация</label>
                        </a>
                    </div>
                </div>
            </div>

        </div>
 <div class="super-spcom">
            SPCOM - автосервис на Дарнице, предлагает комплексные услуги по ремонту автомобильной электроники в Киеве. 
Наша сфера: компьютерная диагностика авто, ремонт спидометров, перепрошивка систем SRS,программирование ЧИП-Ключей,
продажа диагностического оборудования.
Хитом продаж является процедура коррекции пробега. Наши специалисты быстро и качетсвенно
выполняют смотку спидометра, намотку пробега, коррекцию одометра. 
Если Вам нужно смотать пробег в Киеве. Мы ждем Вас в нашем сервисе! 
Вас приятно удивят скорость работ и демократические цены.
        </div>
    </div>

       



</asp:Content>
