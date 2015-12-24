package app;

import thx.DateTime;

class Main {
  public function new() {
    var initialState = State.DateRangeChosen(DateTime.now(), DateTime.now());
  }

  public static function main() {
    new Main();
  }
}
