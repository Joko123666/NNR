
function NPC_vally_gard03_dialog(argument0)
{
	///@arg dilog_count
	var diacount = argument0;

	diacount = irandom(3);
	
	if diacount == 0
	{
		text = "이곳에 함부로 들어오시면 안됩니다";
	}
	
	if diacount == 1 
	{
		text = "항상 비품이 모자랍니다...";
	}
	
	if diacount == 2 
	{
		text = "비품을 체크중입니다";
	}
	
	if diacount == 3
	{
		text = "병사장님 무섭지 않습니까?";
	}
	
	if global.mainstream == 35	&& global.Player_item != "Bomb01"
	{
		text = "폭탄이 필요하십니까?";
		instance_create_depth(x + 24*image_xscale, y - 24, 0, Item_bomb01);
	}
	

	return text;
}