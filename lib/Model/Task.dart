// ignore_for_file: file_names

class Task {
  final String? name;
  bool isDone;
  Task({this.name, this.isDone = false});
  void toggleDone() {
    isDone = !isDone;
  }
}
