import 'package:team/Features/splash_onBoarding/data/models/on_Boarding_model.dart';
import 'package:team/core/utils/medi_image.dart';

class OnBoardingViewModel{
  static List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      image: MediImage.onBoarding1,
      title: "Welcome To Medi App",
      description:
          "The future of medical treatment Here we take care of your health from your home in the easiest way",
    ),
    OnBoardingModel(
      image: MediImage.onBoarding2,
      title: "We can do a lot with us",
      description:
          "Beginning from check your health and predict some dangerous diagnosis, reached to our chatbot Medi that can tell you any symptoms you fell then Medi help you as quickly as possible",
    ),
    OnBoardingModel(
      image: MediImage.onBoarding3,
      title: "Our body",
      description:
          "Has a very complex system From the brain ,Nervous system, digestive system,Respiratory system,etc...So we have to check if it was any issue at any system and work to solve it as quickly as possible,Here ,comes our work",
    ),
    OnBoardingModel(
      image: MediImage.onBoarding4,
      title: "Health information",
      description:
          "In our app we take some information about your health and check if you have any issue to visit your doctor or not Definitely we wish all things were good",
    ),
    OnBoardingModel(
      image: MediImage.onBoarding5,
      title: "Dangerous diagnoses",
      description:
          "Today's world has a lot of dangerous diagnoses such as diabetes, heart attack, breast cancer, Parkinson etc... For more information about these diagnoses in details and some first aid you can check this in our app",
    ),
    OnBoardingModel(
      image: MediImage.onBoarding6,
      title: "Medi chatbot",
      description:
          "Now , it's time to talk about our essential feature Medi . Medi our medical chatbot and Your personal therapist . You can talk to it at any time, tell it about any of your symptoms and with your mother language. Medi At your service at any time",
    ),
  ];
}