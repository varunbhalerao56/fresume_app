import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fresume_app/global/templates/template_personal.dart';
import 'package:fresume_app/global/theme/pallete.dart';
import 'package:fresume_app/global/widgets/loading.dart';
import 'package:fresume_app/pages/form/controller/form_controller.dart';
import 'package:printing/printing.dart';

class PdfDisplay extends ConsumerStatefulWidget {
  final bool useMobileLayout;
  const PdfDisplay(this.useMobileLayout, {Key? key}) : super(key: key);

  @override
  _PdfDisplayState createState() => _PdfDisplayState();
}

class _PdfDisplayState extends ConsumerState<PdfDisplay>  with AutomaticKeepAliveClientMixin{

    @override
  bool get wantKeepAlive => true;

    @override
  void initState() {
   super.initState();
  }
  @override
  Widget build(BuildContext context)  {
       super.build(context);
    final _pdfProvider = ref.watch(pdfProvider);

    return Scaffold(
      backgroundColor: Pallete.primaryLightColor,
      body: Theme(
        data: ThemeData(
            primaryColor: Pallete.backgroundColor, primaryIconTheme: const IconThemeData(color: Pallete.primaryColor)),
        child: Center(
          child: SizedBox(
            height:  widget.useMobileLayout ? MediaQuery.of(context).size.height - 156 :  MediaQuery.of(context).size.height - 80,
            child: PdfPreview(
              loadingWidget: progressWidget(context),
              scrollViewDecoration: const BoxDecoration(
                color: Pallete.primaryLightColor,
              ),
              pdfPreviewPageDecoration: const BoxDecoration(),
              useActions: false,
              maxPageWidth: widget.useMobileLayout ? null : MediaQuery.of(context).size.width / 2 - (80),
              allowPrinting: true,
              allowSharing: true,
              canDebug: false,
              canChangeOrientation: false,
              canChangePageFormat: false,
              build: (format) => generateDocument(context, pdfModel: _pdfProvider),
            ),
          ),
        ),
      ),
    );
  }
}
