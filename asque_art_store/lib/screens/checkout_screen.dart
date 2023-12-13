import 'package:asque_art_store/bloc/ccard_validator.dart';
import 'package:asque_art_store/components/components.dart';
import 'package:asque_art_store/components/payment_card.dart';
import 'package:asque_art_store/config/theme.dart';
import 'package:asque_art_store/screens/payment_successful_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CheckoutScreen extends StatefulWidget {
  CheckoutScreen({super.key, required this.total});

  final total;

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final ccNumberController = TextEditingController();
  final ccNameController = TextEditingController();
  final ccDateController = TextEditingController();
  final ccCvvController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final addressController = TextEditingController();

  bool validatePhoneNumber = false;
  String inputNumber = '';

  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(
    isoCode: 'NG',
  );

  RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  CreditCardValidationBloc cardValidator = CreditCardValidationBloc();

  // validateCardFunction() {
  //   if (cardValidator.validateCreditCardInfo(
  //       ccNumberController.text, ccDateController.text, ccCvvController.text)) {
  //     print('true');
  //   } else {
  //     SnackBar(content: Text('error'));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Payment method",
          style: TextStyle(color: CustomAppTheme().appWhite),
        ),
        backgroundColor: Colors.grey.shade800,
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Colors.grey.shade800,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PaymentCard(imagePath: 'assets/paypal.png'),
                  PaymentCard(
                    imagePath: 'assets/master.png',
                    cardColor: Colors.white,
                  ),
                  PaymentCard(imagePath: 'assets/visa.png'),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              // credit card number input
              CustomTextField(

                  // onChange: (value) {
                  //  value = ccNumberController.text;
                  //   cardValidator
                  //       .validateCreditCardNum(value);
                  // },
                  iconName: const Icon(
                    Icons.credit_card,
                    color: Colors.white,
                  ),
                  controller: ccNumberController,
                  hintText: 'xxxx   xxxx   xxxx   xxxx',
                  fillColor: true,
                  obscureText: false),

              const SizedBox(
                height: 20,
              ),
              // credit card name input
              CustomTextField(
                  iconName: null,
                  controller: ccNameController,
                  hintText: 'Name on your card',
                  fillColor: true,
                  obscureText: false),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                        iconName: const Icon(
                          Icons.date_range,
                          color: Colors.white,
                        ),
                        controller: ccDateController,
                        hintText: 'Exp date',
                        fillColor: true,
                        obscureText: false),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomTextField(
                        iconName: const Icon(
                          Icons.numbers,
                          color: Colors.white,
                        ),
                        controller: ccCvvController,
                        hintText: 'cvv',
                        fillColor: true,
                        obscureText: false),
                  ),
                ],
              ),


             // adress fields
              SizedBox(
                height: 40,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  'Delivery and contact details',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                  iconName: const Icon(
                    Icons.location_city,
                    color: Colors.white,
                  ),
                  controller: addressController,
                  hintText: 'Enter your location',
                  fillColor: true,
                  obscureText: false),
              SizedBox(
                height: 20,
              ),
              InternationalPhoneNumberInput(
                onInputChanged: (number) {
                  // formKey.currentState!.validate();
                  print(number);
                  // setState(() {
                  //   inputNumber = number.phoneNumber.toString();
                  // });
                },
                onInputValidated: (bool value) {
                  print(value);
                  setState(() {
                    validatePhoneNumber = value;
                  });
                },
                countrySelectorScrollControlled: true,

                selectorConfig: SelectorConfig(
                  
                  leadingPadding: 10,
                  setSelectorButtonAsPrefixIcon: true,
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                ),
                locale: 'en',
                spaceBetweenSelectorAndTextField: 0,
                inputDecoration: InputDecoration(
                 
                  helperText: 'Phone Number',
                  hintText: '+234 080 556 7634',
                  suffixIcon: IconButton(
                      color: Colors.grey.shade400,
                      onPressed: () {},
                      icon: Icon(Icons.contact_phone_rounded)),
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: CustomAppTheme().primary)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: CustomAppTheme().primary)),
                ),
                ignoreBlank: true,
                // validator: (phone) {
                //   if (phone!.isEmpty) {
                //     return 'Please enter your phone number';
                //   }

                //   if (validatePhoneNumber == false) {
                //     return 'Enter a valid phone number';
                //   }

                //   return null; // Return null when the input is valid
                // },
                autoValidateMode: AutovalidateMode.disabled,
                textStyle: TextStyle(color: Colors.white),
                selectorTextStyle: TextStyle(color: Colors.white),
                initialValue: number,
                textFieldController: phoneController,
                formatInput: true,
                keyboardType: TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                inputBorder: OutlineInputBorder(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey.shade800,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: RoundedLoadingButton(
            animateOnTap: true,
            completionCurve: Curves.bounceInOut,
            curve: Curves.bounceInOut,
            errorColor: Colors.red,
            elevation: 8,
            failedIcon: Icons.error_outline_rounded,
            successIcon: Icons.check_circle_outline,
            duration: const Duration(seconds: 2),
            //resetAfterDuration: true,
            color: CustomAppTheme().primary,
            successColor: Colors.green,
            controller: _btnController,
            onPressed: () async {
              await Future.delayed(const Duration(seconds: 3), () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const PaymentSuccessful(),
                        type: PageTransitionType.rightToLeft,
                        duration: const Duration(seconds: 1),
                        curve: Curves.bounceIn));
              });
              _btnController.reset();
            },
            width: MediaQuery.of(context).size.width,
            valueColor: Colors.white,
            borderRadius: 5,
            child: Text('Pay \$${widget.total}',
                style: const TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
