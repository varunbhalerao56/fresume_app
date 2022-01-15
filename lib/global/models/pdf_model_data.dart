import 'package:fresume_app/global/constants/constants.dart';
import 'package:fresume_app/global/models/pdf_model.dart';

PdfModel _pdfEmpty = PdfModel.createEmpty();

PdfModel pdfModelData = _pdfEmpty.copyWith(
  pdfId: uuid.v4(),
  employment: [employmentSectionData],
  education: [educationSectionData],
  links: [linksData],
  activities: [activitySectionData],
  resumePersonal: personalData,
  resumeSummary: summary,
  skills: skillsData,
  languages: language,
);

Section employmentSectionData = const Section(
    sectionId: 'employmentSection',
    textOne: 'Flutter Developer',
    textTwo: 'Natrually Plus',
    textThree: 'Singapore',
    startDate: 'JUNE 2021',
    endDate: 'PRESENT',
    description:
        'I am a motivated IT graduate looking forward to expanding my knowledge and career in the IT sector. Along with that, I want to experience working with professionals in the field so that I am able to stay up-to-date and learn the best practices that should be used while working in the IT sector. As for me, some of my greatest strengths are communicating and working alongside my peers.');

Section activitySectionData = const Section(
    sectionId: 'activitySection',
    textOne: 'Member',
    textTwo: 'Singapore Computer Society (SCS) Student Chapter',
    textThree: 'Singapore',
    startDate: 'AUG 2019',
    endDate: 'SEP 2019',
    description:
        'I have attended tech events regularly as well as meetings. I have also helped in arranging and promotion of SCS school events such as workshops and industry visits to not only broaden my views but also my peers. I  was also in charge of pictures of the events which will be used for promotions.');

Section educationSectionData = const Section(
    sectionId: 'educationSection',
    textOne: 'University of Newcastle, Australia',
    textTwo: 'Bachelor of Information Technology',
    textThree: 'Singapore',
    startDate: 'SEP 2020',
    endDate: 'MAY 2022',
    description:
        'I graduated with double majors in Business Technology and Systems Development, during this undergraduate program I learned different development frameworks like ASP.NET for the web, Xamarin for mobile, UWP (Universal Windows Platform) for creating a desktop application. Along with this I also learned to use business and prototyping software like Power-Bi.');

Summary summary = const Summary(
    professionalSummary:
        'I am a motivated IT graduate looking forward to expanding my knowledge and career in the IT sector. Along with that, I want to experience working with professionals in the field so that I am able to stay up-to-date and learn the best practices that should be used while working in the IT sector. As for me, some of my greatest strengths are communicating and working alongside my peers.');

Personal personalData = const Personal(
  firstName: 'Varun',
  lastName: 'Bhalerao',
  jobTitle: 'Full Stack Developer',
  email: 'varunbhalerao5902@gmail.com',
  phoneNumber: '8975351866',
);

Links linksData =
    const Links(linksId: '01', linkName: 'Linkedin', linkUrl: 'https://www.linkedin.com/in/varun-bhalerao-677a48179/');

List<Skill> skillsData = const [
  Skill(skillId: '01', skillName: "Flutter"),
  Skill(skillId: '02', skillName: "Dart"),
  Skill(skillId: '03', skillName: "C#"),
  Skill(skillId: '04', skillName: "Firebase"),
  Skill(skillId: '05', skillName: "SQL"),
  Skill(skillId: '06', skillName: "Python"),
  Skill(skillId: '07', skillName: "Java"),
  Skill(skillId: '08', skillName: "Javascript"),
  Skill(skillId: '09', skillName: "Canva"),
  Skill(skillId: '10', skillName: "GCP"),
];

List<Skill> language = const [
  Skill(skillId: '01', skillName: "English"),
  Skill(skillId: '02', skillName: "Hindi"),
  Skill(skillId: '03', skillName: "Marathi"),
];
