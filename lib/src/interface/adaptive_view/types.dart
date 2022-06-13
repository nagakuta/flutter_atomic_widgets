import 'package:breakpoint/breakpoint.dart' as bp;
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'types.freezed.dart';

/// Breakpoint
@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
class Breakpoint with _$Breakpoint {
  // ignore: public_member_api_docs
  const factory Breakpoint({
    required final LayoutType layoutType,
    required final WindowType windowType,
  }) = _Breakpoint;

  const Breakpoint._();

  // ignore: public_member_api_docs
  factory Breakpoint.fromConstraints(final BoxConstraints constraints) {
    final LayoutType layoutType = LayoutType.fromConstraints(constraints);
    final WindowType windowType = WindowType.fromConstraints(constraints);

    return Breakpoint(
      layoutType: layoutType,
      windowType: windowType,
    );
  }

  // ignore: public_member_api_docs
  factory Breakpoint.fromMediaQuery(final BuildContext context) {
    final LayoutType layoutType = LayoutType.fromMediaQuery(context);
    final WindowType windowType = WindowType.fromMediaQuery(context);

    return Breakpoint(
      layoutType: layoutType,
      windowType: windowType,
    );
  }
}

/// Layout Type
@freezed
class LayoutType with _$LayoutType {
  // ignore: public_member_api_docs
  const factory LayoutType.smallHandset() = SmallHandsetLayoutType;

  // ignore: public_member_api_docs
  const factory LayoutType.mediumHandset() = MediumHandsetLayoutType;

  // ignore: public_member_api_docs
  const factory LayoutType.largeHandset() = LargeHandsetLayoutType;

  // ignore: public_member_api_docs
  const factory LayoutType.smallTablet() = SmallTabletLayoutType;

  // ignore: public_member_api_docs
  const factory LayoutType.largeTablet() = LargeTabletLayoutType;

  // ignore: public_member_api_docs
  const factory LayoutType.desktop() = DesktopLayoutType;

  const LayoutType._();

  // ignore: public_member_api_docs
  factory LayoutType.fromConstraints(final BoxConstraints constraints) {
    final bp.Breakpoint breakpoint = bp.Breakpoint.fromConstraints(constraints);

    switch (breakpoint.device) {
      case bp.LayoutClass.smallHandset:
        return const LayoutType.smallHandset();
      case bp.LayoutClass.mediumHandset:
        return const LayoutType.mediumHandset();
      case bp.LayoutClass.largeHandset:
        return const LayoutType.largeHandset();
      case bp.LayoutClass.smallTablet:
        return const LayoutType.smallTablet();
      case bp.LayoutClass.largeTablet:
        return const LayoutType.largeTablet();
      case bp.LayoutClass.desktop:
        return const LayoutType.desktop();
    }
  }

  // ignore: public_member_api_docs
  factory LayoutType.fromMediaQuery(final BuildContext context) {
    final bp.Breakpoint breakpoint = bp.Breakpoint.fromMediaQuery(context);

    switch (breakpoint.device) {
      case bp.LayoutClass.smallHandset:
        return const LayoutType.smallHandset();
      case bp.LayoutClass.mediumHandset:
        return const LayoutType.mediumHandset();
      case bp.LayoutClass.largeHandset:
        return const LayoutType.largeHandset();
      case bp.LayoutClass.smallTablet:
        return const LayoutType.smallTablet();
      case bp.LayoutClass.largeTablet:
        return const LayoutType.largeTablet();
      case bp.LayoutClass.desktop:
        return const LayoutType.desktop();
    }
  }
}

/// Window Type
@freezed
class WindowType with _$WindowType {
  // ignore: public_member_api_docs
  const factory WindowType.xsmall() = XSmallWindowType;

  // ignore: public_member_api_docs
  const factory WindowType.small() = SmallWindowType;

  // ignore: public_member_api_docs
  const factory WindowType.medium() = MediumWindowType;

  // ignore: public_member_api_docs
  const factory WindowType.large() = LargeWindowType;

  // ignore: public_member_api_docs
  const factory WindowType.xlarge() = XLargeWindowType;

  const WindowType._();

  // ignore: public_member_api_docs
  factory WindowType.fromConstraints(final BoxConstraints constraints) {
    final bp.Breakpoint breakpoint = bp.Breakpoint.fromConstraints(constraints);

    switch (breakpoint.window) {
      case bp.WindowSize.xsmall:
        return const WindowType.xsmall();
      case bp.WindowSize.small:
        return const WindowType.small();
      case bp.WindowSize.medium:
        return const WindowType.medium();
      case bp.WindowSize.large:
        return const WindowType.large();
      case bp.WindowSize.xlarge:
        return const WindowType.xlarge();
    }
  }

  // ignore: public_member_api_docs
  factory WindowType.fromMediaQuery(final BuildContext context) {
    final bp.Breakpoint breakpoint = bp.Breakpoint.fromMediaQuery(context);

    switch (breakpoint.window) {
      case bp.WindowSize.xsmall:
        return const WindowType.xsmall();
      case bp.WindowSize.small:
        return const WindowType.small();
      case bp.WindowSize.medium:
        return const WindowType.medium();
      case bp.WindowSize.large:
        return const WindowType.large();
      case bp.WindowSize.xlarge:
        return const WindowType.xlarge();
    }
  }
}
