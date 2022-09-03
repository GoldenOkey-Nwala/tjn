class Trending {
  String title;
  String? hashTag;
  String count;

  Trending({
    required this.title,
    this.hashTag,
    required this.count,
  });
}

List<Trending> exploreContent = [
  Trending(
    title: 'Financial Breakthrough',
    hashTag: 'financialbreakthrough',
    count: '20k',
  ),
  Trending(
    title: 'Depression',
    hashTag: 'depression',
    count: '3457',
  ),
  Trending(
    title: 'Unemployment',
    hashTag: 'unemployment',
    count: '7986',
  ),
  Trending(
    title: 'Bad Habit',
    count: '1203',
  ),
  Trending(
    title: 'Orphans',
    count: '39k',
  ),
  Trending(
    title: 'Debts',
    count: '60k',
  ),
  Trending(
    title: 'Infidelity',
    count: '5k',
  ),
  Trending(
    title: 'Breakup',
    count: '200k',
  ),
  Trending(
    title: 'Mental Health',
    count: '53k',
  ),
  Trending(
    title: 'Job',
    count: '87k',
  ),
  Trending(
    title: 'Failure',
    count: '110k',
  ),
  Trending(
    title: 'Racism',
    count: '51k',
  ),
  Trending(
    title: 'Crime',
    count: '5576',
  ),
  Trending(
    title: 'Immigration',
    count: '8722',
  ),
  Trending(
    title: 'Domestic Violence',
    count: '12k',
  ),
  Trending(
    title: 'Accident',
    count: '37k',
  ),
  Trending(
    title: 'Divorce',
    count: '113k',
  ),
  Trending(
    title: 'Suicide',
    count: '77k',
  ),
  Trending(
    title: 'Poverty',
    count: '17k',
  ),
];
