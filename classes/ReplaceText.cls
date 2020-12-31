public class ReplaceText {
	@InvocableMethod(label='Replace Text' description='Replace text in source according to pattern (be sure to use double slashes and Java 6 compatible RegEx)')
	public static dataTextOperation[] replaceAll(dataTextOperation[] inputs) {
        dataTextOperation[] wrapper = new dataTextOperation[]{};
        for(Integer count = 0; count < inputs.size(); count++) {
            dataTextOperation current = inputs[count];
            try {
                current.text = current.text.replaceAll(current.pattern, current.replacement);
            } catch (Exception e) {
                current.hasError = true;
                current.errorMessage = e.getMessage();
                System.debug('An exception occurred: ' + e.getMessage());
            }
            wrapper.add(current);
        }
		return wrapper;
	}
}