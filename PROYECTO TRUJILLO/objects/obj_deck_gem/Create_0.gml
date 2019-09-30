/// @description Inserte aquí la descripción
window_set_size(1280,720);//opcional
window_set_position(1920/6,1080/6);//(if 1920x1080)
randomize();
room_speed=60;// aumentador de fps, no probar en consolas si lo exportas, bajarlo a 30
//crea la deck(no se requiere en este juego , pero es necesitado para verlo fuera de listas
deck_p=ds_list_create();//Estas creando una lista de nombre  deck_p.ejemplo (deck_mongol)
scr_create_deck();//estas creando una deck de cartas ramdom

//Creamos un puntaje para ambos jugadores
p_score=5;
e_score=5;
//creamos un arreglo para la tienda de cartas del juegador(mano de cartas en el juego)
hand_p[1]=noone;
hand_p[2]=noone;
hand_p[3]=noone;
hand_p[4]=noone;
hand_p[5]=noone;
//para solamente robar una cantidad de cartas colocamos lo siguiente
//esto es un script'scr_draw', solo que lo estoy invocando en este objet
scr_draw(5);
//Quick setup use  to randomize who goes first
var ran_turn=irandom_range(1,2);
if (ran_turn==1){ai_turn=false;}
else{ai_turn=false;}//cambiarlo a true luego
//color que vamos a usar para mezclar cartas enemigas
global.c_my_red=make_color_rgb(255,50,50);
//Setup de IA de arreglo de la mano y 5 entidades de las cartas
hand_e[1]=instance_create_layer(room_width-50,100,"Instances",obj_card_e);
hand_e[2]=instance_create_layer(room_width-50,140,"Instances",obj_card_e);
hand_e[3]=instance_create_layer(room_width-50,180,"Instances",obj_card_e);
hand_e[4]=instance_create_layer(room_width-50,220,"Instances",obj_card_e);
hand_e[5]=instance_create_layer(room_width-50,260,"Instances",obj_card_e);
//Este script barajea las cartas en mano
scr_ai_random_cards();

//jugadores eligen cards y enemigos
enemy_selected=noone;
card_selected=noone;

//Todo la tabla de posiciones jugables

played_pos_1_x=room_width/2-90;
played_pos_1_y=room_height/2-105;
played_pos_2_x=room_width/2;
played_pos_2_y=room_height/2-105;
played_pos_3_x=room_width/2-90;
played_pos_3_y=room_height/2-105;


played_pos_4_x=room_width/2-90;
played_pos_4_y=room_height/2;
played_pos_5_x=room_width/2;
played_pos_5_y=room_height/2;
played_pos_6_x=room_width/2+90;
played_pos_6_y=room_height/2;

played_pos_7_x=room_width/2-90;
played_pos_7_y=room_height/2+105;
played_pos_8_x=room_width/2;
played_pos_8_y=room_height/2+105;
played_pos_9_x=room_width/2+90;
played_pos_9_y=room_height/2+105;

//las variables se se usan para determinar si se abren las posiciones
played_pos_1=false;
played_pos_2=false;
played_pos_3=false;
played_pos_4=false;
played_pos_5=false;
played_pos_6=false;
played_pos_7=false;
played_pos_8=false;
played_pos_9=false;












