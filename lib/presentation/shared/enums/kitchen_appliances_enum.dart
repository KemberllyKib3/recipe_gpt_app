enum KitchenAppliancesEnum {
  oven("oven"),
  stoveCooktop("stoveCooktop"),
  pressureCooker("pressureCooker"),
  microwave("microwave"),
  grill("grill"),
  blender("blender"),
  slowCooker("slowCooker"),
  sandwichMaker("sandwichMaker"),
  airFryer("airFryer"),
  toaster("toaster");

  String get label => _label;

  final String _label;
  const KitchenAppliancesEnum(this._label);
}
