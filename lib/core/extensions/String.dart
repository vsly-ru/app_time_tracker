extension StringX on String {
  String get withNoSpaces => trim().replaceAll('\n', '_').replaceAll(' ', '_');
  // String get decodeSpaces => replaceAll('_', ' ');
}
