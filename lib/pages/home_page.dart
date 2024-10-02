import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart'; //reuseable dropdown class

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//BuildContext - A handle to the location of a widget in the widget tree. This class presents a set of methods that can be used from [StatelessWidget.build] methods and from methods on [State] objects.
    //to set the value of device height and device width to something we use MediaQuery
    _deviceHeight = MediaQuery.of(context)
        .size
        .height; //MediaQuery will get the property of the device used like screen size and all
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
        //color: Colors.red,
        height: _deviceHeight,
        width: _deviceWidth,
        //to give it a padding property, we add padding
        padding: EdgeInsets.symmetric(
          horizontal: _deviceWidth * 0.05,
          //we are giving 5% of the deviceWidth to the padding
        ),
        // child: Column( //to have the png inbetween the other containers, we use stack
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   mainAxisSize: MainAxisSize.min,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     _pageTitle(),
        //     _bookRideWidget(),
        //   ],
        // ),
        child: Stack(
          children: [
            Column(
              //to have the png inbetween the other containers, we use stack
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _pageTitle(),
                _bookRideWidget(),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: _astroImageWidget(),
            ),
          ],
        ),
      )),
      // body: SafeArea(
      //     child: Container(
      //   color: Colors.red,
      // )), #here the container would be placed after a safe area limit
    );
    // appBar: AppBar(
    //   title: const Text('GoMoon'),
    // ),
    // body: const Center(
    //   child: Text('Welcome to GoMoon!'),
    // ),
  }
//Safe Area widget - it is a wodget with appropriate padding so that it is not obstructed by device's screen ratio, like iphone 13's camera notch

  Widget _pageTitle() {
    return const Text(
      '#GoMoon',
      style: TextStyle(
          color: Colors.white, fontSize: 70, fontWeight: FontWeight.w800),
    );
    // return Container(
    //     color: Colors.green,
    //     child: Text(
    //       '#GoMoon',
    //       style: TextStyle(
    //           color: Colors.white, fontSize: 70, fontWeight: FontWeight.w800),
    //     ));//this will wrap the whole container within the main func with padding initialized
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight * 0.40,
      width: _deviceWidth * 0.45,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/astro_moon.png"),
        ),
      ),
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellersInformationWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    return CustomDropdownButtonClass(values: const [
      'Vizag Web Station',
      'Chennai Web Station',
    ], width: _deviceWidth);
  }

  Widget _travellersInformationWidget() {
    //Select the CustomDropdownButtonClass and press ctrl + '.' to get options. Use the wrap with row option to wrap the whole button container in rows
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownButtonClass(values: const [
          '1 Traveller',
          '2 Travellers',
          '3 Travellers',
          '4 Travellers',
        ], width: _deviceWidth * 0.45),
        CustomDropdownButtonClass(values: const [
          'Economy',
          'Business',
          'Private',
        ], width: _deviceWidth * 0.40),
      ],
    );
  }

  Widget _rideButton() {
    return Container(
      padding: EdgeInsets.only(
          bottom: _deviceHeight * 0.01, top: _deviceHeight * 0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          'Book Ride!',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ), //(){} is an empty function or anonymous function
    );
  }
}
