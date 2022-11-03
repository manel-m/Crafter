/// @description Insert description here
// You can write your code in this editor



if event_data[? "event_type"] == "sprite event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
        case "pickaxeHit":
			//show_message("Pickaxe hits");
			using_pickaxe = false;
			with (pickaxe_breakable){
				event_user(0);
			}
        break;

    }
}