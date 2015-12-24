package app;

import app.state.DestinationInfo;
import thx.DateTime;

enum State {
  DateRangeChosen(start : DateTime, end : DateTime);
  DestinationChosen(dest : DestinationInfo);
  // lodging
  // activities
}
