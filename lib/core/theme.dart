import 'package:flutter/material.dart';

const TextStyle kH1 = TextStyle(color: kNeutralN800, fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: .4);
const TextStyle kH2 = TextStyle(color: kNeutralN100, fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: .2);
const TextStyle kH3 = TextStyle(color: kNeutralN100, fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: .2);

const TextStyle kD1 = TextStyle(color: kNeutralN100, fontSize: 14, letterSpacing: .4);
const TextStyle kD2 = TextStyle(color: kNeutralN800, fontSize: 12, letterSpacing: .2, fontWeight: FontWeight.bold);
const TextStyle kD3 = TextStyle(color: kNeutralN800, fontSize: 14, letterSpacing: .2, fontWeight: FontWeight.w500);
const TextStyle kD4 = TextStyle(color: kNeutralN100, fontSize: 12, letterSpacing: .2, fontWeight: FontWeight.normal);

const TextStyle kInputLabel = TextStyle(color: kNeutralN50, fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: .2);
const TextStyle kInputHint = TextStyle(color: kNeutralN100, fontSize: 14, letterSpacing: .2);

const Color kWhite = Color(0xFFFFFFFF);
const Color kBlack = Color(0xFF000000);
const Color kPrimaryColor = Color(0xFF3E4fAC);
const Color kPrimaryColorDisabled = Color(0xFFC0B6F2);
const Color kTransparent = Color(0x00FFFFFF);
const Color kSocialNetwork = Color(0xFFF3F8FE);
const Color kNeutralN10 = Color(0xFFFAFBFC);
const Color kNeutralN20 = Color(0xFFF4F5F7);
const Color kNeutralN100 = Color(0xFF7A869A);
const Color kNeutralN50 = Color(0xFFC1C7D0);
const Color kNeutralN30 = Color(0xFFEBECF0);
const Color kNeutralN800 = Color(0xFF172B4D);
const Color kPurpleP50 = Color(0xFFEAE6FF);
const Color kYellowY400 = Color(0xFFFF991F);
const Color kGreen2 = Color(0xFF27AE60);

const List<BoxShadow> kBoxShadow = [
  BoxShadow(
    blurRadius: 30,
    color: Color(0x05000000),
    offset: Offset(0, 0),
    spreadRadius: 10
  )
];

const Radius kBorderRadius = Radius.circular(12);
const double kPadding = 30;