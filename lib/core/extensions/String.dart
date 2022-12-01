// ignore: file_names, ignore: String is the only primitive type in Dart with capitalized name

extension StringX on String {
  String get withNoSpaces => trim().replaceAll('\n', '_').replaceAll(' ', '_');
  // String get decodeSpaces => replaceAll('_', ' ');
}
