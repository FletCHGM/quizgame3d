part of 'card_info.dart';

class Questions {
  Questions({this.txt, this.answers});
  final String? txt;
  final Map<String, bool>? answers;
}

final soccerQuest = [
  Questions(
      txt: 'What was the earliest known form of soccer called?',
      answers: {
        'Episkyros': false,
        'Cuju': false,
        'Harpastum': true,
        'Mob Footbal': false
      }),
  Questions(
      txt:
          'Which year saw the establishment of the world\'s first governing body for soccer?',
      answers: {'1848': false, '1863': true, '1904': false, '1930': false}),
  Questions(
      txt: 'Who founded FIFA, the global governing body for soccer?',
      answers: {
        'The Greeks': false,
        'The Romans': false,
        'The English': false,
        'The Football Association': true
      }),
  Questions(
      txt:
          'Which tournament is considered the pinnacle of international soccer?',
      answers: {
        'UEFA Champions League': false,
        'Copa America': false,
        'African Cup of Nations': false,
        'FIFA World Cup': true
      }),
];
final lionelMessi = [
  Questions(txt: 'What is Lionel Messi\'s nationality?', answers: {
    'Brazilian': false,
    'Spanish': false,
    'Argentine': true,
    'Colombian': false
  }),
  Questions(
      txt: 'At what age did Messi make his first-team debut for FC Barcelona?',
      answers: {'16': true, '18': false, '20': false, '22': false}),
  Questions(
      txt: 'How many Ballon d\'Or titles has Messi won?',
      answers: {'3': false, '5': false, '7': true, '9': false}),
  Questions(
      txt: 'With which club has Messi won the most La Liga titles?',
      answers: {
        'Real Madrid': false,
        'Atletico Madrid': false,
        'FC Barcelona': true,
        'Sevilla FC': false
      }),
  Questions(
      txt:
          'In which year did Argentina reach the finals of the FIFA World Cup with Messi?',
      answers: {'2010': false, '2014': true, '2018': false, '2022': false}),
];
final cristianoRonaldo = [
  Questions(txt: 'When was Cristiano Ronaldo born?', answers: {
    ' January 5, 1985': false,
    'February 5, 1985': true,
    'March 5, 1985': false,
    'April 5, 1985': false
  }),
  Questions(
      txt: 'Which club did Ronaldo begin his professional career with?',
      answers: {
        'Manchester United': false,
        'Real Madrid': false,
        'Sporting CP': true,
        'Juventus': false
      }),
  Questions(
      txt: 'How many Ballon d\'Or awards has Ronaldo won?',
      answers: {'Two': false, 'Three': false, 'Four': true, 'Five': false}),
  Questions(
      txt:
          'Which national team has Ronaldo helped lead to victory in the 2016 European Championship?',
      answers: {
        'Spain': false,
        'Germany': false,
        'Portugal': true,
        'France': false
      }),
  Questions(txt: 'What is Ronaldo known for off the field?', answers: {
    'Philanthropic work': true,
    'Acting': false,
    'Singing': false,
    'Painting': false
  }),
];
final xavi = [
  Questions(txt: 'When was Xavi born?', answers: {
    'January 25, 1980': true,
    'February 25, 1980': false,
    'March 25, 1980': false,
    'April 25, 1980': false
  }),
  Questions(
      txt: 'Which club did Xavi spend the majority of his career with?',
      answers: {
        'Real Madrid': false,
        'Manchester United': false,
        'Barcelona': true,
        'Bayern Munich': false
      }),
  Questions(
      txt: 'How many La Liga titles did Xavi win with Barcelona?',
      answers: {'Six': false, 'Seven': false, 'Eight': true, 'Nine': false}),
  Questions(
      txt: 'Which national team did Xavi help win the 2010 World Cup?',
      answers: {
        'Brazil': false,
        'Germany': false,
        'Spain': true,
        'Argentina': false
      }),
  Questions(txt: 'What is Xavi currently doing?', answers: {
    'Playing for Al-Sadd': false,
    'Coaching Al-Sadd': true,
    'Retired from football': false,
    'Playing for Barcelona': false
  }),
];
final andresIniesta = [
  Questions(txt: 'When was Andres Iniesta born?', answers: {
    'May 11, 1984': true,
    'June 11, 1984': false,
    'July 11, 1984': false,
    'August 11, 1984': false
  }),
  Questions(
      txt: 'Which club did Iniesta spend the majority of his career with?',
      answers: {
        'Real Madrid': false,
        'Manchester United': false,
        'Barcelona': true,
        'Bayern Munich': false
      }),
  Questions(
      txt: 'How many La Liga titles did Iniesta win with Barcelona?',
      answers: {'Seven': false, 'Eight': false, 'Nine': true, 'Ten': false}),
  Questions(
      txt: 'Which national team did Iniesta help win the 2010 World Cup?',
      answers: {
        'Brazil': false,
        'Germany': false,
        'Spain': true,
        'Argentina': false
      }),
  Questions(txt: 'Where did Iniesta play after leaving Barcelona?', answers: {
    'Manchester United': false,
    'Real Madrid': false,
    'Vissel Kobe': true,
    'Bayern Munich': false
  }),
];
final zlatanIbrahimovic = [
  Questions(txt: 'When was Zlatan Ibrahimovic born?', answers: {
    'October 3, 1981': true,
    'November 3, 1981': false,
    'December 3, 1981': false,
    'January 3, 1981': false
  }),
  Questions(
      txt: 'Which club did Ibrahimovic begin his professional career with?',
      answers: {
        'Ajax': false,
        'Malmo FF': true,
        'Juventus': false,
        'Inter Milan': false
      }),
  Questions(
      txt: 'How many Serie A titles did Ibrahimovic win with Juventus?',
      answers: {'One': false, 'Two': true, 'Three': false, 'Four': false}),
  Questions(
      txt:
          'Which club did Ibrahimovic struggle to adapt to and have a difficult relationship with manager Pep Guardiola?',
      answers: {
        'Inter Milan': false,
        'AC Milan': false,
        'Paris Saint-Germain': false,
        'Barcelona': true
      }),
  Questions(
      txt:
          'How many goals has Ibrahimovic scored for the Swedish national team?',
      answers: {'52': false, '62': true, '72': false, '82': false}),
];
final radamelFalcao = [
  Questions(txt: 'When was Radamel Falcao born?', answers: {
    'February 10, 1986': true,
    'March 10, 1986': false,
    'April 10, 1986': false,
    'May 10, 1986': false
  }),
  Questions(
      txt: 'Which club did Falcao begin his professional career with?',
      answers: {
        'River Plate': false,
        'Lanceros Boyaca': true,
        'FC Porto': false,
        'Atletico Madrid': false
      }),
  Questions(
      txt: 'How many Primeira Liga titles did Falcao win with FC Porto?',
      answers: {'1': false, '2': false, '3': true, '4': false}),
  Questions(
      txt:
          'Which club did Falcao help win the Ligue 1 title in his first season?',
      answers: {
        'Atletico Madrid': false,
        'Monaco': true,
        'Galatasaray': false,
        'River Plate': false
      }),
  Questions(
      txt: 'How many goals has Falcao scored for the Colombian national team?',
      answers: {'24': false, '34': true, '44': false, '54': false}),
];
final robinvanPersie = [
  Questions(txt: 'When was Robin van Persie born?', answers: {
    'August 6, 1983': true,
    'September 6, 1983': false,
    'October 6, 1983': false,
    'November 6, 1983': false
  }),
  Questions(
      txt: 'Which club did van Persie begin his professional career with?',
      answers: {
        'Arsenal': false,
        'Feyenoord': true,
        'Manchester United': false,
        'Fenerbahce': false
      }),
  Questions(
      txt: 'How many Premier League Golden Boots did van Persie win?',
      answers: {'1': false, '2': true, '3': false, '4': false}),
  Questions(
      txt:
          'Which club did van Persie help win the Premier League title in his first season?',
      answers: {
        'Arsenal': false,
        'Manchester United': true,
        'Feyenoord': false,
        'Fenerbahce': false
      }),
  Questions(
      txt:
          'How many goals did van Persie score for the Netherlands national team?',
      answers: {'40': false, '50': true, '60': false, '70': false}),
];
final andreaPirlo = [
  Questions(txt: 'When was Andrea Pirlo born?', answers: {
    'May 19, 1979': true,
    'June 19, 1979': false,
    'July 19, 1979': false,
    'August 19, 1979': false
  }),
  Questions(
      txt:
          'Which club did Pirlo help win the UEFA Champions League in 2003 and 2007?',
      answers: {
        'Brescia': false,
        'AC Milan': true,
        'Juventus': false,
        'New York City FC': false
      }),
  Questions(
      txt: 'How many Serie A titles did Pirlo win with Juventus?',
      answers: {'1': false, '2': false, '3': false, '4': true}),
  Questions(
      txt: 'What was Pirlo known for during his playing career?',
      answers: {
        'Scoring goals': false,
        'Defending': false,
        'Passing ability': true,
        'Goalkeeping': false
      }),
  Questions(
      txt: 'Which national team did Pirlo win the FIFA World Cup with in 2006?',
      answers: {
        'Spain': false,
        'Brazil': false,
        'Argentina': false,
        'Italy': true
      }),
];

final yayaToure = [
  Questions(txt: 'When was Yaya Toure born?', answers: {
    'May 13, 1983': true,
    'June 13, 1983': false,
    'July 13, 1983': false,
    'August 13, 1983': false
  }),
  Questions(
      txt: 'Which club did Toure help win the UEFA Champions League in 2009?',
      answers: {
        'Barcelona': true,
        'Manchester City': false,
        'ASEC Mimosas': false,
        'Beveren': false
      }),
  Questions(
      txt: 'How many Premier League titles did Toure win with Manchester City?',
      answers: {'1': false, '2': false, '3': true, '4': false}),
  Questions(
      txt: 'What was Toure known for during his playing career?',
      answers: {
        'Passing ability': false,
        'Defending': false,
        'Physicality': true,
        'Goalkeeping': false
      }),
  Questions(
      txt:
          'Which national team did Toure win the African Cup of Nations with in 2015?',
      answers: {
        'Ghana': false,
        'Nigeria': false,
        'Cameroon': false,
        'Ivory Coast': true
      }),
];
