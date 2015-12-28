package app.view;

import app.state.DestinationInfo;
import Doom.*;

class DestinationCard extends doom.Component<{}, DestinationInfo> {
  override function render() {
    return div(["class" => "card destination-card"], [
      figure([
        img([
          "src" => '/img/${state.image.filename}',
          "alt" => state.image.alt
        ]),
        figcaption([
          h1(state.name.short)
        ])
      ]),
      div(["class" => "half"], weatherView())
    ]);
  }

  function weatherView() : doom.Node {
    // TODO: check weather based on selected date
    var selectedDateWeek = 0,
        weather = state.weather[selectedDateWeek];

    var icon = switch (weather.conditions) {
      case Sun : i(["class" => "wi-day-sunny"]);
      case Partly : i(["class" => "wi-day-cloudy"]);
      case Clouds : i(["class" => "wi-cloudy"]);
      case Rain : i(["class" => "wi-sprinkle"]);
      case Snow : i(["class" => "wi-snow"]);
    }

    return icon; // TODO...
  }
}
