import 'package:clean_architecture/app/app.dart';
import 'package:clean_architecture/domain/domain.dart';
import 'package:clean_architecture/home/home.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRepository extends Mock implements IRepository {}

void main() {
  group('App', () {
    late IRepository repository;

    setUp(() {
      repository = MockRepository();
      when(() => repository.getData()).thenAnswer((_) async => 'fake data');
    });

    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(
        App(repository: repository),
      );
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
