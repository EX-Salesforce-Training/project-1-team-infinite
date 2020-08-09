public class DataFactory {
                                                  
    public static List<Contact> makeContacts(integer n){
        List<String> contName = new List<String>{'David','John','Paul','Mark','James','Andrew','Scott','Steven','Robert','Stephen',
                                          	     'William','Craig','Michael','Stuart','Christopher','Alan','Colin','Brian','Kevin',
        									 	 'Gary','Richard','Derek','Martin','Thomas','Neil','Barry','Ian','Jason', 'Bill', 'Daniel'};
            
    	List<String> contPhone = new List<String>{'(824) 495-3262','(563) 759-9984','(678) 532-8397','(705) 750-8476','(349) 600-2805',
        									 	  '(316) 984-8420','(661) 908-0943','(882) 878-1581','(380) 360-7074','(661) 255-0660',
												  '(205) 978-1422','(515) 751-6988','(982) 667-5758','(969) 459-4649','(652) 817-6785',
       											  '(551) 888-2096','(331) 839-2120','(680) 603-5903','(512) 382-9828','(679) 366-6358',
											 	  '(405) 475-9733','(203) 430-4077','(407) 915-2247','(382) 328-4266','(408) 449-6231',
        									 	  '(604) 503-8773','(699) 753-3406','(699) 673-3548','(954) 979-0245','(248) 409-7401',
												  '(706) 425-9501','(305) 240-0460','(774) 225-4752','(873) 940-6050','(595) 663-2261',
        										  '(508) 603-6030','(536) 397-1758','(563) 975-9475','(706) 633-4498','(711) 213-3741',
												  '(299) 749-7319','(396) 392-9020','(308) 260-5141','(984) 588-8944','(939) 820-2880',
        										  '(877) 355-9125','(581) 439-4193','(936) 753-6432','(663) 794-8677','(771) 796-7533'};
                                                      
        List<Contact> newcons = new List<Contact>();
        for (integer i = 0; i < n; i++){
        	Contact c = new Contact();
        	integer randomFirstName = integer.valueOf((Math.random() * 30));
        	c.FirstName = contName[randomFirstName];
        	integer randomLastName = integer.valueOf((Math.random() * 30));
        	c.LastName = contName[randomLastname];
        	integer randomPhone = integer.valueof((Math.random() * 50));
        	c.Phone = contPhone[randomPhone];
            newcons.add(c);
        }
        insert newcons;
        return newcons;
    }
    
    public static List<Address__c> makeAddresses(integer n){
        List<String> StreetNumberList = new List<String>{'1234','5678','4565','2345'};
    	List<String> StreetNameList = new List<String>{'AMHERST ST','AMITY ALY','ANDERSON ST','ANDOVER ST','ANDREW ST','ANGELOS ALY',
            'ANGLO ALY','ANKENY ST','ANNAPOLIS TER','ANNIE ST','ANSON PL','ANTHONY ST','ANTONIO ST','ANZA AVE','ANZA ST','ANZAVISTA AVE',
            'APOLLO ST','APPAREL WAY','APPLETON AVE','APPLETON ST','APTOS AVE','AQUAVISTA WAY','ARAGO ST','ARBALLO DR','ARBOL LN','ARBOR ST',
            'ARCH ST','ARCO WAY','ARDATH CT','ARDENWOOD WAY'};
    	List<String> UnitNumberList = new List<String>{'1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30'};	
    	List<String> CityList = new List<String>{'Anchorage','Anderson','Angoon','Atqasuk','Utqiagvik','Bethel','Clear','Cordova',
            'Craig','Delta Junction','Dillingham','Eagle River','Eielson Air Force Base','Elmendorf Air Force Base','Fairbanks','Galena',
            'Girdwood','Glennallen','Gustavus','Haines','Healy','Homer','Hoonah','Juneau','Kenai','Ketchikan','Klawock','Kodiak','Kotzebue'};        
    	List<String> StateList = new List<String>{'AK','AL','AR','AZ','CA','CO','CT','DC','DE','FL','GA','HI','IA','ID','IL','IN','KS',
            'KY','LA','MA','MD','ME','MI','MN','MS','MO','MT','NC','NE','NH'};
   		List<String> ZipcodeList = new List<String>{'12453','12643','26545'};
            
        List<Address__c> newadds = new List<Address__c>();
        for (integer i = 0; i < n; i++){
        	Address__c a = new Address__c();
        	integer randomStreetNumber = integer.valueOf((Math.random() * 3));
        	//a.Street_Number__c = StreetNumberList.get(randomStreetNumber);
        	integer randomStreetName = integer.valueOf((Math.random() * 29));
        	a.Street_Name__c = StreetNameList.get(randomStreetName);
        	integer randomUnitNumber = integer.valueOf((Math.random() * 29));
        	//a.Unit_Number__c = UnitNumberList.get(randomUnitNumber);
        	integer randomCity = integer.valueOf((Math.random() * 29));
        	a.City__c = CityList.get(randomCity);
        	integer randomState = integer.valueOf((Math.random() * 29));
        	a.State__c = StateList.get(randomState);
        	integer randomZipcode = integer.valueOf((Math.random() * 2));
        	a.Zip_Code__c = ZipcodeList.get(randomZipcode);
            newadds.add(a);
        }
        insert newadds;
        return newadds;
    }
    
    public static List<Inhabitant__c> makeInhabitants(integer n, List<Contact> c, List<Address__c> a){
        List<Inhabitant__c> newinhabs = new List<Inhabitant__c>();
        for (integer j = 0; j < n; j++){
            Inhabitant__c i = new Inhabitant__c();
        	i.Contact__c = c[j].id;
        	i.Address__c = a[j].id;
            newinhabs.add(i);
        }
        insert newinhabs;
        return newinhabs;
    }
    
    public static List<Route__c> CreateRoute(integer numOfRoutes){
        List<Route__c> RouteNames = new List<Route__c>();
        for(integer i = 1; i <= numOfRoutes; i++){
            Route__C route = new Route__C();
            String value = 'Route ' + i;
            route.name = value;

            RouteNames.add(route);

        }
        insert RouteNames;
        return RouteNames;
    }


    public static List<Mail__c> makeMail(integer n){
        List<Mail__c> newMail = new List<Mail__c>();
        List<Contact> newContacts = new List<Contact>();
        newContacts = makeContacts(n);
        List<Address__c> newAddresses = new List<Address__c>();
        newAddresses = makeAddresses(n);
        List<Inhabitant__c> newInhabs = new List<Inhabitant__c>();
        newInhabs = makeInhabitants(n, newContacts, newAddresses);
        DataFactory.CreateRoute(5);

        for (integer j = 0; j < n; j++){
            Mail__c m = new Mail__c();
            m.Inhabitant__c = newInhabs[j].id;
            newMail.add(m);
        }
        insert newMail;
        return newMail;
    }
}