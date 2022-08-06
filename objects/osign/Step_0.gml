if (place_meeting(x,y,oPlayer)) && (!instance_exists(oText) && (TextCreated == false))
{
	with (instance_create_layer(x, y-12,layer,oSignText))
	{
		signText = other.signText;
		length = string_length(signText);
	}
	TextCreated = true;
}
