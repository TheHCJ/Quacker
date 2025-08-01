import 'package:flutter/material.dart';
import 'package:quacker/trends/_list.dart';
import 'package:quacker/trends/_settings.dart';
import 'package:quacker/trends/_tabs.dart';

class TrendsScreen extends StatefulWidget {
  final ScrollController scrollController;

  const TrendsScreen({super.key, required this.scrollController});

  @override
  State<TrendsScreen> createState() => _TrendsScreenState();
}

class _TrendsScreenState extends State<TrendsScreen> with AutomaticKeepAliveClientMixin<TrendsScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: AppBar(title: const TrendsTabBar()),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () async => showModalBottomSheet(
                context: context,
                builder: (context) => const TrendsSettings(),
              )),
      body: TrendsList(
        scrollController: widget.scrollController,
      ),
    );
  }
}
