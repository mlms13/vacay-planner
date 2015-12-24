package app.view;

import Doom.*;

class Main extends doom.Component<MainApi, app.State> {
  override function render() : doom.Node return switch state {
    case DateRangeChosen(dates): selectDestination(dates);
    case _:
      div("hi");
  }

  function selectDestination(dates) {
    return div(["class" => "container"], [
      new DateSectionCollapsed({}, dates)
    ]);
  }
}

typedef MainApi = {

};
