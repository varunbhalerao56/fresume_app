// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pdf_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Section _$SectionFromJson(Map<String, dynamic> json) {
  return _Section.fromJson(json);
}

/// @nodoc
class _$SectionTearOff {
  const _$SectionTearOff();

  _Section call(
      {required String sectionId,
      @JsonKey(defaultValue: "") String? textOne,
      @JsonKey(defaultValue: "") String? textTwo,
      @JsonKey(defaultValue: "") String? textThree,
      @JsonKey(defaultValue: "") String? description,
      @JsonKey(defaultValue: "") String? startDate,
      @JsonKey(defaultValue: "") String? endDate,
      @JsonKey(defaultValue: 0) int? position}) {
    return _Section(
      sectionId: sectionId,
      textOne: textOne,
      textTwo: textTwo,
      textThree: textThree,
      description: description,
      startDate: startDate,
      endDate: endDate,
      position: position,
    );
  }

  Section fromJson(Map<String, Object> json) {
    return Section.fromJson(json);
  }
}

/// @nodoc
const $Section = _$SectionTearOff();

/// @nodoc
mixin _$Section {
  String get sectionId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get textOne => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get textTwo => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get textThree => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get endDate => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int? get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionCopyWith<Section> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionCopyWith<$Res> {
  factory $SectionCopyWith(Section value, $Res Function(Section) then) =
      _$SectionCopyWithImpl<$Res>;
  $Res call(
      {String sectionId,
      @JsonKey(defaultValue: "") String? textOne,
      @JsonKey(defaultValue: "") String? textTwo,
      @JsonKey(defaultValue: "") String? textThree,
      @JsonKey(defaultValue: "") String? description,
      @JsonKey(defaultValue: "") String? startDate,
      @JsonKey(defaultValue: "") String? endDate,
      @JsonKey(defaultValue: 0) int? position});
}

/// @nodoc
class _$SectionCopyWithImpl<$Res> implements $SectionCopyWith<$Res> {
  _$SectionCopyWithImpl(this._value, this._then);

  final Section _value;
  // ignore: unused_field
  final $Res Function(Section) _then;

  @override
  $Res call({
    Object? sectionId = freezed,
    Object? textOne = freezed,
    Object? textTwo = freezed,
    Object? textThree = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      sectionId: sectionId == freezed
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      textOne: textOne == freezed
          ? _value.textOne
          : textOne // ignore: cast_nullable_to_non_nullable
              as String?,
      textTwo: textTwo == freezed
          ? _value.textTwo
          : textTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      textThree: textThree == freezed
          ? _value.textThree
          : textThree // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SectionCopyWith<$Res> implements $SectionCopyWith<$Res> {
  factory _$SectionCopyWith(_Section value, $Res Function(_Section) then) =
      __$SectionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String sectionId,
      @JsonKey(defaultValue: "") String? textOne,
      @JsonKey(defaultValue: "") String? textTwo,
      @JsonKey(defaultValue: "") String? textThree,
      @JsonKey(defaultValue: "") String? description,
      @JsonKey(defaultValue: "") String? startDate,
      @JsonKey(defaultValue: "") String? endDate,
      @JsonKey(defaultValue: 0) int? position});
}

/// @nodoc
class __$SectionCopyWithImpl<$Res> extends _$SectionCopyWithImpl<$Res>
    implements _$SectionCopyWith<$Res> {
  __$SectionCopyWithImpl(_Section _value, $Res Function(_Section) _then)
      : super(_value, (v) => _then(v as _Section));

  @override
  _Section get _value => super._value as _Section;

  @override
  $Res call({
    Object? sectionId = freezed,
    Object? textOne = freezed,
    Object? textTwo = freezed,
    Object? textThree = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? position = freezed,
  }) {
    return _then(_Section(
      sectionId: sectionId == freezed
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      textOne: textOne == freezed
          ? _value.textOne
          : textOne // ignore: cast_nullable_to_non_nullable
              as String?,
      textTwo: textTwo == freezed
          ? _value.textTwo
          : textTwo // ignore: cast_nullable_to_non_nullable
              as String?,
      textThree: textThree == freezed
          ? _value.textThree
          : textThree // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Section with DiagnosticableTreeMixin implements _Section {
  const _$_Section(
      {required this.sectionId,
      @JsonKey(defaultValue: "") this.textOne,
      @JsonKey(defaultValue: "") this.textTwo,
      @JsonKey(defaultValue: "") this.textThree,
      @JsonKey(defaultValue: "") this.description,
      @JsonKey(defaultValue: "") this.startDate,
      @JsonKey(defaultValue: "") this.endDate,
      @JsonKey(defaultValue: 0) this.position});

  factory _$_Section.fromJson(Map<String, dynamic> json) =>
      _$_$_SectionFromJson(json);

  @override
  final String sectionId;
  @override
  @JsonKey(defaultValue: "")
  final String? textOne;
  @override
  @JsonKey(defaultValue: "")
  final String? textTwo;
  @override
  @JsonKey(defaultValue: "")
  final String? textThree;
  @override
  @JsonKey(defaultValue: "")
  final String? description;
  @override
  @JsonKey(defaultValue: "")
  final String? startDate;
  @override
  @JsonKey(defaultValue: "")
  final String? endDate;
  @override
  @JsonKey(defaultValue: 0)
  final int? position;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Section(sectionId: $sectionId, textOne: $textOne, textTwo: $textTwo, textThree: $textThree, description: $description, startDate: $startDate, endDate: $endDate, position: $position)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Section'))
      ..add(DiagnosticsProperty('sectionId', sectionId))
      ..add(DiagnosticsProperty('textOne', textOne))
      ..add(DiagnosticsProperty('textTwo', textTwo))
      ..add(DiagnosticsProperty('textThree', textThree))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('position', position));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Section &&
            (identical(other.sectionId, sectionId) ||
                const DeepCollectionEquality()
                    .equals(other.sectionId, sectionId)) &&
            (identical(other.textOne, textOne) ||
                const DeepCollectionEquality()
                    .equals(other.textOne, textOne)) &&
            (identical(other.textTwo, textTwo) ||
                const DeepCollectionEquality()
                    .equals(other.textTwo, textTwo)) &&
            (identical(other.textThree, textThree) ||
                const DeepCollectionEquality()
                    .equals(other.textThree, textThree)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sectionId) ^
      const DeepCollectionEquality().hash(textOne) ^
      const DeepCollectionEquality().hash(textTwo) ^
      const DeepCollectionEquality().hash(textThree) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  _$SectionCopyWith<_Section> get copyWith =>
      __$SectionCopyWithImpl<_Section>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SectionToJson(this);
  }
}

abstract class _Section implements Section {
  const factory _Section(
      {required String sectionId,
      @JsonKey(defaultValue: "") String? textOne,
      @JsonKey(defaultValue: "") String? textTwo,
      @JsonKey(defaultValue: "") String? textThree,
      @JsonKey(defaultValue: "") String? description,
      @JsonKey(defaultValue: "") String? startDate,
      @JsonKey(defaultValue: "") String? endDate,
      @JsonKey(defaultValue: 0) int? position}) = _$_Section;

  factory _Section.fromJson(Map<String, dynamic> json) = _$_Section.fromJson;

  @override
  String get sectionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get textOne => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get textTwo => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get textThree => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get startDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get endDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: 0)
  int? get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SectionCopyWith<_Section> get copyWith =>
      throw _privateConstructorUsedError;
}

Personal _$PersonalFromJson(Map<String, dynamic> json) {
  return _Personal.fromJson(json);
}

/// @nodoc
class _$PersonalTearOff {
  const _$PersonalTearOff();

  _Personal call(
      {@JsonKey(defaultValue: "") String? sectionTitle,
      @JsonKey(defaultValue: "") String? firstName,
      @JsonKey(defaultValue: "") String? lastName,
      @JsonKey(defaultValue: "") String? email,
      @JsonKey(defaultValue: "") String? phoneNumber,
      @JsonKey(defaultValue: "") String? image,
      @JsonKey(defaultValue: "") String? nationality,
      @JsonKey(defaultValue: "") String? jobTitle,
      @JsonKey(defaultValue: "") String? city,
      @JsonKey(defaultValue: null) DateTime? dateOfBirth}) {
    return _Personal(
      sectionTitle: sectionTitle,
      firstName: firstName,
      lastName: lastName,
      email: email,
      phoneNumber: phoneNumber,
      image: image,
      nationality: nationality,
      jobTitle: jobTitle,
      city: city,
      dateOfBirth: dateOfBirth,
    );
  }

  Personal fromJson(Map<String, Object> json) {
    return Personal.fromJson(json);
  }
}

/// @nodoc
const $Personal = _$PersonalTearOff();

/// @nodoc
mixin _$Personal {
  @JsonKey(defaultValue: "")
  String? get sectionTitle => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get nationality => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get jobTitle => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: null)
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalCopyWith<Personal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalCopyWith<$Res> {
  factory $PersonalCopyWith(Personal value, $Res Function(Personal) then) =
      _$PersonalCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(defaultValue: "") String? sectionTitle,
      @JsonKey(defaultValue: "") String? firstName,
      @JsonKey(defaultValue: "") String? lastName,
      @JsonKey(defaultValue: "") String? email,
      @JsonKey(defaultValue: "") String? phoneNumber,
      @JsonKey(defaultValue: "") String? image,
      @JsonKey(defaultValue: "") String? nationality,
      @JsonKey(defaultValue: "") String? jobTitle,
      @JsonKey(defaultValue: "") String? city,
      @JsonKey(defaultValue: null) DateTime? dateOfBirth});
}

