// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:weather/conf/values/edge_insets_constants.dart';
import 'default/default_progress_indicator.dart';

class MyLazyLoadScrollView extends StatefulWidget {
  //
  final Widget child;
  final void Function() onFetchMore;

  final List<dynamic> list;

  const MyLazyLoadScrollView({super.key, 
    required this.child,
    required this.onFetchMore,
    required this.list,
  });

  @override
  State<MyLazyLoadScrollView> createState() => _MyLazyLoadScrollViewState();
}

class _MyLazyLoadScrollViewState extends State<MyLazyLoadScrollView> {
  //
  final ScrollController _controller = ScrollController();

  bool _isLoading = false;

  @override
  void initState() {
    _controller.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: MyEdgeInsets.all16,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ListView.builder(
          controller: _controller,
          itemCount: _isLoading ? widget.list.length + 1 : widget.list.length,
          itemBuilder: (_, index) {
            if (widget.list.length == index) {
              return const Center(
                child: MyProgressIndicator(),
              );
            }
            return widget.child;
          },
        ),
      ],
    );
  }

  _onScroll() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        _isLoading = true;
      });
      widget.onFetchMore;
    }
  }
}
