String phase = "start";

Menu menu;
Game game;

void setup() {
    size(1024,768,P2D);
    noCursor();

    menu = new Menu();
    game = new Game();

}

void draw() {
    if (phase == "menu") {
        menu.display();
    }

    if (phase == "game") {
        game.display();
    }
}

void keyPressed() {
    if (keyCode == CONTROL) {
        ExitGame();
    }

    else if (phase == "menu") {
        menu.keyPressed();
    }

    else if (phase == "game") {
        game.keyPressed();
    }
}

void ExitGame() {
    launch("/home/pi/SOPRA/gameStart/application.linux-armv6hf/gameStart");
    exit();
}