void main() {
  List<String> subjects = ['Thai Language', 'Computer', 'Science'];
  print('Number of subjects: ${subjects.length}');
  print('First subject: ${subjects[0]}');
  print('Last subject: ${subjects[subjects.length - 1]}');

  subjects.add('Physics');
  print('Updated subjects: $subjects');

  print('---');

  Map<String, int> studentScores = {'Computer': 65, 'Science': 88};
  print('Score for Physics: ${studentScores['Science']}');

  studentScores['Thai Language'] = 89;
  print('Updated scores: $studentScores');
  print('All subjects in map: ${studentScores.keys}');
  print('All scores in map: ${studentScores.values}');
}
