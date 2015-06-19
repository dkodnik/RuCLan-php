{
	"inc": "<string.h>",
	"lex": {

		"КопироватьЧастьСтроки": {
			"ver": "",
			"org": "memcpy",
			"call_org": "void* memcpy(char* dest, const char* src, size_t n)",
			"call": "",
			"dscrp": "Копирует 'n' байт из области памяти 'src' в 'dest', которые не должны пересекаться, в противном случае результат неопределен (возможно как правильное копирование, так и нет)",
			"demo": ""
		},

		"ПереместитьЧастьСтроки": {
			"ver": "",
			"org": "memmove",
			"call_org": "void* memmove(char* dest, const char* src, size_t n)",
			"call": "",
			"dscrp": "Копирует 'n' байт из области памяти 'src' в 'dest', которые в отличие от memcpy могут перекрываться",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "memchr",
			"call_org": "void* memchr(const char* s, char c, size_t n)",
			"call": "",
			"dscrp": "Возвращает указатель на первое вхождение 'c' в первых 'n' байтах 's', или %NULL%, если не найдено",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "memcmp",
			"call_org": "int memcmp(const char* s1, const char* s2, size_t n)",
			"call": "",
			"dscrp": "Сравнивает первые 'n' символов в областях памяти",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "memset",
			"call_org": "void* memset(char* , int z, size_t)",
			"call": "",
			"dscrp": "Заполняет область памяти одним байтом 'z'",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strcat",
			"call_org": "char* strcat(char* dest, const char* src)",
			"call": "",
			"dscrp": "Дописывает строку 'src' в конец 'dest'",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strncat",
			"call_org": "char* strncat(char* dest, const char* src, size_t n)",
			"call": "",
			"dscrp": "Дописывает не более 'n' начальных символов строки 'src' (или всю 'src', если ее длина меньше) в конец 'dest'",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strchr",
			"call_org": "char* strchr(const char* , int)",
			"call": "",
			"dscrp": "Ищет символ в строке, начиная с головы и возвращает его адрес, или %NULL% если не найден",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strrchr",
			"call_org": "char* strrchr(const char* , int)",
			"call": "",
			"dscrp": "Ищет символ в строке, начиная с хвоста и возвращает его адрес, или %NULL% если не найден",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strcmp",
			"call_org": "int strcmp(const char* , const char* )",
			"call": "",
			"dscrp": "Лексикографическое сравнение строк (возвращает '0', если строки одинаковые, положительное, если первая строка больше, и отрицательное, если меньше)",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strncmp",
			"call_org": "int strncmp(const char* , const char* , size_t)",
			"call": "",
			"dscrp": "Лексикографическое сравнение первых 'n' байтов строк",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strcoll",
			"call_org": "int strcoll(const char* , const char* )",
			"call": "",
			"dscrp": "Лексикографическое сравнение строк с учетом локали collating order",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strcpy",
			"call_org": "char* strcpy(char* toHere, const char* fromHere)",
			"call": "",
			"dscrp": "Копирует строку из одного места в другое",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strncpy",
			"call_org": "char* strncpy(char* toHere, const char* fromHere, size_t n)",
			"call": "",
			"dscrp": "Копирует до 'n' байт строки из одного места в другое",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strerror",
			"call_org": "char* strerror(int)",
			"call": "",
			"dscrp": "Возвращает строковое представление сообщения об ошибке %errno% (не потоко-безопасная)",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strlen",
			"call_org": "size_t strlen(const char* )",
			"call": "",
			"dscrp": "Возвращает длину строки",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strspn",
			"call_org": "size_t strspn(const char* s, const char* accept)",
			"call": "",
			"dscrp": "Определяет максимальную длину начальной подстроки, состоящей исключительно из байтов, перечисленных в 'accept'",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strcspn",
			"call_org": "size_t strcspn(const char* s, const char* reject)",
			"call": "",
			"dscrp": "Определяет максимальную длину начальной подстроки, состоящей исключительно из байтов, не перечисленных в 'reject'",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strpbrk",
			"call_org": "char* strpbrk(const char* s, const char* accept)",
			"call": "",
			"dscrp": "Находит первое вхождение любого символа, перечисленного в 'accept'",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strstr",
			"call_org": "char* strstr(const char* haystack, const char* needle)",
			"call": "",
			"dscrp": "Находит первое вхождение строки 'needle' в 'haystack'",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strtok",
			"call_org": "char* strtok(char* , const char* )",
			"call": "",
			"dscrp": "Преобразует строку в последовательность токенов. Не потоко-безопасная, не реентерабельная",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strxfrm",
			"call_org": "size_t strxfrm(char* dest, const char* src, size_t n)",
			"call": "",
			"dscrp": "Создает оттранслированную копию строки, такую, что дословное сравнение ее (%strcmp%) будет эквивалентно сравнению с коллатором",
			"demo": ""
		},




		"": {
			"ver": "",
			"org": "strdup",
			"call_org": "char* strdup(const char* )",
			"call": "",
			"dscrp": "Создает копию строки и возвращает указатель на нее",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strcpy_s",
			"call_org": "errno_t strcpy_s(char* restrict s1, rsize_t s1max, const char* restrict s2)",
			"call": "",
			"dscrp": "Вариант %strcpy% с контролем границ",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "mempcpy",
			"call_org": "void* mempcpy(void* dest, const void* src, size_t n)",
			"call": "",
			"dscrp": "Вариант %memcpy% с возвратом байта, следующего за последним записанным",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "memccpy",
			"call_org": "void* memccpy(void* dest, const void* src, int c, size_t n)",
			"call": "",
			"dscrp": "Копирует до 'n' байт из одной области памяти в другую (не должны пересекаться), останавливаясь при встрече символа 'c'",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strerror_r",
			"call_org": "int* strerror_r(int, char* , size_t)",
			"call": "",
			"dscrp": "Возвращает строкое представление кода ошибки %errno% (потоко-безопасная; небольшая разница в семантике между GNU и XSI/POSIX)",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strlcpy",
			"call_org": "size_t strlcpy(char* dest, const char* src, size_t n)",
			"call": "",
			"dscrp": "Вариант %strcpy% с контролем границ",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strtok_r",
			"call_org": "char* strtok_r(char* , const char* , char* *)",
			"call": "",
			"dscrp": "Потоко-безопасная реентерабельная версия %strtok%",
			"demo": ""
		},

		"": {
			"ver": "",
			"org": "strsignal",
			"call_org": "char* strsignal(int sig)",
			"call": "",
			"dscrp": "По аналогии с %strerror%, возвращает строковое представление сигнала 'sig' (не потоко-безопасная)",
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