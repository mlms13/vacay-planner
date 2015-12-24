package app;

import lies.Reduced;

class Reducers {
  public static function vacay(state : State, action : Action) {
    return Reduced.fromState(state);
  }
}
