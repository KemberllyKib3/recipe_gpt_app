enum CuisineTypesEnum {
  italian("italian"),
  mexican("mexican"),
  chinese("chinese"),
  japanese("japanese"),
  american("american"),
  indian("indian"),
  french("french"),
  mediterranean("mediterranean"),
  greek("greek"),
  spanish("spanish"),
  thai("thai"),
  german("german"),
  moroccan("moroccan"),
  irish("irish"),
  cuban("cuban"),
  hawaiian("hawaiian"),
  swedish("swedish"),
  hungarian("hungarian"),
  portuguese("portuguese"),
  english("english"),
  vietnamese("vietnamese"),
  korean("korean"),
  russian("russian"),
  brazilian("brazilian");

  String get label => _label;

  final String _label;
  const CuisineTypesEnum(this._label);
}
