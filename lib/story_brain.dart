import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        storyChoice1: 'I\'ll hop in. Thanks for the help!',
        storyChoice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        storyChoice1: 'At least he\'s honest. I\'ll climb in.',
        storyChoice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        storyChoice1: 'I love Elton John! Hand him the cassette tape.',
        storyChoice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        storyChoice1: 'Restart',
        storyChoice2: ''),
    Story(
        storyTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        storyChoice1: 'Restart',
        storyChoice2: ''),
    Story(
        storyTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        storyChoice1: 'Restart',
        storyChoice2: '')
  ];

  int _storyNumber = 0;

  getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  getstoryChoice1() {
    return _storyData[_storyNumber].storyChoice1;
  }

  getstoryChoice2() {
    return _storyData[_storyNumber].storyChoice2;
  }

  void nextStory(int num) {
    if (_storyNumber == 0) {
      if (num == 1) {
        story.add(_storyData[_storyNumber].storyChoice1);
        _storyNumber = 2;
      } else {
        story.add(_storyData[_storyNumber].storyChoice2);
        _storyNumber = 1;
      }
    } else if (_storyNumber == 1) {
      if (num == 1) {
        story.add(_storyData[_storyNumber].storyChoice1);
        _storyNumber = 2;
      } else {
        story.add(_storyData[_storyNumber].storyChoice2);
        _storyNumber = 3;
      }
    } else if (_storyNumber == 2) {
      if (num == 1) {
        story.add(_storyData[_storyNumber].storyChoice1);
        _storyNumber = 5;
      } else {
        story.add(_storyData[_storyNumber].storyChoice2);
        _storyNumber = 4;
      }
    } else {
      _resetStory();
    }
  }

  _resetStory() {
    _storyNumber = 0;
    story = [];
  }

  List<String> story = [];

  buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
