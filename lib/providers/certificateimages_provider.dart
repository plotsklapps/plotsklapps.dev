import 'package:portfolio/all_imports.dart';

final StateNotifierProvider<CertificateImagesNotifier, int>
    certificateImagesProvider =
    StateNotifierProvider<CertificateImagesNotifier, int>(
        (StateNotifierProviderRef<CertificateImagesNotifier, int> ref) {
  return CertificateImagesNotifier();
});

class CertificateImagesNotifier extends StateNotifier<int> {
  CertificateImagesNotifier() : super(0);

  final List<String> certificateImagesList = <String>[
    'assets/certificates/IonicNHADiploma.jpg',
    'assets/certificates/FlutterBootcamp2021Diploma.jpg',
    'assets/certificates/DartNoviceExpertDiploma.jpg',
    'assets/certificates/DartBeginners.jpg',
    'assets/certificates/FlutterBeginners.jpg',
    'assets/certificates/DartIntermediate.jpg',
    'assets/certificates/FlutterIntermediate.jpg',
    'assets/certificates/IonicNHACijferlijst.jpg',
  ];
}
