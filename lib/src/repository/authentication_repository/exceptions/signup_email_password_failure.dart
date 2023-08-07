
class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure([this.message = "An unknown error occured."]);

  factory SignUpWithEmailAndPasswordFailure.code(String code){

    switch(code){
      case 'weak-password': return SignUpWithEmailAndPasswordFailure('please enter a stronger password');
      case 'invalid-emal': return SignUpWithEmailAndPasswordFailure('Email is not vaid try recorrecting it');
      case 'email-already-in-use': return SignUpWithEmailAndPasswordFailure('An account already exsist for that email');
      case 'operation-not-allowed': return SignUpWithEmailAndPasswordFailure('operation is not allowed please contact support');
      case 'user-disabled': return SignUpWithEmailAndPasswordFailure('this user has been disabled. please contact support for help');
      default: return SignUpWithEmailAndPasswordFailure();
    }

  }
}