﻿
#Область СлужебныйПрограммныйИнтерфейс

Функция ОтчетныеПоказатели() Экспорт
	
	//ПланТО = ТаблицаПланТО(ТекущаяДата());
	//
	//ВидыТекущихТО = Новый Массив;
	//ВидыТекущихТО.Добавить(ИмяПрошлогоТО());
	//ВидыТекущихТО.Добавить(ИмяТекущееТО());
	//
	//НевыполненныеТО = 0;
	//Для каждого СтрокаТО Из ПланТО Цикл
	//	Для каждого ВидТО Из ВидыТекущихТО Цикл
	//		Если Не ЗначениеЗаполнено(СтрокаТО[ВидТО + "ПоФакту"]) 
	//			И СтрокаТО[ВидТО + "Статус"] = Перечисления.СтатусыВыполненияТО.НеПройдено
	//			И СтрокаТО[ВидТО + "Номер"] > 0 Тогда
	//			НевыполненныеТО = НевыполненныеТО + 1;
	//		КонецЕсли;
	//	КонецЦикла;
	//КонецЦикла;
	//
	Показатели = Новый Соответствие;
	Показатели.Вставить(НСтр("ru = 'Невыполненные ТО:'; en = 'Not passed services:'"), 0);
	
	Возврат Показатели;
	
КонецФункции

#КонецОбласти