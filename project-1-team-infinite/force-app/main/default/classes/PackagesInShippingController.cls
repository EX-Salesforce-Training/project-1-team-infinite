public class PackagesInShippingController {
    
    public List<Mail__C> mailList{get;set;}

    public PackagesInShippingController() {
       mailList = [SELECT name, inhabitant__r.contact__c, Delivery_Status__C FROM Mail__c WHERE Delivery_Status__c = 'Out for Delivery' WITH SECURITY_ENFORCED];

       
    }

}