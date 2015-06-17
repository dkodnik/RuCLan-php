{
	"inc": "<stdio.h>",
	"lex": {
		"ЗакрытьФайл": {
			"ver": "",
			"org": "fclose",
			"call_org": "int fclose(FILE* stream)",
			"call": "",
			"dscrp": "Функция закрывает файл, связанный с значением %FILE*%, и очищает буфер. После вызова функции указатель на значение %FILE*% больше не связан с файлом и автоматически выделенная для буфера память освобождается.\n В случае успеха функция возвращает 0; в противном случае возвращается ненулевое значение. Попытка закрытия уже закрытого файла является ошибкой.",
			"demo": ""
		},
		"ЗакрытьВсеФайлы": {
			"ver": "C11",
			"org": "fcloseall",
			"call_org": "int fcloseall(void)",
			"call": "",
			"dscrp": "Функция закрывает все открытые потоки, кроме %stdin%, %stdout%, %stdaux%, %stdprn% и %stderr%.",
			"demo": ""
		},
		"ОткрытьФайл": {
			"ver": "",
			"org": "fopen",
			"call_org": "FILE* fopen(const char* fname, const char* mode)",
			"call": "",
			"dscrp": "Открывает файл для определённых типов чтения и записи",
			"demo": ""
		},
		"ПотокВДругойФайл": {
			"ver": "",
			"org": "freopen",
			"call_org": "FILE* freopen(const char* fname, const char* mode, FILE* stream)",
			"call": "",
			"dscrp": "Функция используется для связывания существующего потока с новым файлом.",
			"demo": ""
		},
		"ОткрытьФайлПоДескриптору": {
			"ver": "",
			"org": "fdopen",
			"call_org": "",
			"call": "",
			"dscrp": "Открывает файл для определённых типов чтения и записи",
			"demo": ""
		},
		"УдалитьФайл": {
			"ver": "",
			"org": "remove",
			"call_org": "",
			"call": "",
			"dscrp": "Удаляет файл (стирая его)",
			"demo": ""
		},
		"ПереименоватьФайл": {
			"ver": "",
			"org": "rename",
			"call_org": "",
			"call": "",
			"dscrp": "Переименовывает файл",
			"demo": ""
		},
		"СместитьКурсор": {
			"ver": "",
			"org": "rewind",
			"call_org": "",
			"call": "",
			"dscrp": "Работает аналогично %fseek%, вызванному для потока, со сбросом индикатора ошибок",
			"demo": ""
		},
		"ОткрытьВременныйФайл": {
			"ver": "",
			"org": "tmpfile",
			"call_org": "",
			"call": "",
			"dscrp": "Создает и открывает временный файл, удаляемый при закрытии через %fclose%",
			"demo": ""
		},
		"ОчиститьИндикаторыОшибок": {
			"ver": "",
			"org": "clearerr",
			"call_org": "",
			"call": "",
			"dscrp": "Очищает %EOF% и индикаторы ошибок для данного потока",
			"demo": ""
		},
		"ПроверкаНаКонецФайла": {
			"ver": "",
			"org": "feof",
			"call_org": "",
			"call": "",
			"dscrp": "Проверяет, установлен ли индикатор %EOF% для данного потока",
			"demo": ""
		},
		"ПроверкаИндикатораОшибок": {
			"ver": "",
			"org": "ferror",
			"call_org": "",
			"call": "",
			"dscrp": "Проверяет, установлен ли индикатор ошибок для данного потока",
			"demo": ""
		},
		"ПринудительноЗаписать": {
			"ver": "",
			"org": "fflush",
			"call_org": "",
			"call": "",
			"dscrp": "Принудительно записывает вывод, предназначенный для помещения в буфер, в файл, ассоциированный с данным потоком",
			"demo": ""
		},
		"ПолучитьПозициюУказателяТ": {
			"ver": "",
			"org": "fgetpos",
			"call_org": "",
			"call": "",
			"dscrp": "Сохраняет позицию указателя файла потока, ассоциированный с его первым аргументом %FILE*%, в его второй аргумент %fpos_t*%",
			"demo": ""
		},
		"ПрочитатьСимвол": {
			"ver": "",
			"org": "fgetc",
			"call_org": "",
			"call": "",
			"dscrp": "Возвращает один символ из файла",
			"demo": ""
		},
		"ПрочитатьСтроку": {
			"ver": "",
			"org": "fgets",
			"call_org": "",
			"call": "",
			"dscrp": "Получает строку из файла (оканчивающуюся символом перевода строки или конца файла)",
			"demo": ""
		},
		"ЗаписатьСимвол": {
			"ver": "",
			"org": "fputc",
			"call_org": "",
			"call": "",
			"dscrp": "Записывает один символ в файл",
			"demo": ""
		},
		"ЗаписатьСтроку": {
			"ver": "",
			"org": "fputs",
			"call_org": "",
			"call": "",
			"dscrp": "Записывает строку в файл",
			"demo": ""
		},
		"ПолучитьПозициюУказателя": {
			"ver": "",
			"org": "ftell",
			"call_org": "",
			"call": "",
			"dscrp": "Возвращает указатель позиции файла, который может быть передан %fseek%",
			"demo": ""
		},
		"УстановитьПозициюУказателя": {
			"ver": "",
			"org": "fseek",
			"call_org": "",
			"call": "",
			"dscrp": "Производит смещение от текущей позиции в файле на указанное количество байт, или от его начала или конца, в указанном направлении",
			"demo": ""
		},
		"УстановитьПозициюУказателяТ": {
			"ver": "",
			"org": "fsetpos",
			"call_org": "",
			"call": "",
			"dscrp": "Устанавливает указатель позиции файла потока, ассоциированный с его первым аргументом %FILE*%, как хранимый во втором его аргументе %fpos_t*%",
			"demo": ""
		},
		"ПрочитатьДанные": {
			"ver": "",
			"org": "fread",
			"call_org": "",
			"call": "",
			"dscrp": "Читает данные из файла",
			"demo": ""
		},
		"ЗаписатьДанные": {
			"ver": "",
			"org": "fwrite",
			"call_org": "",
			"call": "",
			"dscrp": "Записывает данные в файл",
			"demo": ""
		},
		"ПрочитатьСимволП": {
			"ver": "",
			"org": "getc",
			"call_org": "",
			"call": "",
			"dscrp": "Считывает и возвращает символ из данного потока и изменяет указатель позиции файла; позволяет использоваться как макрос с теми же эффектами, что и %fgetc%, кроме того, что может вычислять поток более одного раза",
			"demo": ""
		},
		"ПрочитатьСимволП2": {
			"ver": "",
			"org": "getchar",
			"call_org": "",
			"call": "",
			"dscrp": "Имеет аналогичный эффект, что и %getc% ( %stdin% )",
			"demo": ""
		},
		"ПрочитатьСтрокуВБуфер": {
			"ver": "",
			"org": "gets",
			"call_org": "",
			"call": "",
			"dscrp": "Считывает символы из %stdin% до символа перевода строки и хранит их в своём единственном аргументе",
			"demo": ""
		},
		"СообщитьВФормате": {
			"ver": "",
			"org": "printf",
			"call_org": "",
			"call": "",
			"dscrp": "Используется для вывода в стандартный поток вывода",
			"demo": ""
		},
		"СообщитьВФорматеС": {
			"ver": "",
			"org": "vprintf",
			"call_org": "",
			"call": "",
			"dscrp": "Используется для вывода в стандартный поток вывода",
			"demo": ""
		},
		"СообщитьВФорматеВФайл": {
			"ver": "",
			"org": "fprintf",
			"call_org": "",
			"call": "",
			"dscrp": "Используется для вывода в файл",
			"demo": ""
		},
		"СообщитьВФорматеВФайлС": {
			"ver": "",
			"org": "vfprintf",
			"call_org": "",
			"call": "",
			"dscrp": "Используется для вывода в файл",
			"demo": ""
		},
		"СообщитьВФорматеВПамять": {
			"ver": "",
			"org": "sprintf",
			"call_org": "",
			"call": "",
			"dscrp": "Используется для вывода в массив типа %char%, т.е. в строку",
			"demo": ""
		},
		"СообщитьВФорматеВПамятьОгр": {
			"ver": "",
			"org": "snprintf",
			"call_org": "",
			"call": "",
			"dscrp": "Используется для вывода в массив типа %char%, т.е. в строку",
			"demo": ""
		},
		"СообщитьВФорматеВПамятьС": {
			"ver": "",
			"org": "vsprintf",
			"call_org": "",
			"call": "",
			"dscrp": "Используется для вывода в массив типа %char%, т.е. в строку",
			"demo": ""
		},
		"СообщитьОбОшибке": {
			"ver": "",
			"org": "perror",
			"call_org": "",
			"call": "",
			"dscrp": "Записывает сообщение об ошибке в %stderr%",
			"demo": ""
		},
		"ЗаписатьСимволП": {
			"ver": "",
			"org": "putc",
			"call_org": "",
			"call": "",
			"dscrp": "Записывает и возвращает символ в поток и изменяет указатель позиции файла на него; можно использовать как макрос с теми же свойствами, что и %fputc%, кроме того, что он может обрабатывать поток более одного раза",
			"demo": ""
		},
		"ЗаписатьСимволП2": {
			"ver": "",
			"org": "putchar",
			"call_org": "",
			"call": "",
			"dscrp": "Аналогично %putc% ( %stdout% )",
			"demo": ""
		},
		"ЗаписатьСимволП3": {
			"ver": "",
			"org": "fputchar",
			"call_org": "",
			"call": "",
			"dscrp": "Аналогично %putc% ( %stdout% )",
			"demo": ""
		},
		"ВвестиСКлавиатуры": {
			"ver": "",
			"org": "scanf",
			"call_org": "",
			"call": "",
			"dscrp": "Используется для ввода из стандартного потока ввода",
			"demo": ""
		},
		"ВвестиСКлавиатурыС": {
			"ver": "",
			"org": "vscanf",
			"call_org": "",
			"call": "",
			"dscrp": "Используется для ввода из стандартного потока ввода",
			"demo": ""
		},
		"ВвестиСФайла": {
			"ver": "",
			"org": "fscanf",
			"call_org": "",
			"call": "",
			"dscrp": "Используется для ввода из файла",
			"demo": ""
		},
		"ВвестиСФайлаС": {
			"ver": "",
			"org": "vfscanf",
			"call_org": "",
			"call": "",
			"dscrp": "Используется для ввода из файла",
			"demo": ""
		},
		"ВвестиССтроки": {
			"ver": "",
			"org": "sscanf",
			"call_org": "",
			"call": "",
			"dscrp": "Используется для ввода из массива %char%, т.е. - строки",
			"demo": ""
		},
		"ВвестиССтрокиС": {
			"ver": "",
			"org": "vsscanf",
			"call_org": "",
			"call": "",
			"dscrp": "Используется для ввода из массива %char%, т.е. - строки",
			"demo": ""
		},
		"Буферизация": {
			"ver": "",
			"org": "setbuf",
			"call_org": "void setbuf(FILE* stream, char* buf)",
			"call": "",
			"dscrp": "Функция используется либо для указания буфера, который будет использоваться ука­занным потоком, либо, при вызове с нулевым значением второго аргумента, для отмены буфериза­ции. Если должен быть указан буфер, определенный программистом, он должен иметь длину в %BUFSIZ% символов.\n Функция не возвращает никакого значения.",
			"demo": ""
		},
		"БуферизацияСРежимом": {
			"ver": "",
			"org": "setvbuf",
			"call_org": "",
			"call": "",
			"dscrp": "Устанавливает режим буферизации для данного потока",
			"demo": ""
		},
		"ИмяВременногоФайла": {
			"ver": "",
			"org": "tmpnam",
			"call_org": "",
			"call": "",
			"dscrp": "Создает имя временного файла",
			"demo": ""
		},
		"ЗаменитьПрочитанныйСимвол": {
			"ver": "",
			"org": "ungetc",
			"call_org": "",
			"call": "",
			"dscrp": "Помещает символ обратно в поток",
			"demo": ""
		},
		"Сообщить": {
			"ver": "",
			"org": "puts",
			"call_org": "",
			"call": "",
			"dscrp": "Выводит символьную строку в %stdout%",
			"demo": ""
		},
		"КОНЕЦФАЙЛА": {
			"ver": "",
			"org": "EOF",
			"call_org": "",
			"call": "",
			"dscrp": "Отрицательное целое число типа %int%, используемое для обозначения конца файла",
			"demo": ""
		},
		"РАЗМЕРБУФФЕРА": {
			"ver": "",
			"org": "BUFSIZ",
			"call_org": "",
			"call": "",
			"dscrp": "Целое число, равное размеру буфера, используемое функцией %setbuf%",
			"demo": ""
		},
		"ИМЯФАЙЛА_МАКСИМАЛЬНО": {
			"ver": "",
			"org": "FILENAME_MAX",
			"call_org": "",
			"call": "",
			"dscrp": "Размер массива %char%, достаточного для хранения имени любого файла, который может быть открыт",
			"demo": ""
		},
		"ОТКРЫТЫХФАЙЛОВ_МАКСИМАЛЬНО": {
			"ver": "",
			"org": "FOPEN_MAX",
			"call_org": "",
			"call": "",
			"dscrp": "Число файлов, которые могут быть открыты одновременно; как минимум равно 8",
			"demo": ""
		},
		"_ПБВВ": {
			"ver": "",
			"org": "_IOFBF",
			"call_org": "",
			"call": "",
			"dscrp": "Сокращение от «input/output fully buffered» (полностью буферируемый ввод-вывод); целое число, которое может быть передано функции %setvbuf% для запроса блока буфера ввода и вывода для открытого потока",
			"demo": ""
		},
		"_ЛБВВ": {
			"ver": "",
			"org": "_IOLBF",
			"call_org": "",
			"call": "",
			"dscrp": "Сокращение от «input/output line buffered» (линейно буферируемый ввод-вывод); целое число, которое может быть передано функции %setvbuf% для запроса линии буфера ввода и вывода для открытого потока",
			"demo": ""
		},
		"_НБВВ": {
			"ver": "",
			"org": "_IONBF",
			"call_org": "",
			"call": "",
			"dscrp": "Сокращение от «input/output not buffered» (не буферируемый ввод-вывод); целое число, которое может быть передано функции %setvbuf% для запроса небуферированого ввода и вывода для открытого потока",
			"demo": ""
		},
		"ИМЯВРЕМЕННОГОФАЙЛА_МАКСИМАЛЬНО": {
			"ver": "",
			"org": "L_tmpnam",
			"call_org": "",
			"call": "",
			"dscrp": "Размер массива %char%, достаточного для хранения временного имени файла, сгенерированного функцией %tmpnam%",
			"demo": ""
		},
		"ПУСТОЙ": {
			"ver": "",
			"org": "NULL",
			"call_org": "",
			"call": "",
			"dscrp": "Макрос, расширяющий константу нулевого указателя; то есть константу, представляющую значение указателя, гарантированно указывающего несуществующий адрес объекта в памяти",
			"demo": ""
		},
		"ПОЗИЦИЯ_ОТ_ТЕКУЩЕЙ": {
			"ver": "",
			"org": "SEEK_CUR",
			"call_org": "",
			"call": "",
			"dscrp": "Целое число, которое может быть передано функции %fseek% для запроса позиционирования относительно текущей позиции в файле",
			"demo": ""
		},
		"ПОЗИЦИЯ_ОТ_КОНЦА": {
			"ver": "",
			"org": "SEEK_END",
			"call_org": "",
			"call": "",
			"dscrp": "Целое число, которое может быть передано функции %fseek% для запроса позиционирования относительно конца файла",
			"demo": ""
		},
		"ПОЗИЦИЯ_ОТ_НАЧАЛА": {
			"ver": "",
			"org": "SEEK_SET",
			"call_org": "",
			"call": "",
			"dscrp": "Целое число, которое может быть передано функции %fseek% для запроса позиционирования относительно начала файла",
			"demo": ""
		},
		"ВРЕМЕННЫХФАЙЛОВ_МАКСИМАЛЬНО": {
			"ver": "",
			"org": "TMP_MAX",
			"call_org": "",
			"call": "",
			"dscrp": "Максимальное число уникальных имен файлов, генерируемых функцией %tmpnam%; как минимум 25",
			"demo": ""
		},
		"ФАЙЛ": {
			"ver": "",
			"org": "FILE*",
			"call_org": "",
			"call": "",
			"dscrp": "",
			"demo": ""
		},
		"пСтдВвод": {
			"ver": "",
			"org": "stdin",
			"call_org": "",
			"call": "",
			"dscrp": "Указатель на %FILE*%, указывающий на стандартный поток ввода (обычно клавиатура)",
			"demo": ""
		},
		"пСтдВывод": {
			"ver": "",
			"org": "stdout",
			"call_org": "",
			"call": "",
			"dscrp": "Указатель на %FILE*%, указывающий на стандартный поток вывода (обычно дисплей терминала)",
			"demo": ""
		},
		"пСтдОшибки": {
			"ver": "",
			"org": "stderr",
			"call_org": "",
			"call": "",
			"dscrp": "Указатель на %FILE*%, указывающий на стандартный поток ошибок (обычно дисплей терминала)",
			"demo": ""
		},
		"пПоз": {
			"ver": "",
			"org": "fpos_t",
			"call_org": "",
			"call": "",
			"dscrp": "Не массивообразный тип, способный уникально идентифицировать позицию каждого байта в файле",
			"demo": ""
		},
		"пРазм": {
			"ver": "",
			"org": "size_t",
			"call_org": "",
			"call": "",
			"dscrp": "Беззнаковый целый тип, являющийся типом результата выполнения оператора %sizeof%",
			"demo": ""
		}
	}
}