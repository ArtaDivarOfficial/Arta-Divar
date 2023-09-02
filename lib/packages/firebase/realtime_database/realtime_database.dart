import 'package:firebase_database/firebase_database.dart';

class FirebaseRealtimeDatabase {
  static DatabaseReference? _databaseReference =
      FirebaseDatabase.instance.ref();

  static DatabaseReference? getInstance() {
    _databaseReference ??= FirebaseDatabase.instance.ref();
    return _databaseReference;
  }
}
