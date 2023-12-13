import 'package:another_flushbar/flushbar.dart';
import 'package:credit_card_validator/credit_card_validator.dart';
import 'package:flutter/material.dart';


class CreditCardValidationBloc {
  CreditCardValidator _ccValidator = CreditCardValidator();

   validateCreditCardInfo(String ccNum, String expDate, String cvv) {
    var ccNumResults = _ccValidator.validateCCNum(ccNum);
    var expDateResults = _ccValidator.validateExpDate(expDate);
    var cvvResults = _ccValidator.validateCVV(cvv, ccNumResults.ccType);
  

    if (ccNumResults.isValid  && expDateResults.isValid && cvvResults.isValid == true) {
      print('true');
      return 'success';
      // Call UI code that shows to the user their credit card number is invalid
      
    } else{
     print('false');
     return 'failed';
      // Flushbar(
      //   animationDuration: Duration(seconds: 1),
      //   backgroundColor: Colors.black,
      //   borderRadius: BorderRadius.circular(5),
      //   flushbarPosition: FlushbarPosition.TOP,
      //   duration: Duration(seconds: 4),
      //   boxShadows: [
      //     BoxShadow(color: Colors.black, blurRadius: 8, offset: Offset(2, 5))
      //   ],
      //   isDismissible: true,
      //   icon: Icon(
      //     Icons.warning,
      //     color: Colors.white,
      //   ),
      //   forwardAnimationCurve: Curves.easeIn,
      //   flushbarStyle: FlushbarStyle.FLOATING,
      //   titleColor: Colors.white,
      //   title: 'Card error',
      //   messageColor: Colors.white,
      //   message: 'Invalid card details',
      // );
    }
  }


  void validateCreditCardNum(String ccNum) {
    var ccNumResults = _ccValidator.validateCCNum(ccNum);
  

    if (ccNumResults.isPotentiallyValid) {
      print('error');
      // Call UI code that shows to the user their credit card number is invalid
      Flushbar(
        animationDuration: Duration(seconds: 1),
        backgroundColor: Colors.black,
        borderRadius: BorderRadius.circular(5),
        flushbarPosition: FlushbarPosition.TOP,
        duration: Duration(seconds: 4),
        boxShadows: [
          BoxShadow(color: Colors.black, blurRadius: 8, offset: Offset(2, 5))
        ],
        isDismissible: true,
        icon: Icon(
          Icons.warning,
          color: Colors.white,
        ),
        forwardAnimationCurve: Curves.easeIn,
        flushbarStyle: FlushbarStyle.FLOATING,
        titleColor: Colors.white,
        title: 'Card error',
        messageColor: Colors.white,
        message: 'Invalid name on card details',
      );
    }
  }

}
