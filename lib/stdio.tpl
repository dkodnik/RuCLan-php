{
	"inc": "<stdio.h>",
	"lex": {
		"ЗакрытьФайл": "fclose",
		"ОткрытьФайл": "fopen",
		"ПотокВДругойФайл": "freopen",
		"ОткрытьФайлПоДескриптору": "fdopen",
		"УдалитьФайл": "remove",
		"ПереименоватьФайл": "rename",
		"СместитьКурсор": "rewind",
		"ОткрытьВременныйФайл": "tmpfile",
		
		"": "clearerr",
		"": "feof",
		"": "ferror",
		"": "fflush",
		"": "fgetpos",
		"": "fgetc",	возвращает один символ из файла
		"": "fgets",	получает строку из файла (оканчивающуюся символом перевода строки или конца файла)
		"": "fputc",	записывает один символ в файл
		"": "fputs",	записывает строку в файл
		"": "ftell",	возвращает указатель позиции файла, который может быть передан fseek
		"": "fseek",	производит смещение от текущей позиции в файле на указанное количество байт, или от его начала или конца, в указанном направлении.
		"": "fsetpos",	устанавливает указатель позиции файла потока, ассоциированный с его первым аргументом (FILE *), как хранимый во втором его аргументе (fpos_t *)
		"": "fread",	читает данные из файла
		"": "fwrite",	записывает данные в файл
		"": "getc",	считывает и возвращает символ из данного потока и изменяет указатель позиции файла; позволяет использоваться как макрос с теми же эффектами, что и fgetc, кроме того, что может вычислять поток более одного раза
		"": "getchar",	имеет аналогичный эффект, что и getc(stdin)
		"": "gets",	считывает символы из stdin до символа перевода строки и хранит их в своём единственном аргументе
		"Сообщить": "printf",
		"СообщитьС": "vprintf",
		"СообщитьВФайл": "fprintf",
		"СообщитьВФайлС": "vfprintf",
		"СообщитьВПамять": "sprintf",
		"СообщитьВПамятьОгр": "snprintf",
		"СообщитьВПамятьС": "vsprintf",
		"": "perror",	записывает сообщение об ошибке в stderr
		"": "putc",	записывает и возвращает символ в поток и изменяет указатель позиции файла на него; можно использовать как макрос с теми же свойствами, что и fputc, кроме того, что он может обрабатывать поток более одного раза
		"": "putchar",
		"": "fputchar",	аналогичны putc(stdout)
		"": "scanf",
		"": "vscanf",	используются для ввода из стандартного потока ввода
		"": "fscanf",
		"": "vfscanf",	используются для ввода из файла
		"": "sscanf",
		"": "vsscanf",	используются для ввода из массива char (то есть Строка в языке Си)
		"": "setbuf",	????
		"": "setvbuf",	устанавливает режим буферизации для данного потока
		"": "tmpnam",	создает имя временного файла
		"": "ungetc",	помещает символ обратно в поток
		"": "puts",	выводит символьную строку в stdout
		"КОНЕЦФАЙЛА": "EOF"
	}
}