pcl_file = "test.pcl";
scenario = "test";

active_buttons = 2;
#hieronder geef je aan wat de codes zijn voor de response-knoppen
# 0,1 verwijst naar de knoppenkast, de meest linkse en meest rechtse
button_codes = 0,1;
response_matching = simple_matching;

begin;

$pp = id;
#$pp = '1';

trial { 
   trial_duration =  forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		text {
			font_size = 24;
			caption = 
"Hierna volgt de test voor proefpersoonnummer $pp

Druk op 'ja' als dit klopt.";

		};
		x = 0 ; y = 0 ;
	};
};