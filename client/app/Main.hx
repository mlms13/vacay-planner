package app;

import thx.DateTime;
import app.view.App;
import lies.Store;

class Main {
  public function new() {
    var initialState = State.DateRangeChosen(DateTime.now(), DateTime.now());

    var store : Store<State, Action> = Store.create(Reducers.vacay, initialState);

    var app = new App({}, store.state);
    Doom.mount(app, js.Browser.document.body);
  }

  public static function main() {
    new Main();
  }
}
