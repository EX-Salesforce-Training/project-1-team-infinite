public class ContactEditController {
    Map<String, String> session = AUTH.sessionmanagement.getcurrentsession();
    String UserId = session.get('UsersId');
    public Contact c {get;set;}
    public string firstname;
    public string lastname;
    public string email;
    public string phone;
    User u = [Select ContactID, Id from User WHERE Id =: UserId];
    
    public ContactEditController(){
        c = [select Id, firstname, lastname, email, phone from contact WHERE Id =: u.ContactId];
        firstname = c.firstname;
        lastname = c.lastname;
        email = c.email;
        phone = c.phone;
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
    }
    
    public pagereference page2_cancel(){
        c.firstname = firstname;
        c.lastname = lastname;
        c.email = email;
        c.phone = phone;
        return page.ContactView;
    }
}