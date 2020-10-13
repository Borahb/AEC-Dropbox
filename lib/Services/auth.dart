import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_tpc/models/user.dart';


class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;


  //create user object based on firebase user

  User _userFromFirebaseUser(FirebaseUser user){
      return user != null ? User(uid: user.uid) : null;
  }
      

// auth change user stream

Stream<User> get user {
    return _auth.onAuthStateChanged
    .map(_userFromFirebaseUser);

}

//sign in with email and pass
Future signIn(String _email, String _password) async {
  try{
    AuthResult result = await _auth.signInWithEmailAndPassword(email: _email, password: _password);
    FirebaseUser user = result.user;
    return _userFromFirebaseUser(user);

  }catch(e){
    print(e.toString());
    return null;

  }


}

// sign out
Future signOut()async{
      try{
        return await _auth.signOut();

      }catch(e){
        print(e.toString());
      }  
}
  
// get UID
Future<String> getUserUID()async{
 return (await _auth.currentUser()).uid;
}


}