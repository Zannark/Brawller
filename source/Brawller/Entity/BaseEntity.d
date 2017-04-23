module Brawller.Enitity.BaseEntity;

import dsfml.graphics;
import Brawller.Utils.SmartTexture;

class BaseEntity
{
	public this(string EntityTexturePath)
	{
		this.EntityTextrure = SmartTexture(EntityTexturePath);
	}

	public void Draw(RenderWindow Wnd)
	{
		this.EntityTextrure.Draw(Wnd);
	}

	private SmartTexture EntityTextrure;
}