import 'dart:typed_data';
import 'package:fresume_app/global/models/pdf_model.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

Future<Uint8List> generateDocument(context, {required PdfModel pdfModel}) async {
  final doc = Document(pageMode: PdfPageMode.outlines);

  var regular = await PdfGoogleFonts.nunitoSansRegular();
  var italic = await PdfGoogleFonts.nunitoSansItalic();
  var bold = await PdfGoogleFonts.nunitoSansBold();
  var boldItalic = await PdfGoogleFonts.nunitoSansBoldItalic();

  doc.addPage(page(pdfModel, regular: regular, italic: italic, bold: bold, boldItalic: boldItalic));

  return await doc.save();
}

MultiPage page(PdfModel pdfModel,
    {required Font regular, required Font italic, required Font bold, required Font boldItalic}) {
  return MultiPage(
      pageTheme: PageTheme(
        margin: const EdgeInsets.all(0),
        buildBackground: (Context context) => Row(children: [
          Expanded(
            flex: 2,
            child: Container(color: PdfColors.white),
          ),
          Expanded(
              child: Container(
            color: PdfColor.fromHex('1a237e'),
          ))
        ]),
        theme: ThemeData.withFont(base: regular, italic: italic, bold: bold, boldItalic: boldItalic),
      ),
      build: (context) {
        return [
          Partitions(children: [
            Partition(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  nameAndJobRole(pdfModel.resumePersonal!),
                  profile(pdfModel.resumeSummary!, bold),
                  if (pdfModel.employment != null && pdfModel.employment!.isNotEmpty)
                    sectionTitle('Employment History', bold),
                  if (pdfModel.employment != null && pdfModel.employment!.isNotEmpty)
                    for (var data in pdfModel.employment!) Column(children: [sectionWidgetFull(data, bold)]),
                  if (pdfModel.education != null && pdfModel.education!.isNotEmpty) sectionTitle('Education', bold),
                  if (pdfModel.education != null && pdfModel.education!.isNotEmpty)
                    for (var data in pdfModel.education!) Column(children: [sectionWidgetFull(data, bold)]),
                  if (pdfModel.activities != null && pdfModel.activities!.isNotEmpty)
                    sectionTitle('Extra-curricular activities', bold),
                  if (pdfModel.activities != null && pdfModel.activities!.isNotEmpty)
                    for (var data in pdfModel.activities!) Column(children: [sectionWidgetFull(data, bold)]),
                ],
              ),
            ),
            Partition(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              phoneAndEmail(pdfModel.resumePersonal!, bold),
              if (pdfModel.links != null && pdfModel.links!.isNotEmpty) skillSectionTitle('Links', bold),
              if (pdfModel.links != null && pdfModel.links!.isNotEmpty)
                for (var data in pdfModel.links!) Column(children: [linksWidget(data, bold)]),
              if (pdfModel.skills != null && pdfModel.skills!.isNotEmpty) skillSectionTitle('Skills', bold),
              if (pdfModel.skills != null && pdfModel.skills!.isNotEmpty)
                for (var data in pdfModel.skills!) Column(children: [skillWidget(data, bold)]),
              if (pdfModel.languages != null && pdfModel.languages!.isNotEmpty) skillSectionTitle('Languages', bold),
              if (pdfModel.languages != null && pdfModel.languages!.isNotEmpty)
                for (var data in pdfModel.languages!) Column(children: [skillWidget(data, bold)]),
            ])),
          ]),
        ];
      });
}

Container nameAndJobRole(Personal personal) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(top: 36, bottom: 16, left: 36, right: 24),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(personal.firstName ?? "", style: const TextStyle(fontSize: 24)),
            SizedBox(width: 5),
            Text(personal.lastName ?? "", style: const TextStyle(fontSize: 24)),
          ],
        ),
        if (personal.jobTitle != null)
          Text(personal.jobTitle!.toUpperCase(),
              style: const TextStyle(
                letterSpacing: 1.2,
                wordSpacing: 1.3,
                fontSize: 8,
                color: PdfColors.grey500,
              )),
      ]),
    ),
  );
}

