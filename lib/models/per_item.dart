class perItem {
  final int number;
  final String displayName;

 perItem({
    required this.number,
    required this.displayName,

  });

  factory perItem.fromJson(Map<String, dynamic> json) {
    return perItem(
      number: json['number'],
      displayName: json['displayName'],

    );
  }

  @override
  String toString() {
    return "$displayName";
  }
}