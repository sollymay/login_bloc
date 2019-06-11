import 'dart:async';

class Validators {
  // The <String, String> is to say which type its going to receive and . remember sink is kinda what we return
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if(email.contains('@')){
        sink.add(email);
      } else {
        sink.addError('Enter a valid email');
      }
    }
  );

    final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if(password.length > 3){
        sink.add(password);
      } else {
        sink.addError('Password is not 4 characters long');
      }
    }
  );
}