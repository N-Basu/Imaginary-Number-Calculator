#include <FL/Fl.H>
#include <FL/Fl_Window.H>
#include <FL/Fl_Button.H>
#include <FL/fl_ask.H>

void on_button_click(Fl_Widget* widget, void* data) {
  fl_message("Hello FLTK!");
}

int main() {
  Fl_Window* window = new Fl_window(400, 400, "FLTK GUI");

  Fl_Button* button = new Fl_button(150, 100, 100, 40, "Enter");

  button->callback(on_button_click);

  window->end();
  window->show();
  return Fl::run();
}
