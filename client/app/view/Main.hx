package app.view;

import Doom.*;

class Main extends doom.Component<MainApi, app.State> {
  override function render() : doom.Node return switch state {
    case DateRangeChosen(dates, destinations): selectDestination(dates, destinations);
    case _:
      div("hi");
  }

  function selectDestination(dates, destinations) {
    return div(["class" => "container"], [
      new DateSectionCollapsed({}, dates),
      new DestinationPicker({}, { destinations : destinations })
    ]);
  }
}

typedef MainApi = {

};
