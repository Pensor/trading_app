const List<Model> models = [
  Model(name: "WS Time Based Model", steps: [
    "Wait for H/L sweep on 4H Timeframe (1,5,9)",
    "Wait for another sweep on 1H",
    "Entry in the first 15min of the hourly candle",
    "Exit in the beginning of the next 4H candle"
  ]),
  Model(name: "Fractal Model", steps: [
    "Swing point into HTF POI (FVG, H/L, OB)",
    "LTF confirmation (CISD) int ",
    "Entry in the expansion candle",
  ]),
  Model(name: "Fair Value Gap Trading Model", steps: [
    "Wait for a Fair Value Gap (FVG) to form on the 4H chart",
    "Wait for price to return to the 4H FVG on the 15 min chart",
    "Wait for a 15min FVG",
    "Enter on that 15 min FVG ",
    "Aim for 2R/3R"
  ]),
];

class Model {
  final String name;
  final List<String> steps;

  const Model({required this.name, required this.steps});
}
