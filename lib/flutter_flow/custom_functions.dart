import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

bool isSuccess(dynamic status) {
  return (status == 1) ? true : false;
}

bool isNull(dynamic val) {
  return (val == null) ? true : false;
}
