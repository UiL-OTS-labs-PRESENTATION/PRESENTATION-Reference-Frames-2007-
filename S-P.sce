scenario = "Reference frame experiment";

active_buttons = 2;
#hieronder geef je aan wat de codes zijn voor de response-knoppen
# 0,1 verwijst naar de knoppenkast, de meest linkse en meest rechtse
button_codes = 0,1;
response_matching = simple_matching;

begin;






#VOER HIERONDER PROEFPERSOON NUMMER IN


$pp = '10';


#DANK U






picture {} default;
#hieronder staan de namen van de plaatjes


bitmap { filename = "intrinsiek2.bmp"; } intrinsiek;
bitmap { filename = "relatief2.bmp"; } relatief;

bitmap { filename = "auto0B2.bmp"; } "9000";
bitmap { filename = "auto0R2.bmp"; } "1000";
bitmap { filename = "auto90O2.bmp"; } "3000";
bitmap { filename = "auto0B2.bmp"; } "6000";

bitmap { filename = "auto0R2.bmp"; } "9090";
bitmap { filename = "auto90O2.bmp"; } "1090";
bitmap { filename = "auto0R2.bmp"; } "3090";
bitmap { filename = "auto90O2.bmp"; } "6090";

bitmap { filename = "auto0R2.bmp"; } "9180";
bitmap { filename = "auto90O2.bmp"; } "1180";
bitmap { filename = "auto0B2.bmp"; } "3180";
bitmap { filename = "auto0R2.bmp"; } "6180";

bitmap { filename = "auto90O2.bmp"; } "9270";
bitmap { filename = "auto90O2.bmp"; } "1270";
bitmap { filename = "auto0B2.bmp"; } "3270";
bitmap { filename = "auto0R2.bmp"; } "6270";

#oud
#bitmap { filename = "intrinsiek.bmp"; } intrinsiek;
#bitmap { filename = "relatief.bmp"; } relatief;

#bitmap { filename = "L0.bmp"; } L0;
#bitmap { filename = "B0.bmp"; } B0;
#bitmap { filename = "R0.bmp"; } R0;
#bitmap { filename = "O0.bmp"; } O0;

#bitmap { filename = "L90.bmp"; } L90;
#bitmap { filename = "B90.bmp"; } B90;
#bitmap { filename = "R90.bmp"; } R90;
#bitmap { filename = "O90.bmp"; } O90;

#bitmap { filename = "L180.bmp"; } L180;
#bitmap { filename = "B180.bmp"; } B180;
#bitmap { filename = "R180.bmp"; } R180;
#bitmap { filename = "O180.bmp"; } O180;

#bitmap { filename = "L270.bmp"; } L270;
#bitmap { filename = "B270.bmp"; } B270;
#bitmap { filename = "R270.bmp"; } R270;
#bitmap { filename = "O270.bmp"; } O270;

