module Brawller.Entity.BaseEntity;

import dsfml.graphics;
import Brawller.Utils.SmartTexture;
import Brawller.Entity.MovementComponent;

class BaseEntity
{
	public this(string EntityTexturePath)
	{
		this.EntityTextrure = SmartTexture(EntityTexturePath);
		this.EntityMovement = new PlayerMovement();
	}

	public void Draw(RenderWindow Wnd)
	{
		this.EntityTextrure.Draw(Wnd);
	}

	public void Update(float Dt = 1.0f)
	{
		this.EntityMovement.Update(this, Dt);
	}

	public void Move(Vector2f Offset)
	{
		this.EntityTextrure.Move(Offset);
	}

	private SmartTexture EntityTextrure;
	private MovementComponent EntityMovement;
}