package app.view;

import app.state.DestinationInfo;
import Doom.*;

class DestinationPicker extends doom.Component<PickerApi, PickerState> {
  override function render() {
    return div(["class" => "container"], state.destinations.map(function (dest) {
        return div(["class" => "third"], new DestinationCard({}, dest));
      })
    );
  }
}

typedef PickerApi = {};

typedef PickerState = {
  destinations : Array<DestinationInfo>
};
