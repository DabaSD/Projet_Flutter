class Task {
  final String taskName;
  final String description;
  final DateTime taskTime;
  final bool isDone;

  Task(
    this.taskName,
    this.description,
    this.taskTime,
    this.isDone,
  );
}

List<Task> listTask = [
  Task(
    '123456789A',
    'Secretaire',
    DateTime(2022, 9, 26, 7, 30),
    false,
  ),
  Task(
    '123456789B',
    'Comptable',
    DateTime(2022, 9, 26, 10, 00),
    false,
  ),
  Task(
    '123456789C',
    'Programmeur',
    DateTime(2022, 9, 26, 12, 30),
    false,
  ),
  Task(
    '123456789D',
    'Analyste de données',
    DateTime(2022, 9, 26, 15, 30),
    false,
  ),
  Task(
    '123456789E',
    'Chef de projet',
    DateTime(2022, 9, 26, 17),
    false,
  ),
  Task(
    '123456789F',
    'Administrateur BD',
    DateTime(2022, 9, 26, 17),
    false,
  ),
];
