part of 'counter_cubit.dart';

class CounterState {
  int counterValue;
  bool? wasIncremented;

  CounterState({
    required this.counterValue,
    this.wasIncremented,
  });
  //At this point the CounterState class can be fully exported and imported to and from to Jsons
  // Here we crea a Map out of our data the we use toJson method to create a Json file out of this map.
  Map<String, dynamic> toMap() {
    return {
      'counterValue': counterValue,
      'wasIncremented': wasIncremented,
    };
  }

  //instance
  factory CounterState.fromMap(Map<String, dynamic> map) {
    return CounterState(
      counterValue: map['counterValue'],
      wasIncremented: map['wasIncremented'],
    );
  }

  String toJson() => json.encode(toMap());

//First we decode js
  factory CounterState.fromJson(String source) =>
      CounterState.fromMap(json.decode(source));

  @override
  String toString() =>
      'CounterState(counterValue: $counterValue, wasIncremented: $wasIncremented)';
}
