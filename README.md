# Sliding Card

![](https://media.giphy.com/media/d8uClfpq4R6jKQvV8T/giphy.gif)

## Introduction

Sliding card is a highly customizable flutter package that will help you create beautiful Cards with a sliding animation effect.

## Before we start

Before you start here are some relevant link that you might want to have a look

* [The online documentation](https://www.emilecode.com/sliding-card/ "Sliding Card")
* [An UI made using Sliding card](https://github.com/PavieOlivier/doctor-appointment-flutter "Sliding Card UI")
* [A Demo APK](https://drive.google.com/open?id=1ymME7ZY9VGNXdhPprEz0hz4l915lLkp1 "Sliding Card Demo APK")
* [My instagram account](https://www.instagram.com/emilecode/ "emilecode")

## Quick start

To use the application just import the package 
```
import 'package:sliding_card/sliding_card.dart';
```
Then inside your code, add the SlidingCard widget.
```
SlidingCard(
        slimeCardElevation: 0.5,
        cardsGap: SizeConfig.safeBlockVertical,
        //The controller is necessary to animate the opening and closing of the card
        controller: widget.slidingCardController,
        slidingCardWidth: SizeConfig.horizontalBloc * 90,
        visibleCardHeight: SizeConfig.safeBlockVertical * 27,
        //the card behind the front card can't have a higher
        // hight than the front one  
        hiddenCardHeight: SizeConfig.safeBlockVertical * 15,
        //Configure your front card here
        frontCardWidget: TheFrontCard(),
        //configure your rear card here 
        backCardWidget:TheBackCard(),
      ),
```

## Conclusion 
Thank you for using my package, If you did find any bug please feel free to report it or make a pull request.
If you want to contact me directly, please DM me directly on [My instagram account](https://www.instagram.com/emilecode/ "emilecode"), 
or you can mail me directly.
For my other packages you can visit my website at [emilecode.com](emilecode.com)

