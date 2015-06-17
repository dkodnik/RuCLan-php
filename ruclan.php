<?php

function translit($str,$tp=0)
{
	$rus = array('А', 'Б', 'В', 'Г', 'Д', 'Е', 'Ё', 'Ж', 'З', 'И', 'Й', 'К', 'Л', 'М', 'Н', 'О', 'П', 'Р', 'С', 'Т', 'У', 'Ф', 'Х', 'Ц', 'Ч', 'Ш', 'Щ', 'Ъ', 'Ы', 'Ь', 'Э', 'Ю', 'Я', 'а', 'б', 'в', 'г', 'д', 'е', 'ё', 'ж', 'з', 'и', 'й', 'к', 'л', 'м', 'н', 'о', 'п', 'р', 'с', 'т', 'у', 'ф', 'х', 'ц', 'ч', 'ш', 'щ', 'ъ', 'ы', 'ь', 'э', 'ю', 'я');
	
	$lat = array('A', 'B', 'V', 'G', 'D', 'E', 'E', 'Gh', 'Z', 'I', 'Y', 'K', 'L', 'M', 'N', 'O', 'P', 'R', 'S', 'T', 'U', 'F', 'H', 'C', 'Ch', 'Sh', 'Sch', 'Y', 'Y', 'Y', 'E', 'Yu', 'Ya', 'a', 'b', 'v', 'g', 'd', 'e', 'e', 'gh', 'z', 'i', 'y', 'k', 'l', 'm', 'n', 'o', 'p', 'r', 's', 't', 'u', 'f', 'h', 'c', 'ch', 'sh', 'sch', 'y', 'y', 'y', 'e', 'yu', 'ya');

	if($tp!=2)
		return str_replace($rus, $lat, $str);
	else /*нижний регистр*/
		return mb_strtolower(str_replace($rus, $lat, $str));
}

// Обработка поиска в строке текста, и менять все через транслит за исключением содержимого между символами ""
function obr_text($str)
{
	$n_str="";
	$openStroka=false;
	$srd=$str;
	$amnstr=0;
	$amnstr=substr_count($str,'"');
	for ($kmz=0; $kmz < $amnstr ; $kmz++)
	{
		$pos=strpos($srd,'"');
		$tmp_str=mb_substr($srd, 0, $pos+1);
		if(!$openStroka)
			$n_str .= translit($tmp_str);
		else
			$n_str .= $tmp_str;
		
		$srd = str_replace($tmp_str, "", $srd); // удаляем подстроку
		
		if(!$openStroka)
			$openStroka=true;
		else
			$openStroka=false;
	}
	$n_str .= translit($srd);
	$str=$n_str;
	return $str;
}

// Загрузка файла tpl в формате JSON
function load_tpl($filename)
{
	$filename_full="lib/".$filename.".tpl";
	$f_tpl = fopen($filename_full,"r+");
	$txt_tpl=fread($f_tpl,filesize($filename_full));
	fclose($f_tpl);
	//echo($txt_tpl);
	return json_decode($txt_tpl);
}

//var_dump($argv);

if(!isset($argv[1]))
{
	echo "RuCLan - Russian C Language v.0.0.1\n";
	echo "php ruclan.php file_In file_Out\n";
	exit (0);
}

$filename = $argv[1];//"test.rc";

if(!isset($argv[2]))
	$filename2 = $argv[1].".c";
else
	$filename2 = $argv[2];//"test.c";

// базовые слова
$base_data=load_tpl("std_c");
$base_lex=$base_data->lex;

/*var_dump($base_data);
exit(0);*/

// стандартные расширяющие модули - грузим из файлов исходников
$ext_lex=array();

$count = 0;
$file = fopen($filename,"r+");
$outf = fopen($filename2,"w");
if(!$file)
{
	echo "Ошибка открытия файла 1\n";
	exit (0);
}

if (!$outf)
{
	echo "Ошибка открытия файла 2\n";
	exit(0);
}

// Читаем в переменную $text содержимое всего файла.
$text=fread($file,filesize($filename));
$text = preg_replace('#/\*.*\*/#sUi', '', $text); // удаляем комментарии между /* ---- */
$text = preg_replace('#//.*[\r\n]#sUi', "\n", $text); // удаляем комментарии между // ---- \n
$text_ar=explode("\n", $text);


// Подключаем модули стандартные
//#Модуль <name>\n
foreach ($text_ar as $kArr => $valueArr)
{
	$regModule='/#Модуль(.*)<(.*)>(.*)/i';
	if(preg_match($regModule, $valueArr))
	{
		$moduleName="";
		$moduleName = preg_replace($regModule,"$2", $valueArr);
		$text_ar[$kArr] = preg_replace($regModule,"", $valueArr);
		$ext_temp=load_tpl($moduleName);
		fwrite($outf, "#include ".$ext_temp->inc."\n"); // подключаем C/C++ библиотеку
		$ext_lex = array_merge($ext_lex, (array)$ext_temp->lex);
	}
}

// Перебор строк и разбор
foreach ($text_ar as $kArr => $valueArr)
{
	$str = $valueArr;

	// I - ключевые слова из словаря
	// I.1 - Базовые
	foreach ($base_lex as $key => $value)
	{

		$findstr = $key;
		$tostr  = $value->org;

		$str=str_replace($findstr, $tostr,  $str);
	}
	// I.2 - От расширений
	foreach ($ext_lex as $key => $value)
	{

		$findstr = $key;
		$tostr  = $value->org;

		$str=str_replace($findstr, $tostr,  $str);
	}

	// II - транслит имени переменных с исключением текстовой подстраки
	// !!!! - главное условие, весь текст должен быть между <"> а не между <'>
	// количество входнений <">
	if(substr_count($str,'"')>0)
	{
		$str = obr_text($str);
	}
	else
		$str = translit($str);
	
	fwrite($outf, $str."\n");
}

fclose($file);
fclose($outf);
echo "Ок!\n";