#uitleg van de taak
trial { 
   trial_duration =  forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		text {
			font_size = 18;
			caption = 
"Hierna volgt de test voor proefpersoonnummer $pp

Druk op 'ja' als dit klopt.";

		};
		x = 0 ; y = 0 ;
	};
};
trial { 
   trial_duration =  forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		text {
			font_size = 18;
			caption = 
"Welkom bij het experiment.
Dit experiment duurt iets langer dan een uur. Er zullen 6 series trials afgenomen worden. 
Elke serie bestaat uit 160 plaatjes en zinnen. Afhankelijk van de serie trials worden eerst
de plaatjes of eerst de zinnen getoond. Dit wordt altijd aan het begin van de trial verteld.
Ook verschilt het interval tussen het tonen van het plaatje en de zin. Er is een kort, een
middellang en een lang interval. Ook dit wordt voor aanvang van een trial verteld.
De bedoeling is dat jij zo snel en accuraat mogelijk antwoordt met 'ja' als je vindt dat de
zin het plaatje goed beschrijft en je zo snel en accuraat mogelijk antwoordt met 'nee' als
je vindt dat de zin het plaatje NIET goed beschrijft.
Druk op 'ja' om een voorbeeld te zien.";

		};
		x = 0 ; y = 0 ;
	};
	nothing{ }; code = "proefpersoon $pp";
};
trial {
	#fixatiekruisje
	picture {		
		text {
			font_size = 32;
			caption = "+";	
		};
		x=0; y=0;
	};
	duration = 500;
	
	#zin wordt getoond
	picture {		
		text {
			font_size = 32;
			caption = "bal onder auto";	
		};
		x=0; y=0;
	};
	delta_time = 500;
	duration = 1000;
	code = "voorbeeldzin"; 
	
	#interval tussen zin en plaatje
	picture default;
	delta_time = 1000;
	
	#plaatje wordt getoond
	picture {
		bitmap "9000";
		x = 0 ; y = 0 ;
	};
	code = "voorbeeldplaatje";
	delta_time = 1000;
	duration = 2000;

};
trial { 
   trial_duration =  forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		text {
			font_size = 18;
			caption = 
"Zoals je net zag kreeg je in dit geval eerst een zin en daarna een plaatje te zien.
Het goede antwoord zou in dit geval 'nee' geweest zijn, want de bal was niet onder de
auto, maar links ervan. Let wel op dat je 'onder' zowel vanuit jezelf als vanuit de
auto kunt opvatten. Als 1 van deze manieren klopt met de zin, antwoord je ook met 'ja'.
Klik op 'ja' om de voorbeelden te zien.";

		};
		x = 0 ; y = 0 ;		
	};
};
trial {
	#fixatiekruisje
	picture {		
		text {
			font_size = 32;
			caption = "+";	
		};
		x=0; y=0;
	};
	duration = 500;
	
	#zin wordt getoond
	picture {		
		text {
			font_size = 32;
			caption = "bal onder auto";	
		};
		x=0; y=0;
	};
	delta_time = 500;
	duration = 1000;
	code = "voorbeeldzin2"; 
	
	#interval tussen zin en plaatje
	picture default;
	delta_time = 1000;
	
};
trial {
	#intrinsiek voorbeeld
   trial_duration =  forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		bitmap intrinsiek;
		x = 0 ; y = 0 ;
	};
};
trial {
	#relatief voorbeeld
   trial_duration =  forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		bitmap relatief;
		x = 0 ; y = 0 ;
	};
};
trial { 
   trial_duration =  forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		text {
			font_size = 18;
			caption = 
"Het is dus de bedoeling dat je met 'ja' antwoordt als op 1 van beide manieren de zin en
het plaatje met elkaar in overeenstemming zijn.

Je krijgt nu een oefentrial om bekend te worden met de taak die je zo gaat uitvoeren.

Klik nu op 'ja' om het oefentrial te starten.";

		};
		x = 0 ; y = 0 ;		
	};
};

#oefentrial
trial { 
   trial_duration =  forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		text {
			font_size = 18;
			caption = 
"Je krijgt nu een serie te zien van een plaatje met daarop volgend een zin.
De tijd tussen wanneer het plaatje en wanneer de zin getoond worden zal in drie
stappen afnemen van lang naar middellang naar kort.

Als je vindt dat de zin het plaatje GOED beschrijft, antwoord dan met 'ja'.
Als je vindt dat de zin het plaatje NIET goed beschrijft, antwoord dan met 'nee'.
Probeer zo snel en goed mogelijk te antwoorden.

Druk op 'ja' als je klaar bent om te beginnen.

Succes!";
		};
		x = 0 ; y = 0 ;		
	};
};
TEMPLATE "P-S.tem" {
	# zin: zin die pp te zien krijgen
	# plaatje: welk plaatje pp te zien krijgen
	# RF1: reference frames in overeenstemming met zin en plaatje bij antwoord ja
	# RF2: reference frames in overeenstemming met zin en plaatje bij antwoord nee
	# interval: interval tussen plaatje en zin
	
	
	zincode	zin 							plaatje 	RF1	RF2	interval;  
	"rechts"	"bal rechts van auto" 	"9000" 	"RI"	"0"	1000;
	"rechts"	"bal rechts van auto" 	"1090" 	"0"	"RI"	500;
	"groter"	"bal groter dan auto"	"6270"	"fout"	"goed"	0;
};
trial { 
   trial_duration =  forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		text {
			font_size = 18;
			caption = 
"Dat was het eerste gedeelte van de oefentrial. Je krijgt nu een serie te zien 
van een zin met daarop volgend een plaatje. De tijd tussen wanneer het plaatje
en wanneer de zin getoond worden zal net als daarnet stapsgewijs afnemen.

Als je vindt dat de zin het plaatje GOED beschrijft, antwoord dan met 'ja'.
Als je vindt dat de zin het plaatje NIET goed beschrijft, antwoord dan met 'nee'.
Probeer zo snel en goed mogelijk te antwoorden.

Druk op 'ja' als je klaar bent om te beginnen.

Succes!";
		};
		x = 0 ; y = 0 ;		
	};
};
TEMPLATE "S-P.tem" {
	# zin: zin die pp te zien krijgen
	# plaatje: welk plaatje pp te zien krijgen
	# RF1: reference frames in overeenstemming met zin en plaatje bij antwoord ja
	# RF2: reference frames in overeenstemming met zin en plaatje bij antwoord nee
	# interval: interval tussen zin en plaatje
	
	zincode	zin					plaatje 	RF1	RF2	interval;  
	"boven"	"bal boven auto"	"9090"	"I"	"R"	1000;
	"rechts"	"bal rechts van auto" 	"3270" 	"R"	"I"	500;
	"boven"	"bal boven auto"			"1180"	"R"	"I"	0;
};
trial {
   trial_duration =  forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		text {
			font_size = 18;
			caption = 
"Dit was het einde van de uitleg.

Klik nu op 'ja' om het echte experiment te beginnen.";
		};
		x = 0 ; y = 0 ;		
	};
	nothing{ }; code = "begin";
};


