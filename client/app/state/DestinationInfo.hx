package app.state;

typedef DestinationInfo = {
  name : String,
  image : ImageInfo,
  weather : Array<WeatherData> // 52 values with weekly averages
};

typedef ImageInfo = {
  filename : String,
  format : ImageFormat,
  alt : String,
  attribution : String
};

typedef WeatherData = {
  avgHigh : Int,
  avgLow : Int,
  conditions : WeatherConditions
};

enum ImageFormat {
  Png;
  Jpg;
}

enum WeatherConditions {
  Sun;
  Partly;
  Clouds;
  Rain;
  Snow;
}
