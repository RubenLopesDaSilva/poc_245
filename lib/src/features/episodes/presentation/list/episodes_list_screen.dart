import 'package:flutter/material.dart';
import 'package:poc_245/src/constant/app_sizes.dart';
import 'package:poc_245/src/localization/string_hardcoded.dart';
import 'package:poc_245/src/utils/styled_text.dart';

class EpisodesListScreen extends StatefulWidget {
  const EpisodesListScreen({super.key});

  @override
  State<EpisodesListScreen> createState() => _EpisodesListScreenState();
}

class _EpisodesListScreenState extends State<EpisodesListScreen> {
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
              StyledText(
                'Series'.hardcoded,
                Sizes.p28,
                bold: true,
              ),
            ],
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(Sizes.p12),
            child: StyledText('3 séries', Sizes.p20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
            ],
          )
        ],
      ),
    );
  }
}