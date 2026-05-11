import 'package:flutter/material.dart';
import 'package:poc_245/src/constant/app_sizes.dart';
import 'package:poc_245/src/localization/string_hardcoded.dart';
import 'package:poc_245/src/utils/styled_text.dart';

class EpisodeReaderScreen extends StatefulWidget {
  const EpisodeReaderScreen({super.key});

  @override
  State<EpisodeReaderScreen> createState() => _EpisodeReaderScreenState();
}

class _EpisodeReaderScreenState extends State<EpisodeReaderScreen> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: colors.onTertiary,
      appBar: AppBar(
        toolbarHeight: Sizes.p80,
        backgroundColor: colors.onTertiary,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: Sizes.p24),
          child: Column(
            children: [
              StyledText('Épisode 1'.hardcoded, Sizes.p28, bold: true),
            ],
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white, size: Sizes.p40),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: Sizes.p32,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              gapW20,
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: Sizes.p32,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
          gapH12,
          Center(
            child: Container(
              width: 1500,
              height: 750,
              color: colors.secondary,
              child: Center(
                child: StyledText('Contenu de l\'épisode'.hardcoded, Sizes.p20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
