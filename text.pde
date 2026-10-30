PFont font;

void loadFonts() {
  font = createFont("lucidia.ttf", 32);
}

void textfont(String textinput, int x, int y, int size) {
  textFont(font);
  textSize(size);
  fill(255);
  text(textinput, x, y);
}