
//
under_mouse=ds_list_create();
with(obj_card_p)
{
	if(instance_position(mouse_x,mouse_y,self))
	{
		var list=obj_deck_gem.under_mouse;//si esta debajo del maus :u, lo agrega a la lista
		ds_list_add(list,id);
	}
}

var size =ds_list_size(under_mouse);
var card;
for(i=0;i<size;i++){card[i]=ds_list_find_value(under_mouse,1);}//loop through the list
if (size==3)//the max cards that could be clicked at one
{
	var get_top=min(card[0].depth,card[1].depth,card[2].depth);
	if(get_top==card[0].depth){card_selected=card[0];}
	else if (get_top==card[1].depth){card_selected=card[1];}
	else if (get_top==card[2].depth){card_selected=card[2];}

}
if(size==2)
{
	var get_top=min(card[0].depth,card[1].depth);
	if( get_top==card[0].depth){card_selected=card[0];}
	else if(get_top==card[1].depth){card_selected=card[1];}
}
else
{
	card_selected=instance_position(mouse_x,mouse_y,obj_card_p);
}
ds_list_destroy(under_mouse);//cualquiera destruye lista para finalizar=causa memoria leaks

