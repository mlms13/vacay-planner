package app;

import app.state.DestinationInfo;
import app.util.Types;
import thx.DateTime;

enum State {
  DateRangeChosen(dates : DateRange, destinations : Array<DestinationInfo>);
  DestinationChosen(dates : DateRange, dest : DestinationInfo);
  // lodging
  // activities
}
