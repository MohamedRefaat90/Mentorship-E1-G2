import '../models/item.dart';

List<Item> items = [
  Item(
      title: 'Appoint your \nassessment now.',
      lottie: lotties[0],
      description: desc),
  Item(
      title: 'Find the \nbest doctors.', lottie: lotties[1], description: desc),
  Item(
      title: 'Trace your \nassessment request.',
      lottie: lotties[2],
      description: desc),
];

const String desc =
    "Thee followed but to lost heart thy raven my lining. Ah in you chamber once shall distinctly, smiling came this.";

List<String> lotties = [
  'assets/animations/onboarding/assisment.json',
  'assets/animations/onboarding/doctor_circle.json',
  'assets/animations/onboarding/doctor_explaining.json',
];
