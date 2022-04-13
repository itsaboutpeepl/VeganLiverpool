import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:form_builder_extra_fields/form_builder_extra_fields.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';
import 'package:uuid/uuid.dart';
import 'package:vegan_liverpool/constants/keys.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:vegan_liverpool/constants/theme.dart';
import 'package:vegan_liverpool/models/app_state.dart';
import 'package:vegan_liverpool/models/restaurant/deliveryAddresses.dart';
import 'package:vegan_liverpool/redux/viewsmodels/deliveryAddressVM.dart';
import 'package:vegan_liverpool/services/apis/places.dart';

class AddressView extends StatefulWidget {
  const AddressView({Key? key, this.existingAddress}) : super(key: key);

  final DeliveryAddresses? existingAddress;

  @override
  _AddressViewState createState() => _AddressViewState();
}

class _AddressViewState extends State<AddressView> {
  bool _isExistingAddress = false;
  final _sessionToken = Uuid().v4();
  late PlaceApiProvider _placeApiProvider;

  @override
  void initState() {
    widget.existingAddress == null ? _isExistingAddress = false : _isExistingAddress = true;
    _placeApiProvider = PlaceApiProvider(_sessionToken);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DeliveryAddressesVM>(
      converter: DeliveryAddressesVM.fromStore,
      builder: (context, vm) {
        return Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: FormBuilder(
                  key: AppKeys.addressFormKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FormBuilderTypeAhead<Suggestion>(
                          initialValue:
                              _isExistingAddress ? Suggestion("", widget.existingAddress!.addressLine1) : null,
                          name: 'addressLine1',
                          hideOnEmpty: true,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: themeShade300, width: 3.0),
                            ),
                            fillColor: Colors.transparent,
                            labelText: 'Address Line 1',
                          ),
                          onSuggestionSelected: (suggestion) {
                            //TODO: make the call to places api, get actual address place, and then autofill the fields with the stuff.
                            _placeApiProvider.getPlaceDetailFromId(suggestion.placeId).then((Place place) {
                              AppKeys.addressFormKey.currentState!.setInternalFieldValue(
                                  "addressLine1Internal", "${place.streetNumber} ${place.street}",
                                  isSetState: false);
                              AppKeys.addressFormKey.currentState!.fields["townCity"]!.didChange(place.city);
                              AppKeys.addressFormKey.currentState!.fields["postalCode"]!.didChange(place.zipCode);
                            });
                          },
                          itemBuilder: (context, Suggestion suggestion) {
                            return ListTile(title: Text(suggestion.description));
                          },
                          selectionToTextTransformer: (suggestion) {
                            return suggestion.description;
                          },
                          loadingBuilder: (_) => CircularProgressIndicator(
                            color: themeShade600,
                          ),
                          suggestionsCallback: (query) {
                            if (query.isNotEmpty) {
                              return _placeApiProvider.fetchSuggestions(query);
                            } else {
                              return [];
                            }
                          },
                          valueTransformer: (suggestion) => suggestion!.description,
                        ),
                        FormBuilderTextField(
                          initialValue: _isExistingAddress ? widget.existingAddress!.addressLine2 : null,
                          name: 'addressLine2',
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: themeShade300, width: 3.0),
                            ),
                            fillColor: Colors.transparent,
                            labelText: 'Address Line 2',
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: FormBuilderTextField(
                                  initialValue: _isExistingAddress ? widget.existingAddress!.townCity : null,
                                  name: 'townCity',
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: themeShade300, width: 3.0),
                                    ),
                                    fillColor: Colors.transparent,
                                    labelText: 'Town/City',
                                  ),
                                  keyboardType: TextInputType.text,
                                  validator: FormBuilderValidators.required(context)),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: FormBuilderTextField(
                                  initialValue: _isExistingAddress ? widget.existingAddress!.postalCode : null,
                                  name: 'postalCode',
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: themeShade300, width: 3.0),
                                    ),
                                    fillColor: Colors.transparent,
                                    labelText: 'Postal Code',
                                  ),
                                  keyboardType: TextInputType.text,
                                  validator: FormBuilderValidators.required(context)),
                            ),
                          ],
                        ),
                        FormBuilderTextField(
                          initialValue: _isExistingAddress ? widget.existingAddress!.phoneNumber : null,
                          name: 'phoneNumber',
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: themeShade300, width: 3.0),
                            ),
                            fillColor: Colors.transparent,
                            labelText: 'Phone Number',
                          ),
                          keyboardType: TextInputType.phone,
                          validator: FormBuilderValidators.compose(
                            [FormBuilderValidators.numeric(context), FormBuilderValidators.required(context)],
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            onPrimary: Colors.grey[800],
                            primary: themeShade300,
                            textStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
                            fixedSize: Size(MediaQuery.of(context).size.width * 0.9, 50),
                          ),
                          onPressed: () {
                            if (AppKeys.addressFormKey.currentState!.saveAndValidate()) {
                              _tryFetchMapLocation()
                                  .then((LatLng? value) => vm.addDeliveryAddress(saveDeliveryAddress(position: value)));
                              print(saveDeliveryAddress());
                              Navigator.pop(context);
                            }
                          },
                          child: const Text('Save Address'),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Future<LatLng?> _tryFetchMapLocation() async {
    print("Hello from auto fill map location");
    Suggestion address = AppKeys.addressFormKey.currentState!.fields["addressLine1"]!.value;

    List<Location> possibleLocations =
        await locationFromAddress(address.description).onError((error, stackTrace) => []);

    if (possibleLocations.isNotEmpty) {
      return LatLng(possibleLocations[0].latitude, possibleLocations[0].longitude);
    }
    return null;
  }

  DeliveryAddresses saveDeliveryAddress({LatLng? position}) {
    Map<String, dynamic> formValue = AppKeys.addressFormKey.currentState!.value;

    return DeliveryAddresses(
      internalID: _isExistingAddress
          ? widget.existingAddress!.internalID
          : Random(DateTime.now().millisecondsSinceEpoch).nextInt(10000),
      addressLine1: formValue['addressLine1Internal'] ?? formValue['addressLine1'],
      addressLine2: formValue['addressLine2'] ?? "",
      townCity: formValue['townCity'],
      postalCode: formValue['postalCode'],
      phoneNumber: formValue['phoneNumber'],
      latitude: position != null ? position.latitude : formValue['latitude'] ?? 0.0,
      longitude: position != null ? position.longitude : formValue['longitude'] ?? 0.0,
    );
  }
}
