public class ContactFactory {

  
    public static void MakeContacts(integer numOfContacts) {
        
    	List<String> contName = new List<String>{'David','John','Paul','Mark','James','Andrew','Scott','Steven','Robert','Stephen',
                                              'William','Craig','Michael','Stuart','Christopher','Alan','Colin','Brian',
        'Kevin','Gary','Richard','Derek','Martin','Thomas','Neil','Barry','Ian','Jason', 'Bill', 'Daniel'};
            
        List<String> contPhone = new List<String>{'(824) 495-3262','(563) 759-9984','(678) 532-8397','(705) 750-8476','(349) 600-2805','(316) 984-8420','(661) 908-0943','(882) 878-1581','(380) 360-7074','(661) 255-0660',
												  '(205) 978-1422','(515) 751-6988','(982) 667-5758','(969) 459-4649','(652) 817-6785','(551) 888-2096','(331) 839-2120','(680) 603-5903','(512) 382-9828','(679) 366-6358',
												  '(405) 475-9733','(203) 430-4077','(407) 915-2247','(382) 328-4266','(408) 449-6231','(604) 503-8773','(699) 753-3406','(699) 673-3548','(954) 979-0245','(248) 409-7401',
												  '(706) 425-9501','(305) 240-0460','(774) 225-4752','(873) 940-6050','(595) 663-2261','(508) 603-6030','(536) 397-1758','(563) 975-9475','(706) 633-4498','(711) 213-3741',
											      '(299) 749-7319','(396) 392-9020','(308) 260-5141','(984) 588-8944','(939) 820-2880','(877) 355-9125','(581) 439-4193','(936) 753-6432','(663) 794-8677','(771) 796-7533'};
                                                  
       // integer randomFirstName = integer.valueOf((Math.random() * 30));
       // integer randomLastName = integer.valueOf((Math.random() * 30));
       // integer randomPhone = integer.valueof((Math.random() * 50));
        
        List<contact> newContacts = new List<Contact>();
        for (integer i = 0; i < numOfContacts; i++) {
            
            integer randomFirstName = integer.valueOf((Math.random() * 30));
        	integer randomLastName = integer.valueOf((Math.random() * 30));
            integer randomPhone = integer.valueof((Math.random() * 50));
            Contact newCon = new Contact();
            newCon.FirstName = contName[randomFirstName];
            newCon.LastName = contName[randomLastname];
            newCon.Phone = contPhone[randomPhone];
            
            newContacts.add(newCon);
        }
        
        insert newContacts;   
    }
}