#stimulus randomisatie


$interval_volgorde = $pp;
$SP_volgorde = '1';
LOOP $i 8;
	IF '$interval_volgorde > 6';
		$interval_volgorde = '$interval_volgorde - 6';
		$SP_volgorde = '$SP_volgorde + 1';
	ENDIF;
ENDLOOP;

#interval volgorde
IF '$interval_volgorde == 1';
	$i_a = '1000';
	$i_b = '500';
	$i_c = '0';
ENDIF;

IF '$interval_volgorde == 2';
	$i_a = '500';
	$i_b = '0';
	$i_c = '1000';
ENDIF;

IF '$interval_volgorde == 3';
	$i_a = '0';
	$i_b = '1000';
	$i_c = '500';
ENDIF;

IF '$interval_volgorde == 4';
	$i_a = '1000';
	$i_b = '0';
	$i_c = '500';
ENDIF;

IF '$interval_volgorde == 5';
	$i_a = '500';
	$i_b = '1000';
	$i_c = '0';
ENDIF;

IF '$interval_volgorde == 6';
	$i_a = '0';
	$i_b = '500';
	$i_c = '1000';
ENDIF;

#plaatje-zin of zin-plaatje
IF '$SP_volgorde == 1';
	$v1 = '1';
	$v3 = '1';
	$v5 = '1';
ENDIF;

IF '$SP_volgorde == 2';
	$v1 = '1';
	$v3 = '1';
	$v5 = '0';
ENDIF;

IF '$SP_volgorde == 3';
	$v1 = '0';
	$v3 = '0';
	$v5 = '1';
ENDIF;

IF '$SP_volgorde == 4';
	$v1 = '0';
	$v3 = '0';
	$v5 = '0';
ENDIF;

IF '$SP_volgorde == 5';
	$v1 = '1';
	$v3 = '0';
	$v5 = '1';
ENDIF;

IF '$SP_volgorde == 6';
	$v1 = '1';
	$v3 = '0';
	$v5 = '0';
ENDIF;

IF '$SP_volgorde == 7';
	$v1 = '0';
	$v3 = '1';
	$v5 = '1';
ENDIF;

IF '$SP_volgorde == 8';
	$v1 = '0';
	$v3 = '1';
	$v5 = '0';
ENDIF;

$v2 = '1';
$v4 = '1';
$v6 = '1';
IF '$v1 == 1';
	$v2 = '0';
ENDIF;

IF '$v3 == 1';
	$v4 = '0';
ENDIF;

IF '$v5 == 1';
	$v6 = '0';
ENDIF;

#uitvoering experiment

TEMPLATE "S-P1.tem" {
	# volgorde: eerst zin (0) of eerst plaatje (1)
	# interval: interval tussen zin en plaatje

	volgorde 	interval;  
	$v1			$i_a;
	$v2			$i_a;
	$v3			$i_b;
	$v4			$i_b;
	$v5			$i_c;
	$v6			$i_c;
};


# afsluiting experiment
trial {
	picture {
		text {
			font_size = 18;
			caption = "Dit is het einde van dit experiment. Bedankt voor het meedoen.";	
		};
		x = 0 ; 
		y = 0 ;		
	};
	duration = 3000;
	nothing{ }; code = "einde";
};

