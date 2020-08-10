public class PackagesInShippingController {
    
    Map<String, String> session = AUTH.sessionmanagement.getcurrentsession();
    String UserId = session.get('UsersId');
    public List<Mail__C> mailList{get;set;}
    User u = [Select ContactID, Id from User WHERE Id =: UserId];
    
    
    public PackagesInShippingController(){
    	
    	List<Inhabitant__c> inhab;
       
        try{
        Contact c = [select Id from contact WHERE Id =: u.ContactId];
        
        inhab = new List<Inhabitant__c>();
        
        for(inhabitant__C i : [select id from inhabitant__c where Contact__c =: c.id]){
            inhab.add(i);
        }
        } catch(exception e){
            system.debug(e);
        }
        
                
        maillist = new list<mail__c>();
        
        try{
        for(inhabitant__C i : inhab){
            for(mail__c m : [SELECT name, Delivery_Status__C, Estimate_Delivery__c from Mail__C where (Delivery_Status__c != 'Delivered' AND Delivery_Status__c != 'Missing') AND inhabitant__c =: i.id]){
                maillist.add(m);
            }
        }
        
    } catch(exception f){
            system.debug(f);
        }
       
    }
    
}