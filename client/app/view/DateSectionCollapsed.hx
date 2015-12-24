package app.view;

import app.util.Types;
import Doom.*;
using thx.format.DateFormat;

class DateSectionCollapsed extends doom.Component<{}, DateRange> {
  override function render() {
    return div(["class" => "card clearfix"], [
      div(["class" => "half"], [
        strong(["class" => "block text-light"], "Start"),
        span(["class" => "text-dark"], state.start.format("MMM d 'yy"))
      ]),
      div(["class" => "half"], [
        strong(["class" => "block text-light"], "End"),
        span(["class" => "text-dark"], state.end.format("MMM d 'yy"))
      ])
    ]);
  }
}
