import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:fresume_app/global/constants/constants.dart';

part 'pdf_model.freezed.dart';
part 'pdf_model.g.dart';

@freezed
class Section with _$Section {
  const factory Section({
    required String sectionId,
    @JsonKey(defaultValue: "") String? textOne,
    @JsonKey(defaultValue: "") String? textTwo,
    @JsonKey(defaultValue: "") String? textThree,
    @JsonKey(defaultValue: "") String? description,
    @JsonKey(defaultValue: "") String? startDate,
    @JsonKey(defaultValue: "") String? endDate,
    @JsonKey(defaultValue: 0) int? position,
  }) = _Section;

  factory Section.fromJson(Map<String, dynamic> json) => _$SectionFromJson(json);

  factory Section.createEmpty() {
    return Section(sectionId: uuid.v4(), textOne: 'Untitled');
  }
}

@freezed
class Personal with _$Personal {
  @JsonSerializable(explicitToJson: true)
  const factory Personal({
    @JsonKey(defaultValue: "") String? sectionTitle,
    @JsonKey(defaultValue: "") String? firstName,
    @JsonKey(defaultValue: "") String? lastName,
    @JsonKey(defaultValue: "") String? email,
    @JsonKey(defaultValue: "") String? phoneNumber,
    @JsonKey(defaultValue: "") String? image,
    @JsonKey(defaultValue: "") String? nationality,
    @JsonKey(defaultValue: "") String? jobTitle,
    @JsonKey(defaultValue: "") String? city,
    @JsonKey(defaultValue: null) DateTime? dateOfBirth,
  }) = _Personal;

  factory Personal.fromJson(Map<String, dynamic> json) => _$PersonalFromJson(json);
}

@freezed
class Summary with _$Summary {
  @JsonSerializable(explicitToJson: true)
  const factory Summary({
    @JsonKey(defaultValue: "") String? sectionTitle,
    @JsonKey(defaultValue: "") String? professionalSummary,
  }) = _Summary;

  factory Summary.fromJson(Map<String, dynamic> json) => _$SummaryFromJson(json);
}

@freezed
class Skill with _$Skill {
  @JsonSerializable(explicitToJson: true)
  const factory Skill(
      {required String skillId,
      @JsonKey(defaultValue: "") String? skillName,
      @JsonKey(defaultValue: "") String? skillProficieny,
      @JsonKey(defaultValue: 0) int? position}) = _Skill;

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);

  factory Skill.createEmpty() {
    return Skill(skillId: uuid.v4());
  }
}

@freezed
class Links with _$Links {
  @JsonSerializable(explicitToJson: true)
  const factory Links(
      {required String linksId,
      @JsonKey(defaultValue: "") String? linkName,
      @JsonKey(defaultValue: "") String? linkUrl,
      @JsonKey(defaultValue: 0) int? position}) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  factory Links.createEmpty() {
    return Links(linksId: uuid.v4());
  }
}

@freezed
class PdfModel with _$PdfModel {

  @JsonSerializable(explicitToJson: true)
  const factory PdfModel({
    required String pdfId,
    required DateTime lastUpdated,
    @JsonKey(defaultValue: "") String? resumeTitle,
    @JsonKey(defaultValue: []) List<Section>? employment,
    @JsonKey(defaultValue: []) List<Section>? education,
    @JsonKey(defaultValue: []) List<Section>? activities,
    @JsonKey(defaultValue: []) List<Skill>? languages,
    @JsonKey(defaultValue: []) List<Skill>? skills,
    @JsonKey(defaultValue: []) List<Skill>? hobbies,
    @JsonKey(defaultValue: []) List<Links>? links,
    @JsonKey(defaultValue: null) Summary? resumeSummary,
    @JsonKey(defaultValue: null) Personal? resumePersonal,
    @JsonKey(defaultValue: null) DateTime? lastSaved,
  }) = _PdfModel;

  factory PdfModel.fromJson(Map<String, dynamic> json) => _$PdfModelFromJson(json);

  factory PdfModel.createEmpty() {
    return PdfModel(
        pdfId: uuid.v4(),
        lastUpdated: DateTime.now(),
        resumeTitle: "",
        employment: [],
        education: [],
        activities: [],
        skills: [],
        hobbies: [],
        links: [],
        languages: [],
        lastSaved: DateTime.now(),
        resumeSummary: const Summary(),
        resumePersonal: const Personal());
  }
}
