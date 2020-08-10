public class ContactEditController {
    Map<String, String> session = AUTH.sessionmanagement.getcurrentsession();
    String UserId = session.get('UsersId');
    public Contact c {get;set;}
    public string firstname;
    public string lastname;
    public string email;
    public string phone;
    User u = [Select ContactID, Id from User WHERE Id =: UserId];
    //These variables, collections, and objects will create the various aspects of the 
    //contact that can be edited.
    
    public ContactEditController(){
        c = [select Id, firstname, lastname, email, phone from contact WHERE Id =: u.ContactId];
        firstname = c.firstname;
        lastname = c.lastname;
        email = c.email;
        phone = c.phone;
        //assigning the contact details of the current user to a list
    }
    
    public pagereference page1_edit(){
        return page.ContactEdit;
    }
    
    public pagereference page2_save(){
        firstname = c.firstname;
        lastname = c.lastname;
        email = c.email;
        phone = c.phone;
        update c;
        return page.ContactViewPost;
        //changing the valeus of the contact based on what was inputed from the user
    }
    
    public pagereference page2_cancel(){
        c.firstname = firstname;
        c.lastname = lastname;
        c.email = email;
        c.phone = phone;
        return page.ContactView;
        //cancelling the edit process and returing the values to the original position
    }
}