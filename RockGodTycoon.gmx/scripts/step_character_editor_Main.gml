/// step_character_editor_Main()

gml_pragma("forceinline");

if ( mouse_check_area(339-95,194-40,339+95,194+40) ){mouse_over = 0;}if ( button_select == 0 ){
spr[0]=global.sprite_map[?"Character Creation\Buttons\Head Button effect.png"]}else{spr[0]=global.sprite_map[?"Character Creation\Buttons\Head Button.png"]}

if ( mouse_check_area(361-115,364-40,361+115,364+40) ){mouse_over = 1;}if ( button_select == 1 ){
spr[1]=global.sprite_map[?"Character Creation\Buttons\Outfit Button effect.png"]}else{spr[1]=global.sprite_map[?"Character Creation\Buttons\Outfit Button.png"]}

if ( mouse_check_area(382-115,540-40,382+115,540+40) ){mouse_over = 2;}if ( button_select == 2 ){
spr[2]=global.sprite_map[?"Character Creation\Buttons\Tattoos_Button_effect.png"]}else{spr[2]=global.sprite_map[?"Character Creation\Buttons\Tattoos_Button.png"]}

if ( mouse_check_area(424-115,740-40,424+115,740+40) ){mouse_over = 3;}if ( button_select == 3 ){
spr[3]=global.sprite_map[?"Character Creation\Buttons\Instrument Button effect.png"]}else{spr[3]=global.sprite_map[?"Character Creation\Buttons\Instrument Button.png"]}
/*
if ( mouse_check_area(706-72,view_hview[0]-78-72,706+72,view_hview[0]-78+72) ){mouse_over = 2;}if ( button_select == 2 ){
spr[2]=global.sprite_map[?"Main Game\GUI\Band Info Button Effect.png"]}else{spr[2]=global.sprite_map[?"Main Game\GUI\Band Info Button.png"]}

if ( mouse_check_area(1009-72,view_hview[0]-78-72,1009+72,view_hview[0]-78+72) ){mouse_over = 3;}if ( button_select == 3 ){
spr[3]=global.sprite_map[?"Main Game\GUI\Shop Button Effect.png"]}else{spr[3]=global.sprite_map[?"Main Game\GUI\Shop Button.png"]}

if ( mouse_check_area(1218-24,1041-24,1218+24,1041+24) ){mouse_over = 4;}if ( button_select == 4 ){
spr[4]=global.sprite_map[?"Main Game\GUI\Pause Button Effect.png"]}else{spr[4]=global.sprite_map[?"Main Game\GUI\Pause Button.png"]}

if ( mouse_check_area(1279-24,1041-24,1279+24,1041+24) ){mouse_over = 5;}if ( button_select == 5 ){
spr[5]=global.sprite_map[?"Main Game\GUI\Speed 1 Button Effect.png"]}else{spr[5]=global.sprite_map[?"Main Game\GUI\Speed 1 Button.png"]}

if ( mouse_check_area(1355-24,1041-24,1355+24,1041+24) ){mouse_over = 6;}if ( button_select == 6 ){
spr[6]=global.sprite_map[?"Main Game\GUI\Speed 2 Button Effect.png"]}else{spr[6]=global.sprite_map[?"Main Game\GUI\Speed 2 Button.png"]}

if ( mouse_check_area(1430-24,1041-24,1430+24,1041+24) ){mouse_over = 7;}if ( button_select == 7 ){
spr[7]=global.sprite_map[?"Main Game\GUI\Speed 3 Button Effect.png"]}else{spr[7]=global.sprite_map[?"Main Game\GUI\Speed 3 Button.png"]}
*/
if ( mouse_check_button_released(mb_left) ){
if ( mouse_over == button_select ){audio_play(0,0,0,0); // Click sound
switch(button_select){
case 0:{break;}
case 1:{break;}
case 2:{menu_state="Band Info";obj_game.game_time_pause=true;surface_update=true;break;}
case 3:{break;}
case 4:{if(obj_game.game_time_pause){obj_game.game_time_pause=false}else{obj_game.game_time_pause=true};break;}
case 5:{obj_game.game_time_speed=0;obj_game.game_time_pause=false;break;}
case 6:{obj_game.game_time_speed=1;obj_game.game_time_pause=false;break;}
case 7:{obj_game.game_time_speed=2;obj_game.game_time_pause=false;break;}
}}button_select=-2;}

if ( mouse_check_button_pressed(mb_left) ){
if ( mouse_over != -1 ){button_select = mouse_over;}else{button_select = -2;}}
