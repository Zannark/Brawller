module Brawller.Utils.SmartTexture;

private
{
	import dsfml.graphics;
	import std.exception;
}

class TextureException : Exception
{
	mixin basicExceptionCtors;
}

/++
 + A smart texture is to keep classes as clutter free as possible.
 + Achieved by putting both Textures and Sprites in the same object.
 ++/
struct SmartTexture
{
	this(string TexturePath)
	{
		this.ObjectTexture = new Texture();

		if(!this.ObjectTexture.loadFromFile(TexturePath))
			throw new TextureException("Failed to find " ~ TexturePath);

		this.ObjectSprite = new Sprite(this.ObjectTexture);
	}

	/++
	 + Draws the sprite to the screen.
	 + 
	 + Params:
	 +		Wnd - The render window to draw to.
	 ++/
	public void Draw(RenderWindow Wnd)
	{
		if(this.ObjectTexture is null)
			throw new TextureException("The texture cannot be null.");

		if(Wnd is null)
			throw new TextureException("The RenderWindow (Wnd) cannot be null.");

		Wnd.draw(this.ObjectSprite);
	}

	public void SetPosition(Vector2f Position)
	{
		this.ObjectSprite.position(Position);
	}

	public void Move(Vector2f Offset)
	{
		this.ObjectSprite.move(Offset);
	}

	Texture ObjectTexture;
	Sprite ObjectSprite;
}
unittest
{
	assertThrown!TextureException(SmartTexture("C:\\Test.png"));
}