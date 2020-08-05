public class PastDeliveriesController {
    
    public List<Mail__C> mailList{get;set;}

    public PastDeliveriesController() {
       mailList = [SELECT name, inhabitant__r.contact__c, Delivery_Status__C FROM Mail__c WHERE Delivery_Status__c = 'Delivered' WITH SECURITY_ENFORCED];

       
    }

}