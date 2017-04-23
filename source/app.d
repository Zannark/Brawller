module main;

import Brawller.World;
import dsfml.graphics;
import dsfml.window;

void main(string[] args)
{
	RenderWindow Wnd = new RenderWindow(VideoMode(800, 600, 32), "Window");

	while(Wnd.isOpen())
	{
		Event E;

		while(Wnd.pollEvent(E))
		{
			if(E.type == Event.EventType.Closed)
				Wnd.close();
		}

		Wnd.clear(Color.Black);
		
		Wnd.display();
	}
}