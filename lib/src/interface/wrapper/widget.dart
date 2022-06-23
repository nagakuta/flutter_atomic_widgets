import 'package:flutter/widgets.dart';

/// Wrapper
abstract class Wrapper extends StatelessWidget {
  // ignore: public_member_api_docs
  const Wrapper({
    final super.key,
    final EdgeInsetsGeometry padding = EdgeInsets.zero,
    final EdgeInsetsGeometry margin = EdgeInsets.zero,
  })  : _padding = padding,
        _margin = margin;

  final EdgeInsetsGeometry _padding;
  final EdgeInsetsGeometry _margin;

  /// Build a widget with wrapper.
  Widget? buildWrapper(
    final BuildContext context,
    final Widget? child,
  ) =>
      _padding != EdgeInsets.zero || _margin != EdgeInsets.zero
          ? Padding(
              padding: _padding.add(_margin),
              child: child,
            )
          : null;
}
