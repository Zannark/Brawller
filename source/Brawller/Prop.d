module Brawller.Prop;

import Brawller.Utils.SmartTexture;
import dsfml.graphics;

/++
 + Props are non-interactive decoration for the game.
 ++/
struct Prop
{
	this(string TexturePath)
	{
		this.Texture = SmartTexture(TexturePath);
	}

	void Draw(RenderWindow Wnd)
	{
		this.Texture.Draw(Wnd);
	}

	void SetPosition(Vector2f Position)
	{
		this.Texture.SetPosition(Position);
	}

	SmartTexture Texture;
}