﻿
#Область ОбработчикиСобытий

Процедура ПриЗаписи(Отказ)
	
	Для Каждого ТекСтрока Из ВыполненныеРаботы Цикл
		Для каждого ВидВР Из Документы.ВнеплановыеРаботы.ПолучитьВидыВР() Цикл
			
			Если Не ЗначениеЗаполнено(ТекСтрока[ВидВР + "Идентификатор"]) Тогда
				Идентификатор = Новый УникальныйИдентификатор();
			Иначе
				Идентификатор = ТекСтрока[ВидВР + "Идентификатор"];
			КонецЕсли;
			
			Набор = РегистрыСведений.ЗарегистрированныеВР.СоздатьНаборЗаписей();
			Набор.Отбор.Автомобиль.Установить(Автомобиль);
			Набор.Отбор.РегламентнаяРабота.Установить(ТекСтрока.РегламентнаяРабота);
			Набор.Отбор.Идентификатор.Установить(Идентификатор);
			Набор.Прочитать();
			Набор.Очистить();
			
			Если ТекСтрока[ВидВР + "Статус"] = Перечисления.СтатусыВыполненияТО.Пройдено 
				И ЗначениеЗаполнено(ТекСтрока[ВидВР + "Период"]) Тогда

				Движение = Набор.Добавить();
				Движение.Период = ТекСтрока[ВидВР + "Период"];
				Движение.Автомобиль = Автомобиль;
				Движение.РегламентнаяРабота = ТекСтрока.РегламентнаяРабота;
				Движение.Сумма = ТекСтрока[ВидВР + "Сумма"];
				Движение.Идентификатор = Идентификатор;
			КонецЕсли;
			
			Набор.Записать(Истина);;
			
		КонецЦикла;
	КонецЦикла;
	
КонецПроцедуры

#КонецОбласти