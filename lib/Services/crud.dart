import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class crudMethods{
    bool isLoggedIn(){
      if (FirebaseAuth.instance.currentUser() != null){
          return true;
      }
      else{
        return false;
      }

      }

    updatedata(uid,selectedDoc, newValues){
      Firestore.instance
      .collection(uid)
      .document(selectedDoc)
      .updateData(newValues).
      catchError((e){
        print(e);
      });
    }


    }



