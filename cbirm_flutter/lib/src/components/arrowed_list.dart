import 'dart:math' as math;
import 'dart:ui';

import 'package:cbirm_flutter/common.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ArrowedList extends StatefulWidget {
  const ArrowedList({
    Key? key,
    required this.listHeight,
    this.scrollController,
    required this.listBuilder,
    required this.itemCount,
    this.animatioDuration,
    this.curve = Curves.linear,
    this.effect = const WormEffect(),
  }) : super(key: key);
  final double listHeight;
  final IndicatorEffect effect;
  final ScrollController? scrollController;
  final Widget Function(ScrollController scrollController) listBuilder;
  final int itemCount;
  final Duration? animatioDuration;
  final Curve curve;
  @override
  State<ArrowedList> createState() => _ArrowedListState();
}

class _ArrowedListState extends State<ArrowedList> {
  final logger = Logger('ArrowedListState');
  late ScrollController scrollController;
  Tuple3<int, IndicatorEffect, Size>? countToSize;
  void initScrollController() {
    scrollController = widget.scrollController ?? ScrollController();
  }

  Size getSize(int count) {
    var s = countToSize ??=
        Tuple3(count, widget.effect, widget.effect.calculateSize(count));
    if (s.item1 != count) {
      s = countToSize =
          Tuple3(count, widget.effect, widget.effect.calculateSize(count));
    }
    return s.item3;
  }

  @override
  void initState() {
    super.initState();
    initScrollController();
  }

  @override
  void didUpdateWidget(covariant ArrowedList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.scrollController != widget.scrollController) {
      //
      initScrollController();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: scrollController,
      builder: (context, child) {
        final sc = scrollController;
        final allPos = sc.positions;
        if (allPos.length > 1) {
          logger.warning('More than one position detected ${allPos.length}');
        }
        final latestPos = allPos.lastOrNull;
        final pixels = (latestPos?.hasPixels == true
                ? latestPos!.pixels
                : latestPos?.minScrollExtent) ??
            0.0;
        final minPixels = latestPos?.hasContentDimensions == true
            ? latestPos!.minScrollExtent
            : 0.0;
        final maxPixels = latestPos?.hasContentDimensions == true
            ? latestPos!.maxScrollExtent
            : 0.0;
        final pixelsPerPage = latestPos?.hasViewportDimension == true
            ? latestPos!.viewportDimension
            : 1.0;
        // log('pixels: $pixels, pixelsPerPage: $pixelsPerPage');
        final pages = maxPixels / pixelsPerPage;
        // logger.info('currentPage: $currentPage/$pages');
        final canPrev = pixels > minPixels;
        final canNext = pixels < maxPixels;

        final maxPageOffset = pages.ceil();
        //from 0 to N
        final correctedPageOffset = lerpDouble(
          0,
          maxPageOffset,
          maxPixels == 0 ? 0 : (pixels / maxPixels),
        )!;
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: widget.listHeight,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  InkWell(
                    onTap: canPrev
                        ? () {
                            final ad = widget.animatioDuration;

                            final cp = correctedPageOffset;
                            final targetPage = math.max(0, (cp - 1).round());
                            final newVal = math.max(
                              minPixels,
                              lerpDouble(
                                  0, maxPixels, targetPage / maxPageOffset)!,
                            );

                            if (ad != null && ad != Duration.zero) {
                              sc.animateTo(
                                newVal,
                                duration: ad,
                                curve: widget.curve,
                              );
                            } else {
                              sc.jumpTo(newVal);
                            }
                          }
                        : null,
                    child: SizedBox(
                      width: 50,
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: canPrev ? null : context.theme.disabledColor,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: child!,
                  ),
                  // if (currentPage < pages)
                  InkWell(
                    onTap: canNext
                        ? () {
                            final cp = correctedPageOffset;
                            final targetPage =
                                math.min((cp + 1).round(), maxPageOffset);
                            final newVal = lerpDouble(
                                0, maxPixels, targetPage / maxPageOffset)!;
                            final ad = widget.animatioDuration;
                            if (ad != null && ad != Duration.zero) {
                              sc.animateTo(
                                newVal,
                                duration: ad,
                                curve: widget.curve,
                              );
                            } else {
                              sc.jumpTo(newVal);
                            }
                          }
                        : null,
                    child: SizedBox(
                      width: 50,
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: canNext ? null : context.theme.disabledColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: SmoothIndicator(
                size: getSize(maxPageOffset + 1),
                offset: math.min(
                    maxPageOffset.toDouble(), math.max(0, correctedPageOffset)),
                count: maxPageOffset + 1,
                effect: widget.effect,
                onDotClicked: (index) {
                  //(index == pages.round() ? pages : index)
                  final newVal = lerpDouble(
                    0,
                    maxPixels,
                    index / pages.ceil(),
                  )!;
                  final ad = widget.animatioDuration;
                  if (ad != null && ad != Duration.zero) {
                    sc.animateTo(
                      newVal,
                      duration: ad,
                      curve: widget.curve,
                    );
                  } else {
                    sc.jumpTo(newVal);
                  }
                },
              ),
            ),
          ],
        );
      },
      child: widget.listBuilder(scrollController),
    );
  }
}
