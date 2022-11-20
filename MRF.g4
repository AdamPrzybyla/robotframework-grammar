grammar MRF;
// Micro Robot Framework replacement

options 	{ caseInsensitive = true; language = Python3; }
prog		:   	( language_header NEWLINE )? ( section )+ ;
section		:	header_s ( statement )* 
		|	header_v ( definition )*
		|	header_k ( keyword )*
		|	header_c ( testcase )*
		|	header_co ( testcase | statement | definition | keyword )*
		;

statement	:	SLOWO ( SEPARATOR SLOWO )+ NEWLINE ;
definition	:	VARIABLE ( SEPARATOR ( SLOWO | VARIABLE ) )+ NEWLINE ;
testcase	:	SLOWO NEWLINE ( line )+ ;
line		:	(( SEPARATOR VARIABLE )+ ' '? '=' )? ( SEPARATOR ( VARIABLE | SLOWO ) )+ NEWLINE ;
keyword		:	( SEPARATOR SLOWO )+ NEWLINE ;

header_s	:	'*** settings ***' NEWLINE
		|	'*** ustawienia ***' NEWLINE
		|	'*** Nastavení ***'  NEWLINE
		|	'*** Instellingen ***' NEWLINE
		|	'*** Postavke ***' NEWLINE
		|	'*** Asetukset ***' NEWLINE
		|	'*** Paramètres ***' NEWLINE
		|	'*** Einstellungen ***' NEWLINE
		|	'*** Configurações ***' NEWLINE
		|	'*** Definições ***' NEWLINE
		|	'*** การตั้งค่า ***' NEWLINE
		|	'*** Ustawienia ***' NEWLINE
		|	'*** Налаштування ***' NEWLINE
		|	'*** Configuraciones ***' NEWLINE
		|	'*** Настройки ***' NEWLINE
		|	'*** 设置 ***' NEWLINE
		|	'*** 設置 ***' NEWLINE
		|	'*** Ayarlar ***' NEWLINE
		|	'*** Inställningar ***' NEWLINE
		|	'*** Setari ***' NEWLINE
		|	'*** Impostazioni ***' NEWLINE
		;


header_v	:	'*** Variables ***' NEWLINE
		|	'*** 变量 ***' NEWLINE
		|	'*** 变量文件 ***' NEWLINE
		|	'*** ชุดตัวแปร ***' NEWLINE
		|	'*** กำหนดตัวแปร ***' NEWLINE
		|	'*** Değişkenler ***' NEWLINE
		|	'*** Muuttujat ***' NEWLINE
		|	'*** Proměnná ***' NEWLINE
		|	'*** Proměnné ***' NEWLINE
		|	'*** Variabel ***' NEWLINE
		|	'*** Variabele ***' NEWLINE
		|	'*** Variabelen ***' NEWLINE
		|	'*** Variabila ***' NEWLINE
		|	'*** Variabile ***' NEWLINE
		|	'*** Variabili ***' NEWLINE
		|	'*** Variable ***' NEWLINE
		|	'*** Variablen ***' NEWLINE
		|	'*** Variabler ***' NEWLINE
		|	'*** Variáveis ***' NEWLINE
		|	'*** Variável ***' NEWLINE
		|	'*** Varijable ***' NEWLINE
		|	'*** Zmienne ***' NEWLINE
		|	'*** Змінна ***' NEWLINE
		|	'*** Змінні ***' NEWLINE
		|	'*** Переменные ***' NEWLINE
		|	'*** Променлива ***' NEWLINE
		|	'*** Променливи ***' NEWLINE
		;
header_k	:	'*** 关键字 ***' NEWLINE
		|	'*** 关键字标签 ***' NEWLINE
		|	'*** Anahtar Kelime Etiketleri ***' NEWLINE
		|	'*** Anahtar Kelimeler ***' NEWLINE
		|	'*** Avainsanan Tagit ***' NEWLINE
		|	'*** Avainsanat ***' NEWLINE
		|	'*** Cuvinte Cheie ***' NEWLINE
		|	'*** Etichete metode ***' NEWLINE
		|	'*** Etiquetas de palabras clave ***' NEWLINE
		|	'*** Etiquetas de Palavras-Chave ***' NEWLINE
		|	'*** Etiquette de mot-clé ***' NEWLINE
		|	'*** Keyword Tagovi ***' NEWLINE
		|	'*** Keyword Tags ***' NEWLINE
		|	'*** Keywords ***' NEWLINE
		|	'*** Klíčová slova ***' NEWLINE
		|	'*** Mots-clés ***' NEWLINE
		|	'*** Nyckelord ***' NEWLINE
		|	'*** Nyckelord taggar ***' NEWLINE
		|	'*** Palabras clave ***' NEWLINE
		|	'*** Palavras-Chave ***' NEWLINE
		|	'*** Parole Chiave ***' NEWLINE
		|	'*** Schlüsselwörter ***' NEWLINE
		|	'*** Schlüsselwortmarker ***' NEWLINE
		|	'*** Sleutelwoord Labels ***' NEWLINE
		|	'*** Sleutelwoorden ***' NEWLINE
		|	'*** Słowa kluczowe ***' NEWLINE
		|	'*** Štítky klíčových slov ***' NEWLINE
		|	'*** Tag Parola Chiave ***' NEWLINE
		|	'*** Znaczniki słowa kluczowego ***' NEWLINE
		|	'*** Етикети за ключови думи ***' NEWLINE
		|	'*** Ключевые слова ***' NEWLINE
		|	'*** Ключови думи ***' NEWLINE
		|	'*** Ключових слова ***' NEWLINE
		|	'*** Метки ключевых слов ***' NEWLINE
		|	'*** Теги ключових слів ***' NEWLINE
		;
