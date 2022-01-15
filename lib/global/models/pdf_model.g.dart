// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pdf_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Section _$_$_SectionFromJson(Map<String, dynamic> json) {
  return _$_Section(
    sectionId: json['sectionId'] as String,
    textOne: json['textOne'] as String? ?? '',
    textTwo: json['textTwo'] as String? ?? '',
    textThree: json['textThree'] as String? ?? '',
    description: json['description'] as String? ?? '',
    startDate: json['startDate'] as String? ?? '',
    endDate: json['endDate'] as String? ?? '',
    position: json['position'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_SectionToJson(_$_Section instance) =>
    <String, dynamic>{
      'sectionId': instance.sectionId,
      'textOne': instance.textOne,
      'textTwo': instance.textTwo,
      'textThree': instance.textThree,
      'description': instance.description,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'position': instance.position,
    };

_$_Personal _$_$_PersonalFromJson(Map<String, dynamic> json) {
  return _$_Personal(
    sectionTitle: json['sectionTitle'] as String? ?? '',
    firstName: json['firstName'] as String? ?? '',
    lastName: json['lastName'] as String? ?? '',
    email: json['email'] as String? ?? '',
    phoneNumber: json['phoneNumber'] as String? ?? '',
    image: json['image'] as String? ?? '',
    nationality: json['nationality'] as String? ?? '',
    jobTitle: json['jobTitle'] as String? ?? '',
    city: json['city'] as String? ?? '',
    dateOfBirth: json['dateOfBirth'] == null
        ? null
        : DateTime.parse(json['dateOfBirth'] as String),
  );
}

Map<String, dynamic> _$_$_PersonalToJson(_$_Personal instance) =>
    <String, dynamic>{
      'sectionTitle': instance.sectionTitle,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'image': instance.image,
      'nationality': instance.nationality,
      'jobTitle': instance.jobTitle,
      'city': instance.city,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
    };

_$_Summary _$_$_SummaryFromJson(Map<String, dynamic> json) {
  return _$_Summary(
    sectionTitle: json['sectionTitle'] as String? ?? '',
    professionalSummary: json['professionalSummary'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_SummaryToJson(_$_Summary instance) =>
    <String, dynamic>{
      'sectionTitle': instance.sectionTitle,
      'professionalSummary': instance.professionalSummary,
    };

_$_Skill _$_$_SkillFromJson(Map<String, dynamic> json) {
  return _$_Skill(
    skillId: json['skillId'] as String,
    skillName: json['skillName'] as String? ?? '',
    skillProficieny: json['skillProficieny'] as String? ?? '',
    position: json['position'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_SkillToJson(_$_Skill instance) => <String, dynamic>{
      'skillId': instance.skillId,
      'skillName': instance.skillName,
      'skillProficieny': instance.skillProficieny,
      'position': instance.position,
    };

_$_Links _$_$_LinksFromJson(Map<String, dynamic> json) {
  return _$_Links(
    linksId: json['linksId'] as String,
    linkName: json['linkName'] as String? ?? '',
    linkUrl: json['linkUrl'] as String? ?? '',
    position: json['position'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_LinksToJson(_$_Links instance) => <String, dynamic>{
      'linksId': instance.linksId,
      'linkName': instance.linkName,
      'linkUrl': instance.linkUrl,
      'position': instance.position,
    };

_$_PdfModel _$_$_PdfModelFromJson(Map<String, dynamic> json) {
  return _$_PdfModel(
    pdfId: json['pdfId'] as String,
    lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    resumeTitle: json['resumeTitle'] as String? ?? '',
    employment: (json['employment'] as List<dynamic>?)
            ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    education: (json['education'] as List<dynamic>?)
            ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    activities: (json['activities'] as List<dynamic>?)
            ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    languages: (json['languages'] as List<dynamic>?)
            ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    skills: (json['skills'] as List<dynamic>?)
            ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    hobbies: (json['hobbies'] as List<dynamic>?)
            ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    links: (json['links'] as List<dynamic>?)
            ?.map((e) => Links.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    resumeSummary: json['resumeSummary'] == null
        ? null
        : Summary.fromJson(json['resumeSummary'] as Map<String, dynamic>),
    resumePersonal: json['resumePersonal'] == null
        ? null
        : Personal.fromJson(json['resumePersonal'] as Map<String, dynamic>),
    lastSaved: json['lastSaved'] == null
        ? null
        : DateTime.parse(json['lastSaved'] as String),
  );
}

Map<String, dynamic> _$_$_PdfModelToJson(_$_PdfModel instance) =>
    <String, dynamic>{
      'pdfId': instance.pdfId,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'resumeTitle': instance.resumeTitle,
      'employment': instance.employment?.map((e) => e.toJson()).toList(),
      'education': instance.education?.map((e) => e.toJson()).toList(),
      'activities': instance.activities?.map((e) => e.toJson()).toList(),
      'languages': instance.languages?.map((e) => e.toJson()).toList(),
      'skills': instance.skills?.map((e) => e.toJson()).toList(),
      'hobbies': instance.hobbies?.map((e) => e.toJson()).toList(),
      'links': instance.links?.map((e) => e.toJson()).toList(),
      'resumeSummary': instance.resumeSummary?.toJson(),
      'resumePersonal': instance.resumePersonal?.toJson(),
      'lastSaved': instance.lastSaved?.toIso8601String(),
    };
