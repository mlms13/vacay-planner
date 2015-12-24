package app.view;

import app.State;
import Doom.*;

class App extends doom.Component<AppApi, State> {
  override function render() {
    return div(["id" => "root"], [
      new Header({}, {}),
      new Main(api, state),
      // new Footer({}, {})
    ]);
  }
}

typedef AppApi = {

};
