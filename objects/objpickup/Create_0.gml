function FindEmptyInventorySlot()
{
	for (var i = 0; i < array_length(global.CurrentCharacter); i++)
	{
		if (global.CurrentCharacter.inventory[i] == global.nothing)
		{
			return i;
		}
	}
}

show_message(string(FindEmptyInventorySlot()));