header_c	:	'*** Test Cases ***' NEWLINE
		|	'*** Testovací případy ***' NEWLINE
		|	'*** Testgevallen ***' NEWLINE
		|	'*** Test Cases ***' NEWLINE
		|	'*** Testit ***' NEWLINE
		|	'*** Unités de test ***' NEWLINE
		|	'*** Testfälle ***' NEWLINE
		|	'*** Casos de Teste ***' NEWLINE
		|	'*** การทดสอบ ***' NEWLINE
		|	'*** Przypadki testowe ***' NEWLINE
		|	'*** Тест-кейси ***' NEWLINE
		|	'*** Casos de prueba ***' NEWLINE
		|	'*** Заголовки тестов ***' NEWLINE
		|	'*** 用例 ***' NEWLINE
		|	'*** 案例 ***' NEWLINE
		|	'*** Test Durumları ***' NEWLINE
		|	'*** Testfall ***' NEWLINE
		|	'*** Тестови случаи ***' NEWLINE
		|	'*** Cazuri De Test ***' NEWLINE
		|	'*** Casi Di Test ***' NEWLINE
		;
header_co	:	'*** 备注 ***'
		|	'*** टिप्पणी ***'
		|	'*** คำอธิบาย ***'
		|	'*** Comentarii ***'
		|	'*** Comentarios ***'
		|	'*** Comentários ***'
		|	'*** Commentaires ***'
		|	'*** Commenti ***'
		|	'*** Comments ***'
		|	'*** Komentáře ***'
		|	'*** Komentari ***'
		|	'*** Komentarze ***'
		|	'*** Kommentare ***'
		|	'*** Kommentarer ***'
		|	'*** Kommentit ***'
		|	'*** Opmerkingen ***'
		|	'*** Yorumlar ***'
		|	'*** Коментари ***'
		|	'*** Коментарів ***'
		|	'*** Комментарии ***'
		;

language_header	:	'Language: English'
		|	'Language: Czech'
		|	'Language: Dutch'
		|	'Language: Bosnian'
		|	'Language: Finnish'
		|	'Language: French'
		|	'Language: German'
		|	'Language: Brazilian Portuguese'
		|	'Language: Portuguese'
		|	'Language: Thai'
		|	'Language: Polish'
		|	'Language: Ukrainian'
		|	'Language: Spanish'
		|	'Language: Russian'
		|	'Language: Chinese Simplified'
		|	'Language: Chinese Traditional'
		|	'Language: Turkish'
		|	'Language: Swedish'
		|	'Language: Bulgarian'
		|	'Language: Romanian'
		|	'Language: Italian'
		|	'Language: Hindi'
		;
NEWLINE         :       [\r\n]+ ;
VARIABLE 	:	'${' NAME '}' 
	 	|	'@{' NAME '}' 
	 	|	'%{' NAME '}'
	 	|	'&{' NAME '}'
		;
SLOWO 		:	NAME ;
fragment NAME	:	LETTER+ ( ' ' LETTER+ )* ;
fragment LETTER :	[+$;^&%()?!|_a-z=0-9"*.,<>@:'/-]
		|	'\\'
		|	'['
		|	']'
		|	'{'
		|	'}'
		|	CYRILLIC
		|	POLISH
		|	FRENCH
		|	CZECH
		|	SPANISH
		|	ITALIAN
		|	URDU
		|	CHINESE
		|	BENGALI
		|	TAMIL
		|	GERMAN
		|	ROMANIAN
		|	JAPAN
		|	PORTUGESE
		;
SEPARATOR 	:	[\t ][\t ]+ 
		|	'\t'
		;
fragment CYRILLIC :	'\u0400'..'\u04FF' ;
fragment PORTUGESE :	[àáâãçéêíòóôõú] ;
fragment POLISH :	'\u0104'..'\u017C' | '\u00F3' ;
fragment FRENCH	:	[çàè] ;
fragment CZECH	:	[ížá] ;
fragment SPANISH :	[éù] ;
fragment ITALIAN :	[ì] ;
fragment URDU	:	'\u0600'..'\u06FF' ;
fragment CHINESE :	'\u4E00'..'\u9FFF' | [：，];
fragment BENGALI :	'\u0980'..'\u09FF' ;
fragment TAMIL	:	'\u0B82'..'\u0BCD' ;
fragment GERMAN	:	'\u00DF' | '\u00E4' | '\u00F6' ;
fragment ROMANIAN :	[ăâîșţ] ;
fragment JAPAN	:	'\u3000'..'\u303f'
		|	'\u3040'..'\u309f'
		|	'\u30a0'..'\u30ff'
		|	'\uff00'..'\uffef'
		|	'\u4e00'..'\u9faf'
		;
WS		:	'#' ( LETTER | '\t' | ' ' | '#' ) +  -> skip;