/// @nodoc
class _$PersonalCopyWithImpl<$Res> implements $PersonalCopyWith<$Res> {
  _$PersonalCopyWithImpl(this._value, this._then);

  final Personal _value;
  // ignore: unused_field
  final $Res Function(Personal) _then;

  @override
  $Res call({
    Object? sectionTitle = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? image = freezed,
    Object? nationality = freezed,
    Object? jobTitle = freezed,
    Object? city = freezed,
    Object? dateOfBirth = freezed,
  }) {
    return _then(_value.copyWith(
      sectionTitle: sectionTitle == freezed
          ? _value.sectionTitle
          : sectionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: jobTitle == freezed
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$PersonalCopyWith<$Res> implements $PersonalCopyWith<$Res> {
  factory _$PersonalCopyWith(_Personal value, $Res Function(_Personal) then) =
      __$PersonalCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: "") String? sectionTitle,
      @JsonKey(defaultValue: "") String? firstName,
      @JsonKey(defaultValue: "") String? lastName,
      @JsonKey(defaultValue: "") String? email,
      @JsonKey(defaultValue: "") String? phoneNumber,
      @JsonKey(defaultValue: "") String? image,
      @JsonKey(defaultValue: "") String? nationality,
      @JsonKey(defaultValue: "") String? jobTitle,
      @JsonKey(defaultValue: "") String? city,
      @JsonKey(defaultValue: null) DateTime? dateOfBirth});
}

/// @nodoc
class __$PersonalCopyWithImpl<$Res> extends _$PersonalCopyWithImpl<$Res>
    implements _$PersonalCopyWith<$Res> {
  __$PersonalCopyWithImpl(_Personal _value, $Res Function(_Personal) _then)
      : super(_value, (v) => _then(v as _Personal));

  @override
  _Personal get _value => super._value as _Personal;

  @override
  $Res call({
    Object? sectionTitle = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? image = freezed,
    Object? nationality = freezed,
    Object? jobTitle = freezed,
    Object? city = freezed,
    Object? dateOfBirth = freezed,
  }) {
    return _then(_Personal(
      sectionTitle: sectionTitle == freezed
          ? _value.sectionTitle
          : sectionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: jobTitle == freezed
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Personal with DiagnosticableTreeMixin implements _Personal {
  const _$_Personal(
      {@JsonKey(defaultValue: "") this.sectionTitle,
      @JsonKey(defaultValue: "") this.firstName,
      @JsonKey(defaultValue: "") this.lastName,
      @JsonKey(defaultValue: "") this.email,
      @JsonKey(defaultValue: "") this.phoneNumber,
      @JsonKey(defaultValue: "") this.image,
      @JsonKey(defaultValue: "") this.nationality,
      @JsonKey(defaultValue: "") this.jobTitle,
      @JsonKey(defaultValue: "") this.city,
      @JsonKey(defaultValue: null) this.dateOfBirth});

  factory _$_Personal.fromJson(Map<String, dynamic> json) =>
      _$_$_PersonalFromJson(json);

  @override
  @JsonKey(defaultValue: "")
  final String? sectionTitle;
  @override
  @JsonKey(defaultValue: "")
  final String? firstName;
  @override
  @JsonKey(defaultValue: "")
  final String? lastName;
  @override
  @JsonKey(defaultValue: "")
  final String? email;
  @override
  @JsonKey(defaultValue: "")
  final String? phoneNumber;
  @override
  @JsonKey(defaultValue: "")
  final String? image;
  @override
  @JsonKey(defaultValue: "")
  final String? nationality;
  @override
  @JsonKey(defaultValue: "")
  final String? jobTitle;
  @override
  @JsonKey(defaultValue: "")
  final String? city;
  @override
  @JsonKey(defaultValue: null)
  final DateTime? dateOfBirth;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Personal(sectionTitle: $sectionTitle, firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, image: $image, nationality: $nationality, jobTitle: $jobTitle, city: $city, dateOfBirth: $dateOfBirth)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Personal'))
      ..add(DiagnosticsProperty('sectionTitle', sectionTitle))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('nationality', nationality))
      ..add(DiagnosticsProperty('jobTitle', jobTitle))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('dateOfBirth', dateOfBirth));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Personal &&
            (identical(other.sectionTitle, sectionTitle) ||
                const DeepCollectionEquality()
                    .equals(other.sectionTitle, sectionTitle)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.nationality, nationality) ||
                const DeepCollectionEquality()
                    .equals(other.nationality, nationality)) &&
            (identical(other.jobTitle, jobTitle) ||
                const DeepCollectionEquality()
                    .equals(other.jobTitle, jobTitle)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sectionTitle) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(nationality) ^
      const DeepCollectionEquality().hash(jobTitle) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(dateOfBirth);

  @JsonKey(ignore: true)
  @override
  _$PersonalCopyWith<_Personal> get copyWith =>
      __$PersonalCopyWithImpl<_Personal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PersonalToJson(this);
  }
}

abstract class _Personal implements Personal {
  const factory _Personal(
      {@JsonKey(defaultValue: "") String? sectionTitle,
      @JsonKey(defaultValue: "") String? firstName,
      @JsonKey(defaultValue: "") String? lastName,
      @JsonKey(defaultValue: "") String? email,
      @JsonKey(defaultValue: "") String? phoneNumber,
      @JsonKey(defaultValue: "") String? image,
      @JsonKey(defaultValue: "") String? nationality,
      @JsonKey(defaultValue: "") String? jobTitle,
      @JsonKey(defaultValue: "") String? city,
      @JsonKey(defaultValue: null) DateTime? dateOfBirth}) = _$_Personal;

