enum KitchenAppliancesEnum {
  oven("oven"),
  stoveCooktop("stove or cooktop"),
  microwave("microwave"),
  pressureCooker("pressure cooker"),
  grill("grill"),
  blender("blender"),
  toaster("toaster"),
  airFryer("air fryer"),
  sandwichMaker("sandwich maker"),
  slowCooker("slow cooker");

  String get label => _label;

  final String _label;
  const KitchenAppliancesEnum(this._label);
}
