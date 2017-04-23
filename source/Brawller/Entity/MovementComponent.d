module Brawller.Entity.MovementComponent;

import dsfml.system;
import Brawller.Entity.BaseEntity;

/++
 + The base class for all movement, AI and/or player.
 ++/
abstract class MovementComponent
{
	public void UpdateMovement(BaseEntity Entity, float dt);
}