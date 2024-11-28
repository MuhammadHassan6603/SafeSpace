class OnBoardingModel{
  String image;
  String title;
  String description;
  OnBoardingModel({required this.image,required this.title,required this.description});
}
List<OnBoardingModel> contents=[
  OnBoardingModel(
    title: 'Keep an eye on screentime',
    image: 'assets/images/boarding1.png',
    description: 'Find out how much time they’re spending with the device & deattach them from social apps and gaming when needed.'
  ),
  OnBoardingModel(
    title: 'Track their location',
    image: 'assets/images/boarding2.png',
    description: 'You can get detailed location history of all the places your child visit. Track phone location and get time & date stamps.'
  ),
  OnBoardingModel(
    title: 'Manage Apps & Games',
    image: 'assets/images/boarding3.png',
    description: 'De-Attach your child from his device by defining when and how long your child allowed to use his device.'
  )
];