enum WrapChipEnum {
  stadium(label: 'Stadium', value: 'stadium');

  final String label;
  final String value;

  const WrapChipEnum({required this.label, required this.value});

  static WrapChipEnum fromValue(String value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => stadium);
  }
}
