import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {

   Future<User?> signInWithGoogle() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
    await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
        await auth.signInWithCredential(credential);

        user = userCredential.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          // handle the error here
        }
        else if (e.code == 'invalid-credential') {
          // handle the error here
        }
      } catch (e) {
        // handle the error here
      }
    }

    return user;
  }


  // // Google Sign in
  // singInWithGoogle() async {
  //   //begin interactive sign in process
  //   final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
  //
  //   // obtain auth details from request
  //   final GoogleSignInAuthentication gAuth = await gUser!.authentication;
  //
  //   //create a new credential for user
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: gAuth.accessToken,
  //     idToken: gAuth.idToken,
  //   );
  //
  //   // finally, lets sign in
  //   return await FirebaseAuth.instance.signInWithCredential(credential);
  // }
}