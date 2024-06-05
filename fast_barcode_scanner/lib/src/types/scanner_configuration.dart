import 'package:fast_barcode_scanner_platform_interface/fast_barcode_scanner_platform_interface.dart';

class ScannerConfiguration {
  const ScannerConfiguration(
      this.types,
      this.resolution,
      this.framerate,
      this.position,
      this.detectionMode,
      this.linearZoom,
      this.exposureCompensationIndex,
      );

  /// The types the scanner should look out for.
  ///
  /// If a barcode type is not in this list, it will not be detected.
  final List<BarcodeType> types;

  /// The target resolution of the camera feed.
  ///
  /// This is experimental, but functional. Should not be set higher
  /// than necessary.
  final Resolution resolution;

  /// The target framerate of the camera feed.
  ///
  /// This is experimental, but functional on iOS. Should not be set higher
  /// than necessary.
  final Framerate framerate;

  /// The physical position of the camera being used.
  final CameraPosition position;

  /// Determines how the camera reacts to detected barcodes.
  final DetectionMode detectionMode;

  /// Represents the zoom ratio as a linear scale with value ranging from 0.0 to 1.0
  final double? linearZoom;

  /// Represents the exposure level of an image captured by a camera
  ///
  /// Positive value will be exposed to brighter than the default exposure and
  ///
  /// negative value results in darker than the default exposure
  final int? exposureCompensationIndex;

  ScannerConfiguration copyWith({
    List<BarcodeType>? types,
    Resolution? resolution,
    Framerate? framerate,
    DetectionMode? detectionMode,
    CameraPosition? position,
    double? linearZoom,
    int? exposureCompensationIndex,
  }) {
    return ScannerConfiguration(
      types ?? this.types,
      resolution ?? this.resolution,
      framerate ?? this.framerate,
      position ?? this.position,
      detectionMode ?? this.detectionMode,
      linearZoom ?? this.linearZoom,
      exposureCompensationIndex ?? this.exposureCompensationIndex,
    );
  }
}
