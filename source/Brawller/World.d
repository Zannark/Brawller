module Brawller.World;

import Brawller.Utils.SmartTexture;
import dsfml.graphics;

/++
 + A world is comprised of a few elements:
 + 
 + 		- A background
 +		- 'Props', decoration objects.
 +		- interactives, objects which can be interected with. Mainly the floor.
 +		- Entities shall exsist in this as well.
 ++/
final class World
{
	public this(string BackGroundTexturePath)
	{
		this.BackGround = SmartTexture(BackGroundTexturePath);
	}

	public void Draw(RenderWindow Wnd)
	{
		this.BackGround.Draw(Wnd);
	}

	private SmartTexture BackGround;
}