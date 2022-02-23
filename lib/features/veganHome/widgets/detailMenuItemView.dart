import 'dart:async';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vegan_liverpool/features/veganHome/Helpers/helpers.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/models/restaurant/menuItem.dart';
import 'package:vegan_liverpool/models/restaurant/orderItem.dart';
import 'package:vegan_liverpool/redux/viewsmodels/userCart.dart';

class DetailMenuItemView extends StatefulWidget {
  const DetailMenuItemView({Key? key, required this.menuItem})
      : super(key: key);

  final MenuItem menuItem;

  @override
  _DetailMenuItemViewState createState() => _DetailMenuItemViewState();
}

class _DetailMenuItemViewState extends State<DetailMenuItemView> {
  int _currentIndex = 0;
  int _selectedQuantity = 1;

  // ignore: unused_field
  late Timer _timer;

  List<bool> _selectedExtras = [];
  Map<String, int> _selectedExtrasMap = {};

  @override
  void initState() {
    super.initState();

    _selectedExtras =
        List.generate(widget.menuItem.options.length, (i) => false);

    _timer = Timer.periodic(Duration(seconds: 5), (timer) async {
      if (mounted) {
        setState(() {
          if (_currentIndex + 1 == widget.menuItem.imageURLs.length) {
            _currentIndex = 0;
          } else {
            _currentIndex = _currentIndex + 1;
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, UserCartViewModel>(
        converter: UserCartViewModel.fromStore,
        builder: (_, viewmodel) {
          return Stack(
            children: [
              FractionallySizedBox(
                heightFactor: 1,
                child: Scaffold(
                  body: SingleChildScrollView(
                    controller: ModalScrollController.of(context),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 350.0,
                              child: CarouselSlider(
                                items: widget.menuItem.imageURLs
                                    .map(
                                      (item) => CachedNetworkImage(
                                        imageUrl: item,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                    .toList(),
                                options: CarouselOptions(
                                  autoPlay: true,
                                  height: double.infinity,
                                  viewportFraction: 1,
                                  autoPlayCurve: Curves.slowMiddle,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: -1,
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[800]!,
                                        offset: Offset(0, -5),
                                        blurRadius: 10,
                                      )
                                    ],
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(100)),
                                    color: Colors.white),
                                width: MediaQuery.of(context).size.width,
                                height: 30,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.menuItem.name,
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    cFPrice(_calculateItemTotal()),
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                parseHtmlString(widget.menuItem.description),
                                style: TextStyle(fontSize: 18.0),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                "Extras",
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: widget.menuItem.options.length,
                                itemBuilder: (_, index) => ListTile(
                                  tileColor: _selectedExtras[index]
                                      ? Colors.yellow[100]
                                      : null,
                                  title: Text(widget.menuItem.options.keys
                                      .elementAt(index)),
                                  trailing: Text(
                                    cFPrice(widget.menuItem.options.values
                                        .elementAt(index)),
                                  ),
                                  onTap: () => setState(
                                    () {
                                      _selectedExtras[index] =
                                          !_selectedExtras[index];

                                      _selectedExtrasMap.containsKey(widget
                                              .menuItem.options.keys
                                              .elementAt(index))
                                          ? _selectedExtrasMap.remove(widget
                                              .menuItem.options.keys
                                              .elementAt(index))
                                          : _selectedExtrasMap[widget
                                                  .menuItem.options.keys
                                                  .elementAt(index)] =
                                              widget.menuItem.options.values
                                                  .elementAt(index);
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 100,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                          color: Colors.yellow[300]),
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          children: [
                            quantityButtons(),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () => {
                                viewmodel.addOrderItem(
                                  OrderItem(
                                      internalID: Random(DateTime.now()
                                              .millisecondsSinceEpoch)
                                          .nextInt(10000),
                                      menuItem: widget.menuItem,
                                      totalItemPrice: _calculateItemTotal(),
                                      itemQuantity: _selectedQuantity,
                                      selectedOptions: _selectedExtrasMap),
                                ),
                                Navigator.pop(context)
                              },
                              child: Text("Add to Tote"),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Colors.black,
                                fixedSize: Size(120, 40),
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.w900),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -45,
                      left: (MediaQuery.of(context).size.width * 0.5) - 45,
                      child: Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // #E7352D
                          color: Color(0xFF313131),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 8,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // Text(
                              //   "",
                              //   style: TextStyle(color: Colors.white),
                              // ),
                              Text(
                                _calculateItemReward().toString(),
                                style: TextStyle(
                                  color: Color(0xFFf4f2eb),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 23,
                                  fontFamily: "Indie Flower",
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Image.asset(
                                "assets/images/avatar-ppl-cream.png",
                                width: 35,
                              ),
                            ],
                          ),
                        ),
                        // child: Center(

                        //   child: Image.asset(
                        //     "assets/images/avatar-ppl-red.png",
                        //     width: 30,
                        //   ),
                        //   // child: Text(
                        //   //   _calculateItemReward().toString(),
                        //   //   style: TextStyle(
                        //   //     color: Color(0xFFE7352D),
                        //   //     fontWeight: FontWeight.w900,
                        //   //     fontSize: 22,
                        //   //   ),
                        //   // ),
                        // ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        });
  }

  int _calculateItemReward() {
    return (_calculateItemTotal() * 5 ~/ 100);
  }

  int _calculateItemTotal() {
    int total = 0;

    total = _selectedQuantity * widget.menuItem.price;

    _selectedExtrasMap.forEach((key, value) {
      total += value;
    });

    return total;
  }

  Widget quantityButtons() {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: IconButton(
            onPressed: () => setState(() {
              _selectedQuantity <= 1 ? null : _selectedQuantity--;
            }),
            icon: Icon(Icons.remove),
          ),
        ),
        Container(
          height: 40,
          width: 40,
          child: Center(
            child: Text(
              _selectedQuantity.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.symmetric(
              vertical: BorderSide(color: Colors.grey),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(3, 3), // changes position of shadow
              ),
            ],
          ),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(3, 0), // changes position of shadow
              ),
            ],
          ),
          child: IconButton(
            onPressed: () => setState(() {
              _selectedQuantity++;
            }),
            icon: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
