
import 'package:flutter/material.dart';
import 'package:sliding_card/sliding_card.dart';
import 'AppointmentBackCard.dart';
import 'AppointmentFrontCard.dart';
import 'sizeConfig.dart';


///This is the main Appointment card 
///it regroups the AppointmentFrontCard 
///and AppointmentBacktCard together 
///using my dart package ''SlidingCard''
class AppointmentCard extends StatefulWidget {
  const AppointmentCard({
    Key key,
    this.slidingCardController , @required this.onCardTapped
  }) : super(key: key);
 
  final  SlidingCardController slidingCardController;
  final Function onCardTapped;

  @override
  _AppointmentCardState createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('Well the card was tapped');
        widget.onCardTapped();
      },
          child: SlidingCard(
        slimeCardElevation: 0.5,
       // slidingAnimationReverseCurve: Curves.bounceInOut,
        cardsGap: SizeConfig.safeBlockVertical,
        controller: widget.slidingCardController,
        slidingCardWidth: SizeConfig.horizontalBloc * 90,
        visibleCardHeight: SizeConfig.safeBlockVertical * 27,
        hiddenCardHeight: SizeConfig.safeBlockVertical * 15,
        frontCardWidget: AppointmentFrontCard(
          imgLink: 'not needed anymore',
          patienName: '@emileCode',
          patienSurname: 'on Instagram',
          appointmentDate: '12 Jan 2020 ',
          appointmentTime: '12Am',
          onInfoTapped: () {
            print('info pressed');
            widget.slidingCardController.expandCard();
          },
          onDecline: () {
            print('Declined');
          },
          onAccep: () {
            print('Accepted');
          },
          onRedCloseButtonTapped: (){
            widget.slidingCardController.collapseCard();
          },
        ),
        backCardWidget:AppointmentBackCard(
          onPhoneTapped: (){print('Phone tapped');},
          patientComment: 'Have any question? you can DM me on instagram or maybe call me'
        ),
      ),
    );
  }
}



