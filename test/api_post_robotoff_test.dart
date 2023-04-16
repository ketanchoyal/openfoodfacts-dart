import 'package:openfoodfacts/openfoodfacts.dart';
import 'package:test/test.dart';
import 'test_constants.dart';

void main() {
  OpenFoodAPIConfiguration.userAgent = TestConstants.TEST_USER_AGENT;
  OpenFoodAPIConfiguration.globalQueryType = QueryType.TEST;

  group('$OpenFoodAPIClient answer robotoff question', () {
    test('get questions for Noix de Saint-Jacques EN and answer', () async {
      RobotoffQuestionResult result =
          await RobotoffAPIClient.getProductQuestions(
        '0080868000633',
        OpenFoodFactsLanguage.ENGLISH,
        user: TestConstants.TEST_USER,
        count: 1,
      );

      if (result.status == 'found') {
        Status postResult = await RobotoffAPIClient.postInsightAnnotation(
          result.questions![0].insightId,
          InsightAnnotation.YES,
        );
        expect(postResult.status, 'saved');
      }
    });
  });
}
