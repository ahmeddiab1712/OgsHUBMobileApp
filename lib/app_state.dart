import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _studentID = prefs.getInt('ff_studentID') ?? _studentID;
    });
    _safeInit(() {
      _studentName = prefs.getString('ff_studentName') ?? _studentName;
    });
    _safeInit(() {
      _studentMobile = prefs.getString('ff_studentMobile') ?? _studentMobile;
    });
    _safeInit(() {
      _logginFlag = prefs.getBool('ff_logginFlag') ?? _logginFlag;
    });
    _safeInit(() {
      _walletBalance = prefs.getInt('ff_walletBalance') ?? _walletBalance;
    });
    _safeInit(() {
      _parentmobile = prefs.getString('ff_parentmobile') ?? _parentmobile;
    });
    _safeInit(() {
      _email = prefs.getString('ff_email') ?? _email;
    });
    _safeInit(() {
      _educationalsystem =
          prefs.getString('ff_educationalsystem') ?? _educationalsystem;
    });
    _safeInit(() {
      _firstletter = prefs.getString('ff_firstletter') ?? _firstletter;
    });
    _safeInit(() {
      _lastletter = prefs.getString('ff_lastletter') ?? _lastletter;
    });
    _safeInit(() {
      _prParentMobile = prefs.getString('ff_prParentMobile') ?? _prParentMobile;
    });
    _safeInit(() {
      _studentParentFlag =
          prefs.getBool('ff_studentParentFlag') ?? _studentParentFlag;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _studentID = 0;
  int get studentID => _studentID;
  set studentID(int value) {
    _studentID = value;
    prefs.setInt('ff_studentID', value);
  }

  String _studentName = '';
  String get studentName => _studentName;
  set studentName(String value) {
    _studentName = value;
    prefs.setString('ff_studentName', value);
  }

  String _studentMobile = '';
  String get studentMobile => _studentMobile;
  set studentMobile(String value) {
    _studentMobile = value;
    prefs.setString('ff_studentMobile', value);
  }

  bool _logginFlag = false;
  bool get logginFlag => _logginFlag;
  set logginFlag(bool value) {
    _logginFlag = value;
    prefs.setBool('ff_logginFlag', value);
  }

  int _walletBalance = 0;
  int get walletBalance => _walletBalance;
  set walletBalance(int value) {
    _walletBalance = value;
    prefs.setInt('ff_walletBalance', value);
  }

  String _parentmobile = '';
  String get parentmobile => _parentmobile;
  set parentmobile(String value) {
    _parentmobile = value;
    prefs.setString('ff_parentmobile', value);
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
    prefs.setString('ff_email', value);
  }

  String _educationalsystem = '';
  String get educationalsystem => _educationalsystem;
  set educationalsystem(String value) {
    _educationalsystem = value;
    prefs.setString('ff_educationalsystem', value);
  }

  String _firstletter = '';
  String get firstletter => _firstletter;
  set firstletter(String value) {
    _firstletter = value;
    prefs.setString('ff_firstletter', value);
  }

  String _lastletter = '';
  String get lastletter => _lastletter;
  set lastletter(String value) {
    _lastletter = value;
    prefs.setString('ff_lastletter', value);
  }

  String _prParentMobile = '';
  String get prParentMobile => _prParentMobile;
  set prParentMobile(String value) {
    _prParentMobile = value;
    prefs.setString('ff_prParentMobile', value);
  }

  bool _studentParentFlag = false;
  bool get studentParentFlag => _studentParentFlag;
  set studentParentFlag(bool value) {
    _studentParentFlag = value;
    prefs.setBool('ff_studentParentFlag', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
