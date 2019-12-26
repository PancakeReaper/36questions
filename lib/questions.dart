class Questions {
  static List<String> questions = [
    // Instructions
    'INSTRUCTIONS:\nTake turns reading each question aloud,\nthe other person answers first\n' +
    'Take time to answer everything carefully!\n' +
    'Tap the right side of the screen to move to the next question, and left to go back\n' +
    'Estimated time: 45-60 minutes',
    // Set I
    'Given the choice of anyone in the world, whom would you want as a dinner guest?',
    'What would constitute a "perfect day" for you?',
    'Would you like to be famous? In what way?',
    'If you were able to live to the age of 90 and retain either the mind or body of a 30-year-old for the last 60 years of your life, which would you want?',
    'When did you last sing to yourself? To someone else?',
    'Before making a telephone call, do you ever rehearse what you are going to say? Why?',
    'Do you have a secret hunch about how you will die?',
    'If you could change anything about the way you were raised, what would it be?',
    'Name three things you and your partner appear to have in common',
    'For what in your life do you feel most grateful?',
    'Take four minutes and tell your partner your life story in as much detail as possible',
    'If you could wake up tomorrow having gained any one quality or ability, what would it be?',
    // Set II
    'What is the greatest accomplishment of your life?',
    'What does friendship mean to you?',
    'What do you value most in a friendship?',
    'If a crystal ball could tell you the truth about yourself, your life, the future, or anything else, what would you want to know?',
    'Is there something that you’ve dreamed of doing for a long time? Why haven’t you done it?',
    'What is your most treasured memory?',
    'What is your most terrible memory?',
    'If you knew that in one year you would die suddenly, would you change anything about the way you are now living? Why?',
    'What roles do love and affection play in your life?',
    'How close and warm is your family? Do you feel your childhood was happier than most other people’s?',
    'How do you feel about your relationship with your mother?',
    'Alternate sharing something you consider a positive characteristic of your partner. Share a total of five items.',
    // Set III
    'If you were going to become a close friend with your partner, please share what would be important for him or her to know.',
    'Make three true “we” statements each. For instance, “We are both in this room feeling…”',
    'Complete this sentence: “I wish I had someone with whom I could share…”',
    'Share with your partner an embarrassing moment in your life.',
    'When did you last cry in front of another person? By yourself?',
    'Tell your partner what you like about them; be very honest this time, saying things that you might not say to someone you’ve just met.',
    'What, if anything, is too serious to be joked about?',
    'If you were to die this evening with no opportunity to communicate with anyone, what would you most regret not having told someone? Why haven’t you told them yet?',
    'Of all the people in your family, whose death would you find most disturbing? Why?',
    'Your house, containing everything you own, catches fire. After saving your loved ones and pets, you have time to safely make a final dash to save any one item. What would it be? Why?',
    'Tell your partner something that you like about them [already].',
    'Share a personal problem and ask your partner’s advice on how he or she might handle it.\nAsk your partner to reflect back to you on how you seem to be feeling about the problem you have chosen.',
    // End Screen!
    'Congrats!\nYou\'ve finished all the questions! As the final step, you must now stare into each other\'s eyes for 4 minutes in complete silence',
  ];

  static int size() {
    return questions.length;
  }

  static String getQuestion(int index) {
    return questions.elementAt(index);
  }

  static List<String> getQuestions() {
    return questions;
  }
}