  factory _Personal.fromJson(Map<String, dynamic> json) = _$_Personal.fromJson;

  @override
  @JsonKey(defaultValue: "")
  String? get sectionTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get firstName => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get lastName => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get phoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get nationality => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get jobTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get city => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: null)
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PersonalCopyWith<_Personal> get copyWith =>
      throw _privateConstructorUsedError;
}

Summary _$SummaryFromJson(Map<String, dynamic> json) {
  return _Summary.fromJson(json);
}

/// @nodoc
class _$SummaryTearOff {
  const _$SummaryTearOff();

  _Summary call(
      {@JsonKey(defaultValue: "") String? sectionTitle,
      @JsonKey(defaultValue: "") String? professionalSummary}) {
    return _Summary(
      sectionTitle: sectionTitle,
      professionalSummary: professionalSummary,
    );
  }

  Summary fromJson(Map<String, Object> json) {
    return Summary.fromJson(json);
  }
}

/// @nodoc
const $Summary = _$SummaryTearOff();

/// @nodoc
mixin _$Summary {
  @JsonKey(defaultValue: "")
  String? get sectionTitle => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get professionalSummary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SummaryCopyWith<Summary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryCopyWith<$Res> {
  factory $SummaryCopyWith(Summary value, $Res Function(Summary) then) =
      _$SummaryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(defaultValue: "") String? sectionTitle,
      @JsonKey(defaultValue: "") String? professionalSummary});
}

/// @nodoc
class _$SummaryCopyWithImpl<$Res> implements $SummaryCopyWith<$Res> {
  _$SummaryCopyWithImpl(this._value, this._then);

  final Summary _value;
  // ignore: unused_field
  final $Res Function(Summary) _then;

