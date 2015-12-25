package app.state;

typedef DestinationInfo = {
  name : {
    short : String,
    full : String
  },
  image : ImageInfo,
  weather : Array<WeatherData> // 52 values with weekly averages
};

typedef ImageInfo = {
  filename : String,
  alt : String,
  attribution : String
};

typedef WeatherData = {
  avgHigh : Int,
  avgLow : Int,
  conditions : WeatherConditions
};

enum WeatherConditions {
  Sun;
  Partly;
  Clouds;
  Rain;
  Snow;
}
