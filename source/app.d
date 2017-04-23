module main;

import Brawller.World;
import Brawller.Entity.BaseEntity;
import dsfml.graphics;
import dsfml.window;

void main(string[] args)
{
	RenderWindow Wnd = new RenderWindow(VideoMode(800, 600, 32), "Window");
	BaseEntity B = new BaseEntity("C:\\Users\\sherb\\Pictures\\Tahn.png");

	while(Wnd.isOpen())
	{
		Event E;

		while(Wnd.pollEvent(E))
		{
			if(E.type == Event.EventType.Closed)
				Wnd.close();
		}

		Wnd.clear(Color.Black);
		
		B.Update();
		B.Draw(Wnd);

		Wnd.display();
	}
}