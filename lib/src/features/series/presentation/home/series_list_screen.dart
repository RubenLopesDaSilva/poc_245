import 'package:flutter/material.dart';
import 'package:poc_245/src/constant/app_sizes.dart';
import 'package:poc_245/src/features/series/model/serie.dart';
import 'package:poc_245/src/features/series/presentation/home/serie_card.dart';
import 'package:poc_245/src/localization/string_hardcoded.dart';
import 'package:poc_245/src/utils/styled_text.dart';

class SeriesListScreen extends StatefulWidget {
  const SeriesListScreen({super.key});

  @override
  State<SeriesListScreen> createState() => _SeriesListScreenState();
}

class _SeriesListScreenState extends State<SeriesListScreen> {
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
            children: [StyledText('Series'.hardcoded, Sizes.p28, bold: true)],
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
              SerieCard(
                serie: Serie(
                  id: '1',
                  title: 'Breaking Bad',
                  summary:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vel augue nec augue bibendum tristique sit amet quis nulla. Cras mattis porttitor quam, at ullamcorper libero tempor in. Praesent eget eros malesuada, condimentum lorem vitae, rhoncus urna. Donec suscipit quis erat consectetur molestie. Donec ornare eros velit, sagittis consequat orci consequat eget. Duis commodo accumsan congue. Nam gravida odio quis porta luctus. Vivamus commodo egestas tristique. Vivamus blandit velit vel mauris interdum tempus. Duis et diam lectus. Pellentesque placerat, sem et vehicula malesuada, arcu orci tempus nunc, non pharetra sem enim sed tortor. Ut ultricies diam vel sapien vehicula scelerisque. Cras et posuere libero. Vivamus nibh nibh, fermentum vel malesuada vel, congue at felis. Pellentesque eget lorem at dolor pharetra imperdiet.',
                  maturityRating: '18+',
                  episodes: List.generate(124, (i) => 'Episode $i'),
                ),
              ),
              gapH8,
              SerieCard(
                serie: Serie(
                  id: '2',
                  title: 'Malcolm',
                  summary:
                      'Aenean vel finibus dui. Nulla facilisi. Praesent vel leo faucibus neque tempus consectetur ac quis dolor. Donec suscipit, mi in auctor vehicula, erat dui posuere justo, vel tincidunt velit justo sit amet leo. Pellentesque venenatis magna tristique nisl vulputate, in mattis nunc venenatis. Pellentesque sem mauris, ornare iaculis mi vitae, blandit tincidunt tortor. Proin lobortis commodo lacus, eu accumsan lorem dapibus eget. Maecenas at urna nulla. Sed vitae vehicula purus. Vestibulum ornare magna nibh, nec rhoncus elit euismod et.',
                  maturityRating: '12+',
                  episodes: List.generate(244, (i) => 'Episode $i'),
                ),
              ),
              gapH8,
              SerieCard(
                serie: Serie(
                  id: '3',
                  title: 'Les Simpson',
                  summary:
                      'Integer accumsan, lacus non mollis facilisis, est lectus elementum magna, quis maximus risus felis quis nulla. Mauris vitae commodo erat, vitae efficitur nunc. Donec id tortor in elit posuere pulvinar. Curabitur at faucibus magna. Nulla tempus nisi in orci placerat tempor. Vestibulum eros eros, luctus a tortor sit amet, egestas dapibus justo. Pellentesque felis enim, tristique ac porttitor vel, tristique ut nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam et interdum risus, ut lacinia nunc. Ut ac dui tincidunt quam tincidunt imperdiet vitae fringilla sem. Sed accumsan urna quis porta convallis. Aenean nisl ex, elementum eget erat at, placerat vehicula quam.',
                  maturityRating: '12+',
                  episodes: List.generate(1235, (i) => 'Episode $i'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