profile(Summary summary, Font bold) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(top: 16, left: 36, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (summary.professionalSummary != null)
            Text("Profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: PdfColors.black,
                  fontBold: bold,
                  fontSize: 13,
                )),
          SizedBox(height: 8),
          Container(
            child: Expanded(
              child: Text(
                summary.professionalSummary ?? "",
                style: const TextStyle(
                  color: PdfColors.black,
                  fontSize: 10,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget sectionTitle(String title, Font bold) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Padding(
      padding: const EdgeInsets.only(top: 16, left: 36, right: 24),
      child: Text(title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: PdfColors.black,
            fontBold: bold,
            fontSize: 13,
          )),
    ),
  ]);
}

Widget skillSectionTitle(String title, Font bold) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Padding(
      padding: const EdgeInsets.only(top: 16, left: 24, right: 24, bottom: 8),
      child: Text(title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: PdfColors.white,
            fontBold: bold,
            fontSize: 13,
          )),
    ),
  ]);
}

Widget skillWidget(Skill skill, Font bold) {
  return Padding(
    padding: const EdgeInsets.only(left: 24, right: 30, bottom: 2),
    child: Text(
      skill.skillName ?? "",
      style: const TextStyle(
        color: PdfColors.white,
        fontSize: 10,
      ),
    ),
  );
}

Widget linksWidget(Links links, Font bold) {
  return Padding(
    padding: const EdgeInsets.only(left: 24, right: 30, bottom: 2),
    child: UrlLink(
        child: Text(
          links.linkName ?? "",
          style: const TextStyle(
            decoration: TextDecoration.underline,
            color: PdfColors.white,
            fontSize: 10,
          ),
        ),
        destination: links.linkUrl ?? ""),
  );
}

Widget sectionWidgetFull(Section section, Font bold) {
  String sectionTitle = '';
  String date = '';
  if (section.textOne != null) {
    sectionTitle += section.textOne! + ", ";
  }
  if (section.textTwo != null) {
    sectionTitle += section.textTwo! + ", ";
  }
  if (section.textThree != null) {
    sectionTitle += section.textThree!;
  }

  if (section.startDate != null) {
    date += section.startDate! + " - ";
  }
  if (section.endDate != null) {
    date += section.endDate!;
  }

  return Container(
    padding: const EdgeInsets.only(top: 16, left: 36, right: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            child: Expanded(
          child: Text(sectionTitle, style: TextStyle(fontBold: bold, fontWeight: FontWeight.bold, fontSize: 11)),
        )),
        SizedBox(height: 4),
        Text(date.toUpperCase(),
            style: const TextStyle(
              letterSpacing: 1.2,
              wordSpacing: 1.3,
              fontSize: 8,
              color: PdfColors.grey500,
            )),
        SizedBox(height: 8),
        Container(
          child: Expanded(
            child: Text(
              section.description ?? "",
              style: const TextStyle(
                color: PdfColors.black,
                fontSize: 10,
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
      ],
    ),
  );
}

Widget phoneAndEmail(Personal personal, Font bold) {
  return Padding(
    padding: const EdgeInsets.only(top: 100 + 16, left: 24, right: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        if (personal.email != null || personal.phoneNumber != null)
          Text("Details",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: PdfColors.white,
                fontBold: bold,
                fontSize: 13,
              )),
        SizedBox(height: 8),
        Text(personal.email ?? "",
            style: const TextStyle(
              color: PdfColors.white,
              fontSize: 10,
            )),
        SizedBox(height: 2),
        Text(
          personal.phoneNumber ?? "",
          style: const TextStyle(
            color: PdfColors.white,
            fontSize: 10,
          ),
        ),
      ],
    ),
  );
}
