module Brawller.Entity.MovementComponent;

import dsfml.system;
import Brawller.Entity.BaseEntity;

abstract class MovementComponent
{
	public void UpdateMovement(BaseEntity Entity, float dt);
}