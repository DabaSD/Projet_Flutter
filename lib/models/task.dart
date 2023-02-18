class Task {
  final String taskName;
  final String poste;
  final DateTime taskTime;
  final bool isDone;

  Task(
    this.taskName,
    this.poste,
    this.taskTime,
    this.isDone,
  );
}

List<Task> listTask = [
  Task(
    'PROV1',
    'DIAGNE Daba Samb',
    DateTime(2022, 9, 26, 7, 30),
    false,
  ),
  Task(
    'PROV2',
    'DIONE  Khadidiatou Mane',
    DateTime(2022, 9, 26, 10, 00),
    false,
  ),
  Task(
    'PROV3',
    'DIA Fatima Tidiane',
    DateTime(2022, 9, 26, 12, 30),
    false,
  ),
  Task(
    'PROV4',
    'DRAME  Khadija Bassirou',
    DateTime(2022, 9, 26, 15, 30),
    false,
  ),
];
