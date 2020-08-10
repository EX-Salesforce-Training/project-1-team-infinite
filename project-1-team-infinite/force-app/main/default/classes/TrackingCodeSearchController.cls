public class TrackingCodeSearchController {
    
    public List<Mail__c> mailList {get;set;}
    public String name {get;set;}
    public static string newQuery {get;set;} 
    public TrackingCodeSearchController() {
        

        mailList = new List<Mail__c>();
        
    }
    
    public PageReference searchMail() {
        mailList =[SELECT name, delivery_status__C 
	   			    FROM mail__C 
	   				WHERE name = :name];
        System.debug(mailList);
        
        return null;
        // this method will create a list of mail where the name entered in the search box 
        // matches the name of a piece of mail in the databse.
    }
}