import "package:equatable/equatable.dart";
import "package:flutter/material.dart";
import "package:j1_core_base/j1_core_base.dart";

class JBottomSheetOverrides extends Equatable {
  final double? cornerRadius;
  final double? cornerRadiusBottom;
  final double? elevation;

  final Color? barrierColor;
  final Color? backgroundColor;
  final Color? outlineColor;
  final double? outlineWidth;

  const JBottomSheetOverrides({
    this.cornerRadius,
    this.cornerRadiusBottom,
    this.elevation,
    this.barrierColor,
    this.backgroundColor,
    this.outlineColor,
    this.outlineWidth,
  });

  @override
  List<Object?> get props => [
    cornerRadius,
    cornerRadiusBottom,
    elevation,
    barrierColor,
    backgroundColor,
    outlineColor,
    outlineWidth,
  ];
}

extension JBottomSheetExtension on BuildContext {
  Future<bool?> showJBottomSheet({
    JBottomSheetOverrides? overrides,
    required Widget? child,
    bool isScrollControlled = false,
    double scrollControlDisabledMaxHeightRatio = 9.0 / 16.0,
    bool isDismissible = true,
    bool enableDrag = true,
    bool? showDragHandle,
    bool useSafeArea = false,
  }) {
    if (child == null) {
      return Future.value();
    }

    final colors = colorScheme();

    final cornerRadius = Radius.circular(overrides?.cornerRadius ?? JDimens.radius_m);
    final cornerRadiusBottom = Radius.circular(overrides?.cornerRadiusBottom ?? JDimens.radius_s);
    final shape = RoundedRectangleBorder(
      side: BorderSide(
        color: overrides?.outlineColor ?? colors.onSurface,
        width: overrides?.outlineWidth ?? J1Config.strokeWidth,
      ),
      borderRadius: BorderRadius.vertical(top: cornerRadius, bottom: cornerRadiusBottom),
    );

    return showModalBottomSheet<bool>(
      context: this,
      builder: (context) => child,
      constraints: const BoxConstraints(minWidth: double.infinity),
      backgroundColor: overrides?.backgroundColor ?? colors.surfaceContainer,
      elevation: overrides?.elevation ?? JDimens.elevation_m,
      shape: shape,
      barrierColor: overrides?.barrierColor,
      isScrollControlled: isScrollControlled,
      scrollControlDisabledMaxHeightRatio: scrollControlDisabledMaxHeightRatio,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      showDragHandle: showDragHandle,
      useSafeArea: useSafeArea,
    );
  }
}
