module Brawller.Level;

import Brawller.World;
import std.exception;

class LevelException : Exception
{
	mixin basicExceptionCtors;
}

/++
 + Interfaces between the engine and SFML.
 + The current world will be loaded in from the level class.
 + The rendering for World will be call from within Level.
 ++/
class Level
{
	/++
	 + This ctor is mainly for testing the engine works.
	 ++/
	public this(World WorldToLoad)
	{
		this.CurrentWorld = WorldToLoad;
	}

	public this(string WorldLevel)
	{
	}

	private World LoadWorldFromFile()
	{
		throw new LevelException("Not yet implemented.");
		//return null;
	}

	private World CurrentWorld;
}