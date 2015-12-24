package app.view;

import Doom.*;

class Header extends doom.Component<{}, {}> {
  override function render() {
    return header(["class" => "clearfix"], [
      div(["class" => "container"], [
        h1(["class" => "pull-left"], "Choose a Trip!"),
        button(["class" => "pull-right"], "Start Over")
      ])
    ]);
  }
}
