public class PastDeliveriesController {
    Map<String, String> session = AUTH.sessionmanagement.getcurrentsession();
    String UserId = session.get('UsersId');
    public List<Mail__C> mailList{get;set;}
    User u = [Select ContactID, Id from User WHERE Id =: UserId];
    
    //the following code will grab the current users ID.
    // this will be used to grab the mail that is associated with current user
    
    public PastDeliveriesController(){
    	
    	List<Inhabitant__c> inhab;
        
        try{
        Contact c = [select Id from contact WHERE Id =: u.ContactId];
        // selecting the contact that's associated with the current user
        inhab = new List<Inhabitant__c>();
        
        for(inhabitant__C i : [select id from inhabitant__c where Contact__c =: c.id]){
            inhab.add(i);
        // selecting an inhabitant for the contact of the current logged in user and
        // adding it to a list
        }
        } catch(exception e){
            system.debug(e);
        }
        
        
        maillist = new list<mail__c>();
        
        try{
        for(inhabitant__C i : inhab){
            for(mail__c m : [SELECT name, Delivery_Status__C, LastModifiedDate from Mail__C where Delivery_Status__c = 'Delivered' and inhabitant__c =: i.id]){
                maillist.add(m);
                // loop through the inhabitant list and for every inhabitant loop through a list of mail
            // where the delivery status is delivered and the contact ID mataches the user id of the 
            // logged in user.
            }
        }
        
    } catch(exception f){
            system.debug(f);
        }
        
        
        
    }
}