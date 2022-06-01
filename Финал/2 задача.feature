﻿#language: ru
@Отчеты
@tree

Функционал: тестирование отчета Остатки

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: тестирование отчета Остатки без отборов
	И я закрываю все окна клиентского приложения
	* Открытие и настройка отчета
		Дано Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах?vrn=Основной"	
		И я нажимаю на кнопку с именем 'ФормаНастройкиОтчета'
		И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Значение" я выбираю точное значение 'Начало завтрашнего дня'
		И я нажимаю на кнопку с именем 'ФормаЗакончитьРедактирование'
		И я устанавливаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент6Использование'		
	* Проверка
		И я нажимаю на кнопку с именем 'ФормаСформировать'
		Тогда Табличный документ "Результат" равен макету "МакетОстаткиТовара" по шаблону

Сценарий: тестирование отчета Остатки с отбором по номенклатуре
	И я закрываю все окна клиентского приложения
	* Открытие и настройка отчета
		Дано Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах?vrn=Основной"	
		И я нажимаю на кнопку с именем 'ФормаНастройкиОтчета'
		И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Значение" я выбираю точное значение 'Начало завтрашнего дня'
		И я нажимаю на кнопку с именем 'ФормаЗакончитьРедактирование'
		И я устанавливаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент6Использование'			
		И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Значение" я выбираю по строке 'Торт'
		И я перехожу к следующему реквизиту
	* Проверка отчета
		И я нажимаю на кнопку с именем 'ФормаСформировать'
		Тогда Табличный документ "Результат" равен макету "МакетОстаткиТовараОтборПоТовару" по шаблону

Сценарий: тестирование отчета Остатки с отбором по складу
	И я закрываю все окна клиентского приложения
	* Открытие нужного варианта отчета
		Дано Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах?vrn=Основной"	
		И я нажимаю на кнопку с именем 'ФормаНастройкиОтчета'
		И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Значение" я выбираю точное значение 'Начало завтрашнего дня'
		И я нажимаю на кнопку с именем 'ФормаЗакончитьРедактирование'
		И я снимаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Использование'		
		И я устанавливаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Использование'
		И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение" я выбираю точное значение 'Малый'
	* Проверка отчета
		И я нажимаю на кнопку с именем 'ФормаСформировать'
		Тогда Табличный документ "Результат" равен макету "МакетОстаткиТовараОтборПоСкладу" по шаблону

Сценарий: тестирование отчета Остатки без группировки
	И я закрываю все окна клиентского приложения
	* Открытие и настройка отчета
		Дано Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах?vrn=Основной"	
		И я нажимаю на кнопку с именем 'ФормаНастройкиОтчета'
		И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Значение" я выбираю точное значение 'Начало завтрашнего дня'
		И я нажимаю на кнопку с именем 'ФормаЗакончитьРедактирование'
		И я снимаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент6Использование'		
	* Проверка
		И я нажимаю на кнопку с именем 'ФормаСформировать'
		Тогда Табличный документ "Результат" равен макету "МакетОстаткиТовараБезГруппировки" по шаблону		
				
	



