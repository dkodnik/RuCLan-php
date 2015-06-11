# RuCLan-php
RuCLan - Russian C Language (php реализация)

Конвертация "C"-подобного кода на русском языке (как 1С язык) в "C"-код


    #Модуль <stdio>
    #ПодключитьФайл <string.h>

    #ОпределитьКонстанту ЧИСЛО_ПИ 3.14 //Некий комментарий №1
    целое переменнаяТест = 1;

    /*Мой комментарий №2*/
    строка приветствие = "Привет Мир!\n"; /* Мой
    комментарий 
    №3*/

    дробное ДелениеДвухЧисел(целое Число1, целое Число2) {
	    Возврат	(дробное)Число1/Число2;
    }

    пустой ПриНачалеРаботыСистемы() {
        Сообщить(приветствие);
        СообщитьВФормате("Число Число*Пи = %f\n", (ЧИСЛО_ПИ*ДелениеДвухЧисел(5,3)));
    }

## Уточнение по синтаксису:
1 - В качестве лексического аналога взят 1С-Язык.
2 - Команды операторов пишутся с заглавной буквы (напр.: "Пока"), а команды работы объявления переменных с маленькой (напр.: "целое").