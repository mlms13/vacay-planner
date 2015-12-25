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
      ])
    ]);
  }
}
