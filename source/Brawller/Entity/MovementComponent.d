module Brawller.Entity.MovementComponent;

import dsfml.system;
import dsfml.graphics;
import Brawller.Entity.BaseEntity;

/++
 + The base class for all movement, AI and/or player.
 ++/
abstract class MovementComponent
{
	public void Update(BaseEntity Entity, float Dt = 1.0f);
}

/++
 + This is for player input. (I.e. WSAD controls)
 ++/ 
final class PlayerMovement : MovementComponent
{
	public this()
	{}

	public override void Update(BaseEntity Entity, float Dt = 1.0f)
	{
		if(Keyboard.isKeyPressed(Keyboard.Key.A))
			Entity.Move(Vector2f(-5 * Dt, 0));
		if(Keyboard.isKeyPressed(Keyboard.Key.D))
			Entity.Move(Vector2f(5, 0));
	}
}
unittest
{
	BaseEntity E = new BaseEntity("");
	PlayerMovement P = new PlayerMovement();

	for(int i = 0; i < 5000; i++)
	{
		P.Update(E);
	}
}