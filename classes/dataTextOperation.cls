public class dataTextOperation {
    @AuraEnabled @InvocableVariable public String text;
    @AuraEnabled @InvocableVariable public String pattern;
    @AuraEnabled @InvocableVariable public String replacement;
    @AuraEnabled @InvocableVariable public Boolean hasError;
    @AuraEnabled @InvocableVariable public String errorMessage;
}