package app;

import thx.DateTime;
import app.view.App;
import app.state.DestinationInfo;
import lies.Store;

class Main {
  public function new() {
    var initialState = State.DateRangeChosen({
      start : DateTime.create(2016, 3, 21, thx.Time.fromHours(8)),
      end : DateTime.create(2016, 3, 25, thx.Time.fromHours(8))
    }, defaultDestinations());

    var store : Store<State, Action> = Store.create(Reducers.vacay, initialState);

    var app = new App({}, store.state);
    Doom.mount(app, js.Browser.document.body);
  }

  function defaultDestinations() : Array<DestinationInfo> {
    return [{
      name : {
        short : "Santa Fe",
        full : "Santa Fe, New Mexico"
      },
      image : {
        filename : "santafe.png",
        alt : "Adobe in Santa Fe at the Plaza",
        attribution : "'Adobe in Santa Fe at the Plaza - Hotel Inn and Spa at Loretto.' Licensed under CC BY-SA 3.0 via Commons - https://commons.wikimedia.org/wiki/File:Adobe_in_Santa_Fe_at_the_Plaza_-_Hotel_Inn_and_Spa_at_Loretto.JPG#/media/File:Adobe_in_Santa_Fe_at_the_Plaza_-_Hotel_Inn_and_Spa_at_Loretto.JPG"
      },
      weather : [{
        avgHigh : 68,
        avgLow : 33,
        conditions : Sun
      }]
    }, {
      name : {
        short : "Yellowstone",
        full : "Yellowstone National Park"
      },
      image : {
        filename : "yellowstone.jpg",
        alt : "Bison near a hot spring in Yellowstone",
        attribution : "'Bison near a hot spring in Yellowstone' by Daniel Mayer - Own work. Licensed under CC BY-SA 3.0 via Commons - https://commons.wikimedia.org/wiki/File:Bison_near_a_hot_spring_in_Yellowstone.JPG#/media/File:Bison_near_a_hot_spring_in_Yellowstone.JPG"
      },
      weather : [{
        // TODO
        avgHigh : 0,
        avgLow : 0,
        conditions : Partly
      }]
    }, {
      name : {
        short : "Grand Canyon",
        full : "Grand Canyon National Park"
      },
      image : {
        filename : "grandcanyon.jpg",
        alt : "Grand Canyon Panorama 2013",
        attribution : "'Grand Canyon Panorama 2013' by Roger Bolsius - Own work. Licensed under CC BY-SA 3.0 via Commons - https://commons.wikimedia.org/wiki/File:Grand_Canyon_Panorama_2013.jpg#/media/File:Grand_Canyon_Panorama_2013.jpg"
      },
      weather : [{
        avgHigh : 0,
        avgLow : 0,
        conditions : Sun
      }]
    }];
  }

  public static function main() {
    new Main();
  }
}
