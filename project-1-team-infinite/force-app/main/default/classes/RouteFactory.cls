public class RouteFactory {
    
public static void CreateRoute(integer numOfRoutes){
        List<Route__c> RouteNames = new List<Route__c>();
        for(integer i = 1; i <= numOfRoutes; i++){
            Route__C route = new Route__C();
            String value = 'Route ' + i;
            route.name = value;
                  
            RouteNames.add(route);
            
        }
        
        insert RouteNames;
        
        
    }

}