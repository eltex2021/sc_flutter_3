class StyleForselectType {
  final String _typeName;
  final bool _selected;

  StyleForselectType(
    this._typeName,
    this._selected,
  );

  String get typeName => _typeName;

  bool get selected => _selected;
}

StyleForselectType sttype1 = StyleForselectType(
  "Black",
  false,
);
StyleForselectType sttype2 = StyleForselectType(
  "Bold",
  false,
);
StyleForselectType sttype3 = StyleForselectType(
  "Medium",
  true,
);
StyleForselectType sttype4 = StyleForselectType(
  "Regular",
  false,
);
StyleForselectType sttype5 = StyleForselectType(
  "Light",
  false,
);

List<StyleForselectType> styleForselectType = [
  sttype1,
  sttype2,
  sttype3,
  sttype4,
  sttype5
];

List<bool> _selected = [false, false, true, false, false];
