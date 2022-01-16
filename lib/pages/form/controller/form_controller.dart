import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fresume_app/apis/auth.dart';
import 'package:fresume_app/apis/resume.dart';
import 'package:fresume_app/global/models/pdf_model.dart';

final resumeApi = Provider<PdfModelApi?>((ref) {
  return ref.watch(authStateChangeProvider).when(data: (data) {
    if (data != null) {
      return PdfModelApi(data.uid, ref.read(firebaseFirestoreProvider));
    }

    return null;
  }, loading: () {
    return null;
  }, error: (e, s) {
    throw (e);
  });
});

final tempPdfProvider = StateProvider<PdfModel>((ref) {
  return PdfModel.createEmpty().copyWith(pdfId: 'noSave');
});

final pdfProvider = StateNotifierProvider<PdfStateNotifier, PdfModel>((ref) {
  return PdfStateNotifier();
});

class PdfStateNotifier extends StateNotifier<PdfModel> {
  PdfStateNotifier() : super(PdfModel.createEmpty().copyWith(pdfId: 'noSave'));

  void editPdf(PdfModel pdfModel) {
    state = pdfModel;
  }

  void editPersonal(Personal personal) {
    state = state.copyWith(resumePersonal: personal);
  }

  void editSummary(Summary summary) {
    state = state.copyWith(resumeSummary: summary);
  }

  void addEmploymentSection(Section section) {
    List<Section> sections = state.employment!;

    sections.add(section);

    state = state.copyWith(employment: sections);
  }

  void removeEmploymentSection(Section section) {
    List<Section> sections = state.employment!;

    sections.remove(section);

    state = state.copyWith(employment: sections);
  }

  void editEmploymentSection(Section section) {
    List<Section> sections = state.employment!;

    for (int i = 0; i < sections.length; i++) {
      if (sections[i].sectionId == section.sectionId) {
        sections[i] = section;
        break;
      }
    }

    state = state.copyWith(employment: sections);
  }

  void addEducationSection(Section section) {
    List<Section> sections = state.education!;

    sections.add(section);

    state = state.copyWith(education: sections);
  }

  void removeEducationSection(Section section) {
    List<Section> sections = state.education!;

    sections.remove(section);

    state = state.copyWith(education: sections);
  }

  void editEducationSection(Section section) {
    List<Section> sections = state.education!;

    for (int i = 0; i < sections.length; i++) {
      if (sections[i].sectionId == section.sectionId) {
        sections[i] = section;
        break;
      }
    }
    state = state.copyWith(education: sections);
  }

  void addActivitySection(Section section) {
    List<Section> sections = state.activities!;

    sections.add(section);

    state = state.copyWith(activities: sections);
  }

  void removeActivitySection(Section section) {
    List<Section> sections = state.activities!;

    sections.remove(section);

    state = state.copyWith(activities: sections);
  }

  void editActivitySection(Section section) {
    List<Section> sections = state.activities!;

    for (int i = 0; i < sections.length; i++) {
      if (sections[i].sectionId == section.sectionId) {
        sections[i] = section;
        break;
      }
    }
    state = state.copyWith(activities: sections);
  }

  void addSkill(Skill skill) {
    List<Skill> skills = state.skills!;

    skills.add(skill);

    state = state.copyWith(skills: skills);
  }

  void removeSkill(Skill skill) {
    List<Skill> skills = state.skills!;

    skills.remove(skill);

    state = state.copyWith(skills: skills);
  }

  void editSkill(Skill skill) {
    List<Skill> skills = state.skills!;

    for (int i = 0; i < skills.length; i++) {
      if (skills[i].skillId == skill.skillId) {
        skills[i] = skill;
        break;
      }
    }

    state = state.copyWith(skills: skills);
  }

  void addLanguage(Skill skill) {
    List<Skill> languages = state.languages!;

    languages.add(skill);

    state = state.copyWith(languages: languages);
  }

  void removeLanguage(Skill skill) {
    List<Skill> languages = state.languages!;

    languages.remove(skill);

    state = state.copyWith(languages: languages);
  }

  void editLanguage(Skill skill) {
    List<Skill> languages = state.languages!;

    for (int i = 0; i < languages.length; i++) {
      if (languages[i].skillId == skill.skillId) {
        languages[i] = skill;
        break;
      }
    }

    state = state.copyWith(languages: languages);
  }

  void addLink(Links link) {
    List<Links> links = state.links!;

    links.add(link);

    state = state.copyWith(links: links);
  }

  void removeLink(Links link) {
    List<Links> links = state.links!;

    links.remove(link);

    state = state.copyWith(links: links);
  }

  void editLink(Links link) {
    List<Links> links = state.links!;

    for (int i = 0; i < links.length; i++) {
      if (links[i].linksId == link.linksId) {
        links[i] = link;
        break;
      }
    }

    state = state.copyWith(links: links);
  }
}
