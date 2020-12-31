@isTest
public class ReplaceTextTest {
	static void testOperation(String text, String pattern, String replacement, String expectedOutcome) {
		dataTextOperation testInput = new dataTextOperation();
		testInput.text = text;
		testInput.pattern = pattern;
		testInput.replacement = replacement;
		dataTextOperation[] result = ReplaceText.replaceAll(new dataTextOperation[]{testInput});
        if(expectedOutcome != 'false')
			System.assert(result[0].text == expectedOutcome);
	}
	static testMethod void simpleTest() { testOperation('Test', 's', 'n', 'Tent'); }
	static testMethod void phoneTest() { testOperation('(352) 222-6334', '[^0-9]', '', '3522226334'); }
	static testMethod void badEscapeTest() { testOperation('Happy Test #1', '\\\\\\mW+', '-', 'false'); }
	static testMethod void textCleanTest() { testOperation('Happy Test #2 - Success!', '\\W+', '-', 'Happy-Test-2-Success-'); }
}