  @override
  $Res call({
    Object? sectionTitle = freezed,
    Object? professionalSummary = freezed,
  }) {
    return _then(_value.copyWith(
      sectionTitle: sectionTitle == freezed
          ? _value.sectionTitle
          : sectionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      professionalSummary: professionalSummary == freezed
          ? _value.professionalSummary
          : professionalSummary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SummaryCopyWith<$Res> implements $SummaryCopyWith<$Res> {
  factory _$SummaryCopyWith(_Summary value, $Res Function(_Summary) then) =
      __$SummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: "") String? sectionTitle,
      @JsonKey(defaultValue: "") String? professionalSummary});
}

/// @nodoc
class __$SummaryCopyWithImpl<$Res> extends _$SummaryCopyWithImpl<$Res>
    implements _$SummaryCopyWith<$Res> {
  __$SummaryCopyWithImpl(_Summary _value, $Res Function(_Summary) _then)
      : super(_value, (v) => _then(v as _Summary));

  @override
  _Summary get _value => super._value as _Summary;

  @override
  $Res call({
    Object? sectionTitle = freezed,
    Object? professionalSummary = freezed,
  }) {
    return _then(_Summary(
      sectionTitle: sectionTitle == freezed
          ? _value.sectionTitle
          : sectionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      professionalSummary: professionalSummary == freezed
          ? _value.professionalSummary
          : professionalSummary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Summary with DiagnosticableTreeMixin implements _Summary {
  const _$_Summary(
      {@JsonKey(defaultValue: "") this.sectionTitle,
      @JsonKey(defaultValue: "") this.professionalSummary});

  factory _$_Summary.fromJson(Map<String, dynamic> json) =>
      _$_$_SummaryFromJson(json);

  @override
  @JsonKey(defaultValue: "")
  final String? sectionTitle;
  @override
  @JsonKey(defaultValue: "")
  final String? professionalSummary;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Summary(sectionTitle: $sectionTitle, professionalSummary: $professionalSummary)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Summary'))
      ..add(DiagnosticsProperty('sectionTitle', sectionTitle))
      ..add(DiagnosticsProperty('professionalSummary', professionalSummary));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Summary &&
            (identical(other.sectionTitle, sectionTitle) ||
                const DeepCollectionEquality()
                    .equals(other.sectionTitle, sectionTitle)) &&
            (identical(other.professionalSummary, professionalSummary) ||
                const DeepCollectionEquality()
                    .equals(other.professionalSummary, professionalSummary)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sectionTitle) ^
      const DeepCollectionEquality().hash(professionalSummary);

  @JsonKey(ignore: true)
  @override
  _$SummaryCopyWith<_Summary> get copyWith =>
      __$SummaryCopyWithImpl<_Summary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SummaryToJson(this);
  }
}

abstract class _Summary implements Summary {
  const factory _Summary(
      {@JsonKey(defaultValue: "") String? sectionTitle,
      @JsonKey(defaultValue: "") String? professionalSummary}) = _$_Summary;

  factory _Summary.fromJson(Map<String, dynamic> json) = _$_Summary.fromJson;

  @override
  @JsonKey(defaultValue: "")
  String? get sectionTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get professionalSummary => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SummaryCopyWith<_Summary> get copyWith =>
      throw _privateConstructorUsedError;
}

Skill _$SkillFromJson(Map<String, dynamic> json) {
  return _Skill.fromJson(json);
}

/// @nodoc
class _$SkillTearOff {
  const _$SkillTearOff();

  _Skill call(
      {required String skillId,
      @JsonKey(defaultValue: "") String? skillName,
      @JsonKey(defaultValue: "") String? skillProficieny,
      @JsonKey(defaultValue: 0) int? position}) {
    return _Skill(
      skillId: skillId,
      skillName: skillName,
      skillProficieny: skillProficieny,
      position: position,
    );
  }

  Skill fromJson(Map<String, Object> json) {
    return Skill.fromJson(json);
  }
}

/// @nodoc
const $Skill = _$SkillTearOff();

/// @nodoc
mixin _$Skill {
  String get skillId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get skillName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get skillProficieny => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int? get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillCopyWith<Skill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillCopyWith<$Res> {
  factory $SkillCopyWith(Skill value, $Res Function(Skill) then) =
      _$SkillCopyWithImpl<$Res>;
  $Res call(
      {String skillId,
      @JsonKey(defaultValue: "") String? skillName,
      @JsonKey(defaultValue: "") String? skillProficieny,
      @JsonKey(defaultValue: 0) int? position});
}

/// @nodoc
class _$SkillCopyWithImpl<$Res> implements $SkillCopyWith<$Res> {
  _$SkillCopyWithImpl(this._value, this._then);

  final Skill _value;
  // ignore: unused_field
  final $Res Function(Skill) _then;

  @override
  $Res call({
    Object? skillId = freezed,
    Object? skillName = freezed,
    Object? skillProficieny = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      skillId: skillId == freezed
          ? _value.skillId
          : skillId // ignore: cast_nullable_to_non_nullable
              as String,
      skillName: skillName == freezed
          ? _value.skillName
          : skillName // ignore: cast_nullable_to_non_nullable
              as String?,
      skillProficieny: skillProficieny == freezed
          ? _value.skillProficieny
          : skillProficieny // ignore: cast_nullable_to_non_nullable
              as String?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SkillCopyWith<$Res> implements $SkillCopyWith<$Res> {
  factory _$SkillCopyWith(_Skill value, $Res Function(_Skill) then) =
      __$SkillCopyWithImpl<$Res>;
  @override
  $Res call(
      {String skillId,
      @JsonKey(defaultValue: "") String? skillName,
      @JsonKey(defaultValue: "") String? skillProficieny,
      @JsonKey(defaultValue: 0) int? position});
}

/// @nodoc
class __$SkillCopyWithImpl<$Res> extends _$SkillCopyWithImpl<$Res>
    implements _$SkillCopyWith<$Res> {
  __$SkillCopyWithImpl(_Skill _value, $Res Function(_Skill) _then)
      : super(_value, (v) => _then(v as _Skill));

  @override
  _Skill get _value => super._value as _Skill;

  @override
  $Res call({
    Object? skillId = freezed,
    Object? skillName = freezed,
    Object? skillProficieny = freezed,
    Object? position = freezed,
  }) {
    return _then(_Skill(
      skillId: skillId == freezed
          ? _value.skillId
          : skillId // ignore: cast_nullable_to_non_nullable
              as String,
      skillName: skillName == freezed
          ? _value.skillName
          : skillName // ignore: cast_nullable_to_non_nullable
              as String?,
      skillProficieny: skillProficieny == freezed
          ? _value.skillProficieny
          : skillProficieny // ignore: cast_nullable_to_non_nullable
              as String?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Skill with DiagnosticableTreeMixin implements _Skill {
  const _$_Skill(
      {required this.skillId,
      @JsonKey(defaultValue: "") this.skillName,
      @JsonKey(defaultValue: "") this.skillProficieny,
      @JsonKey(defaultValue: 0) this.position});

  factory _$_Skill.fromJson(Map<String, dynamic> json) =>
      _$_$_SkillFromJson(json);

  @override
  final String skillId;
  @override
  @JsonKey(defaultValue: "")
  final String? skillName;
  @override
  @JsonKey(defaultValue: "")
  final String? skillProficieny;
  @override
  @JsonKey(defaultValue: 0)
  final int? position;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Skill(skillId: $skillId, skillName: $skillName, skillProficieny: $skillProficieny, position: $position)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Skill'))
      ..add(DiagnosticsProperty('skillId', skillId))
      ..add(DiagnosticsProperty('skillName', skillName))
      ..add(DiagnosticsProperty('skillProficieny', skillProficieny))
      ..add(DiagnosticsProperty('position', position));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Skill &&
            (identical(other.skillId, skillId) ||
                const DeepCollectionEquality()
                    .equals(other.skillId, skillId)) &&
            (identical(other.skillName, skillName) ||
                const DeepCollectionEquality()
                    .equals(other.skillName, skillName)) &&
            (identical(other.skillProficieny, skillProficieny) ||
                const DeepCollectionEquality()
                    .equals(other.skillProficieny, skillProficieny)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(skillId) ^
      const DeepCollectionEquality().hash(skillName) ^
      const DeepCollectionEquality().hash(skillProficieny) ^
      const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  _$SkillCopyWith<_Skill> get copyWith =>
      __$SkillCopyWithImpl<_Skill>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SkillToJson(this);
  }
}

abstract class _Skill implements Skill {
  const factory _Skill(
      {required String skillId,
      @JsonKey(defaultValue: "") String? skillName,
      @JsonKey(defaultValue: "") String? skillProficieny,
      @JsonKey(defaultValue: 0) int? position}) = _$_Skill;

  factory _Skill.fromJson(Map<String, dynamic> json) = _$_Skill.fromJson;

  @override
  String get skillId => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get skillName => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get skillProficieny => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: 0)
  int? get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SkillCopyWith<_Skill> get copyWith => throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
class _$LinksTearOff {
  const _$LinksTearOff();

  _Links call(
      {required String linksId,
      @JsonKey(defaultValue: "") String? linkName,
      @JsonKey(defaultValue: "") String? linkUrl,
      @JsonKey(defaultValue: 0) int? position}) {
    return _Links(
      linksId: linksId,
      linkName: linkName,
      linkUrl: linkUrl,
      position: position,
    );
  }

  Links fromJson(Map<String, Object> json) {
    return Links.fromJson(json);
  }
}

/// @nodoc
const $Links = _$LinksTearOff();

/// @nodoc
mixin _$Links {
  String get linksId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get linkName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get linkUrl => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int? get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res>;
  $Res call(
      {String linksId,
      @JsonKey(defaultValue: "") String? linkName,
      @JsonKey(defaultValue: "") String? linkUrl,
      @JsonKey(defaultValue: 0) int? position});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res> implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  final Links _value;
  // ignore: unused_field
  final $Res Function(Links) _then;

  @override
  $Res call({
    Object? linksId = freezed,
    Object? linkName = freezed,
    Object? linkUrl = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      linksId: linksId == freezed
          ? _value.linksId
          : linksId // ignore: cast_nullable_to_non_nullable
              as String,
      linkName: linkName == freezed
          ? _value.linkName
          : linkName // ignore: cast_nullable_to_non_nullable
              as String?,
      linkUrl: linkUrl == freezed
          ? _value.linkUrl
          : linkUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$LinksCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$LinksCopyWith(_Links value, $Res Function(_Links) then) =
      __$LinksCopyWithImpl<$Res>;
  @override
  $Res call(
      {String linksId,
      @JsonKey(defaultValue: "") String? linkName,
      @JsonKey(defaultValue: "") String? linkUrl,
      @JsonKey(defaultValue: 0) int? position});
}

/// @nodoc
class __$LinksCopyWithImpl<$Res> extends _$LinksCopyWithImpl<$Res>
    implements _$LinksCopyWith<$Res> {
  __$LinksCopyWithImpl(_Links _value, $Res Function(_Links) _then)
      : super(_value, (v) => _then(v as _Links));

  @override
  _Links get _value => super._value as _Links;

  @override
  $Res call({
    Object? linksId = freezed,
    Object? linkName = freezed,
    Object? linkUrl = freezed,
    Object? position = freezed,
  }) {
    return _then(_Links(
      linksId: linksId == freezed
          ? _value.linksId
          : linksId // ignore: cast_nullable_to_non_nullable
              as String,
      linkName: linkName == freezed
          ? _value.linkName
          : linkName // ignore: cast_nullable_to_non_nullable
              as String?,
      linkUrl: linkUrl == freezed
          ? _value.linkUrl
          : linkUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Links with DiagnosticableTreeMixin implements _Links {
  const _$_Links(
      {required this.linksId,
      @JsonKey(defaultValue: "") this.linkName,
      @JsonKey(defaultValue: "") this.linkUrl,
      @JsonKey(defaultValue: 0) this.position});

  factory _$_Links.fromJson(Map<String, dynamic> json) =>
      _$_$_LinksFromJson(json);

  @override
  final String linksId;
  @override
  @JsonKey(defaultValue: "")
  final String? linkName;
  @override
  @JsonKey(defaultValue: "")
  final String? linkUrl;
  @override
  @JsonKey(defaultValue: 0)
  final int? position;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Links(linksId: $linksId, linkName: $linkName, linkUrl: $linkUrl, position: $position)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Links'))
      ..add(DiagnosticsProperty('linksId', linksId))
      ..add(DiagnosticsProperty('linkName', linkName))
      ..add(DiagnosticsProperty('linkUrl', linkUrl))
      ..add(DiagnosticsProperty('position', position));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Links &&
            (identical(other.linksId, linksId) ||
                const DeepCollectionEquality()
                    .equals(other.linksId, linksId)) &&
            (identical(other.linkName, linkName) ||
                const DeepCollectionEquality()
                    .equals(other.linkName, linkName)) &&
            (identical(other.linkUrl, linkUrl) ||
                const DeepCollectionEquality()
                    .equals(other.linkUrl, linkUrl)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(linksId) ^
      const DeepCollectionEquality().hash(linkName) ^
      const DeepCollectionEquality().hash(linkUrl) ^
      const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  _$LinksCopyWith<_Links> get copyWith =>
      __$LinksCopyWithImpl<_Links>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LinksToJson(this);
  }
}

abstract class _Links implements Links {
  const factory _Links(
      {required String linksId,
      @JsonKey(defaultValue: "") String? linkName,
      @JsonKey(defaultValue: "") String? linkUrl,
      @JsonKey(defaultValue: 0) int? position}) = _$_Links;

  factory _Links.fromJson(Map<String, dynamic> json) = _$_Links.fromJson;

  @override
  String get linksId => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get linkName => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get linkUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: 0)
  int? get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LinksCopyWith<_Links> get copyWith => throw _privateConstructorUsedError;
}

PdfModel _$PdfModelFromJson(Map<String, dynamic> json) {
  return _PdfModel.fromJson(json);
}

/// @nodoc
class _$PdfModelTearOff {
  const _$PdfModelTearOff();

  _PdfModel call(
      {required String pdfId,
      required DateTime lastUpdated,
      @JsonKey(defaultValue: "") String? resumeTitle,
      @JsonKey(defaultValue: const []) List<Section>? employment,
      @JsonKey(defaultValue: const []) List<Section>? education,
      @JsonKey(defaultValue: const []) List<Section>? activities,
      @JsonKey(defaultValue: const []) List<Skill>? languages,
      @JsonKey(defaultValue: const []) List<Skill>? skills,
      @JsonKey(defaultValue: const []) List<Skill>? hobbies,
      @JsonKey(defaultValue: const []) List<Links>? links,
      @JsonKey(defaultValue: null) Summary? resumeSummary,
      @JsonKey(defaultValue: null) Personal? resumePersonal,
      @JsonKey(defaultValue: null) DateTime? lastSaved}) {
    return _PdfModel(
      pdfId: pdfId,
      lastUpdated: lastUpdated,
      resumeTitle: resumeTitle,
      employment: employment,
      education: education,
      activities: activities,
      languages: languages,
      skills: skills,
      hobbies: hobbies,
      links: links,
      resumeSummary: resumeSummary,
      resumePersonal: resumePersonal,
      lastSaved: lastSaved,
    );
  }

  PdfModel fromJson(Map<String, Object> json) {
    return PdfModel.fromJson(json);
  }
}

/// @nodoc
const $PdfModel = _$PdfModelTearOff();

/// @nodoc
mixin _$PdfModel {
  String get pdfId => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String? get resumeTitle => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: const [])
  List<Section>? get employment => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: const [])
  List<Section>? get education => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: const [])
  List<Section>? get activities => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: const [])
  List<Skill>? get languages => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: const [])
  List<Skill>? get skills => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: const [])
  List<Skill>? get hobbies => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: const [])
  List<Links>? get links => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: null)
  Summary? get resumeSummary => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: null)
  Personal? get resumePersonal => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: null)
  DateTime? get lastSaved => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PdfModelCopyWith<PdfModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfModelCopyWith<$Res> {
  factory $PdfModelCopyWith(PdfModel value, $Res Function(PdfModel) then) =
      _$PdfModelCopyWithImpl<$Res>;
  $Res call(
      {String pdfId,
      DateTime lastUpdated,
      @JsonKey(defaultValue: "") String? resumeTitle,
      @JsonKey(defaultValue: const []) List<Section>? employment,
      @JsonKey(defaultValue: const []) List<Section>? education,
      @JsonKey(defaultValue: const []) List<Section>? activities,
      @JsonKey(defaultValue: const []) List<Skill>? languages,
      @JsonKey(defaultValue: const []) List<Skill>? skills,
      @JsonKey(defaultValue: const []) List<Skill>? hobbies,
      @JsonKey(defaultValue: const []) List<Links>? links,
      @JsonKey(defaultValue: null) Summary? resumeSummary,
      @JsonKey(defaultValue: null) Personal? resumePersonal,
      @JsonKey(defaultValue: null) DateTime? lastSaved});

  $SummaryCopyWith<$Res>? get resumeSummary;
  $PersonalCopyWith<$Res>? get resumePersonal;
}

/// @nodoc
class _$PdfModelCopyWithImpl<$Res> implements $PdfModelCopyWith<$Res> {
  _$PdfModelCopyWithImpl(this._value, this._then);

  final PdfModel _value;
  // ignore: unused_field
  final $Res Function(PdfModel) _then;

  @override
  $Res call({
    Object? pdfId = freezed,
    Object? lastUpdated = freezed,
    Object? resumeTitle = freezed,
    Object? employment = freezed,
    Object? education = freezed,
    Object? activities = freezed,
    Object? languages = freezed,
    Object? skills = freezed,
    Object? hobbies = freezed,
    Object? links = freezed,
    Object? resumeSummary = freezed,
    Object? resumePersonal = freezed,
    Object? lastSaved = freezed,
  }) {
    return _then(_value.copyWith(
      pdfId: pdfId == freezed
          ? _value.pdfId
          : pdfId // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      resumeTitle: resumeTitle == freezed
          ? _value.resumeTitle
          : resumeTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      employment: employment == freezed
          ? _value.employment
          : employment // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
      education: education == freezed
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
      activities: activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
      languages: languages == freezed
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Skill>?,
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>?,
      hobbies: hobbies == freezed
          ? _value.hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as List<Skill>?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Links>?,
      resumeSummary: resumeSummary == freezed
          ? _value.resumeSummary
          : resumeSummary // ignore: cast_nullable_to_non_nullable
              as Summary?,
      resumePersonal: resumePersonal == freezed
          ? _value.resumePersonal
          : resumePersonal // ignore: cast_nullable_to_non_nullable
              as Personal?,
      lastSaved: lastSaved == freezed
          ? _value.lastSaved
          : lastSaved // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $SummaryCopyWith<$Res>? get resumeSummary {
    if (_value.resumeSummary == null) {
      return null;
    }

    return $SummaryCopyWith<$Res>(_value.resumeSummary!, (value) {
      return _then(_value.copyWith(resumeSummary: value));
    });
  }

  @override
  $PersonalCopyWith<$Res>? get resumePersonal {
    if (_value.resumePersonal == null) {
      return null;
    }

    return $PersonalCopyWith<$Res>(_value.resumePersonal!, (value) {
      return _then(_value.copyWith(resumePersonal: value));
    });
  }
}

/// @nodoc
abstract class _$PdfModelCopyWith<$Res> implements $PdfModelCopyWith<$Res> {
  factory _$PdfModelCopyWith(_PdfModel value, $Res Function(_PdfModel) then) =
      __$PdfModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String pdfId,
      DateTime lastUpdated,
      @JsonKey(defaultValue: "") String? resumeTitle,
      @JsonKey(defaultValue: const []) List<Section>? employment,
      @JsonKey(defaultValue: const []) List<Section>? education,
      @JsonKey(defaultValue: const []) List<Section>? activities,
      @JsonKey(defaultValue: const []) List<Skill>? languages,
      @JsonKey(defaultValue: const []) List<Skill>? skills,
      @JsonKey(defaultValue: const []) List<Skill>? hobbies,
      @JsonKey(defaultValue: const []) List<Links>? links,
      @JsonKey(defaultValue: null) Summary? resumeSummary,
      @JsonKey(defaultValue: null) Personal? resumePersonal,
      @JsonKey(defaultValue: null) DateTime? lastSaved});

  @override
  $SummaryCopyWith<$Res>? get resumeSummary;
  @override
  $PersonalCopyWith<$Res>? get resumePersonal;
}

/// @nodoc
class __$PdfModelCopyWithImpl<$Res> extends _$PdfModelCopyWithImpl<$Res>
    implements _$PdfModelCopyWith<$Res> {
  __$PdfModelCopyWithImpl(_PdfModel _value, $Res Function(_PdfModel) _then)
      : super(_value, (v) => _then(v as _PdfModel));

  @override
  _PdfModel get _value => super._value as _PdfModel;

  @override
  $Res call({
    Object? pdfId = freezed,
    Object? lastUpdated = freezed,
    Object? resumeTitle = freezed,
    Object? employment = freezed,
    Object? education = freezed,
    Object? activities = freezed,
    Object? languages = freezed,
    Object? skills = freezed,
    Object? hobbies = freezed,
    Object? links = freezed,
    Object? resumeSummary = freezed,
    Object? resumePersonal = freezed,
    Object? lastSaved = freezed,
  }) {
    return _then(_PdfModel(
      pdfId: pdfId == freezed
          ? _value.pdfId
          : pdfId // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      resumeTitle: resumeTitle == freezed
          ? _value.resumeTitle
          : resumeTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      employment: employment == freezed
          ? _value.employment
          : employment // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
      education: education == freezed
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
      activities: activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
      languages: languages == freezed
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Skill>?,
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>?,
      hobbies: hobbies == freezed
          ? _value.hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as List<Skill>?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Links>?,
      resumeSummary: resumeSummary == freezed
          ? _value.resumeSummary
          : resumeSummary // ignore: cast_nullable_to_non_nullable
              as Summary?,
      resumePersonal: resumePersonal == freezed
          ? _value.resumePersonal
          : resumePersonal // ignore: cast_nullable_to_non_nullable
              as Personal?,
      lastSaved: lastSaved == freezed
          ? _value.lastSaved
          : lastSaved // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PdfModel with DiagnosticableTreeMixin implements _PdfModel {
  const _$_PdfModel(
      {required this.pdfId,
      required this.lastUpdated,
      @JsonKey(defaultValue: "") this.resumeTitle,
      @JsonKey(defaultValue: const []) this.employment,
      @JsonKey(defaultValue: const []) this.education,
      @JsonKey(defaultValue: const []) this.activities,
      @JsonKey(defaultValue: const []) this.languages,
      @JsonKey(defaultValue: const []) this.skills,
      @JsonKey(defaultValue: const []) this.hobbies,
      @JsonKey(defaultValue: const []) this.links,
      @JsonKey(defaultValue: null) this.resumeSummary,
      @JsonKey(defaultValue: null) this.resumePersonal,
      @JsonKey(defaultValue: null) this.lastSaved});

  factory _$_PdfModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PdfModelFromJson(json);

  @override
  final String pdfId;
  @override
  final DateTime lastUpdated;
  @override
  @JsonKey(defaultValue: "")
  final String? resumeTitle;
  @override
  @JsonKey(defaultValue: const [])
  final List<Section>? employment;
  @override
  @JsonKey(defaultValue: const [])
  final List<Section>? education;
  @override
  @JsonKey(defaultValue: const [])
  final List<Section>? activities;
  @override
  @JsonKey(defaultValue: const [])
  final List<Skill>? languages;
  @override
  @JsonKey(defaultValue: const [])
  final List<Skill>? skills;
  @override
  @JsonKey(defaultValue: const [])
  final List<Skill>? hobbies;
  @override
  @JsonKey(defaultValue: const [])
  final List<Links>? links;
  @override
  @JsonKey(defaultValue: null)
  final Summary? resumeSummary;
  @override
  @JsonKey(defaultValue: null)
  final Personal? resumePersonal;
  @override
  @JsonKey(defaultValue: null)
  final DateTime? lastSaved;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PdfModel(pdfId: $pdfId, lastUpdated: $lastUpdated, resumeTitle: $resumeTitle, employment: $employment, education: $education, activities: $activities, languages: $languages, skills: $skills, hobbies: $hobbies, links: $links, resumeSummary: $resumeSummary, resumePersonal: $resumePersonal, lastSaved: $lastSaved)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PdfModel'))
      ..add(DiagnosticsProperty('pdfId', pdfId))
      ..add(DiagnosticsProperty('lastUpdated', lastUpdated))
      ..add(DiagnosticsProperty('resumeTitle', resumeTitle))
      ..add(DiagnosticsProperty('employment', employment))
      ..add(DiagnosticsProperty('education', education))
      ..add(DiagnosticsProperty('activities', activities))
      ..add(DiagnosticsProperty('languages', languages))
      ..add(DiagnosticsProperty('skills', skills))
      ..add(DiagnosticsProperty('hobbies', hobbies))
      ..add(DiagnosticsProperty('links', links))
      ..add(DiagnosticsProperty('resumeSummary', resumeSummary))
      ..add(DiagnosticsProperty('resumePersonal', resumePersonal))
      ..add(DiagnosticsProperty('lastSaved', lastSaved));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PdfModel &&
            (identical(other.pdfId, pdfId) ||
                const DeepCollectionEquality().equals(other.pdfId, pdfId)) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdated, lastUpdated)) &&
            (identical(other.resumeTitle, resumeTitle) ||
                const DeepCollectionEquality()
                    .equals(other.resumeTitle, resumeTitle)) &&
            (identical(other.employment, employment) ||
                const DeepCollectionEquality()
                    .equals(other.employment, employment)) &&
            (identical(other.education, education) ||
                const DeepCollectionEquality()
                    .equals(other.education, education)) &&
            (identical(other.activities, activities) ||
                const DeepCollectionEquality()
                    .equals(other.activities, activities)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)) &&
            (identical(other.skills, skills) ||
                const DeepCollectionEquality().equals(other.skills, skills)) &&
            (identical(other.hobbies, hobbies) ||
                const DeepCollectionEquality()
                    .equals(other.hobbies, hobbies)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.resumeSummary, resumeSummary) ||
                const DeepCollectionEquality()
                    .equals(other.resumeSummary, resumeSummary)) &&
            (identical(other.resumePersonal, resumePersonal) ||
                const DeepCollectionEquality()
                    .equals(other.resumePersonal, resumePersonal)) &&
            (identical(other.lastSaved, lastSaved) ||
                const DeepCollectionEquality()
                    .equals(other.lastSaved, lastSaved)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pdfId) ^
      const DeepCollectionEquality().hash(lastUpdated) ^
      const DeepCollectionEquality().hash(resumeTitle) ^
      const DeepCollectionEquality().hash(employment) ^
      const DeepCollectionEquality().hash(education) ^
      const DeepCollectionEquality().hash(activities) ^
      const DeepCollectionEquality().hash(languages) ^
      const DeepCollectionEquality().hash(skills) ^
      const DeepCollectionEquality().hash(hobbies) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(resumeSummary) ^
      const DeepCollectionEquality().hash(resumePersonal) ^
      const DeepCollectionEquality().hash(lastSaved);

  @JsonKey(ignore: true)
  @override
  _$PdfModelCopyWith<_PdfModel> get copyWith =>
      __$PdfModelCopyWithImpl<_PdfModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PdfModelToJson(this);
  }
}

abstract class _PdfModel implements PdfModel {
  const factory _PdfModel(
      {required String pdfId,
      required DateTime lastUpdated,
      @JsonKey(defaultValue: "") String? resumeTitle,
      @JsonKey(defaultValue: const []) List<Section>? employment,
      @JsonKey(defaultValue: const []) List<Section>? education,
      @JsonKey(defaultValue: const []) List<Section>? activities,
      @JsonKey(defaultValue: const []) List<Skill>? languages,
      @JsonKey(defaultValue: const []) List<Skill>? skills,
      @JsonKey(defaultValue: const []) List<Skill>? hobbies,
      @JsonKey(defaultValue: const []) List<Links>? links,
      @JsonKey(defaultValue: null) Summary? resumeSummary,
      @JsonKey(defaultValue: null) Personal? resumePersonal,
      @JsonKey(defaultValue: null) DateTime? lastSaved}) = _$_PdfModel;

  factory _PdfModel.fromJson(Map<String, dynamic> json) = _$_PdfModel.fromJson;

  @override
  String get pdfId => throw _privateConstructorUsedError;
  @override
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: "")
  String? get resumeTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: const [])
  List<Section>? get employment => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: const [])
  List<Section>? get education => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: const [])
  List<Section>? get activities => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: const [])
  List<Skill>? get languages => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: const [])
  List<Skill>? get skills => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: const [])
  List<Skill>? get hobbies => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: const [])
  List<Links>? get links => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: null)
  Summary? get resumeSummary => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: null)
  Personal? get resumePersonal => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: null)
  DateTime? get lastSaved => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PdfModelCopyWith<_PdfModel> get copyWith =>
      throw _privateConstructorUsedError;
}
