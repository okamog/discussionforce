public with sharing class AngularJSDemoController{ 
    
    public String AccountList { get; set; }
    public String CaseList{get;set;}
    
    //Subclass : Wrapper Class 
    public class Accountwrap {
        //Static Variables 
        public string id;
        public string name;
        public string Phone;
        
        //Wrapper  Class Controller
        Accountwrap() {
            Phone = '';
        }
        
    }

    public class Casewrap {
        //Static Variables 
        public string id;
        public string subject;
        public string status;
        public string type;
        public string priority;
        
        //Wrapper  Class Controller
        Casewrap() {
            subject = '';
        }
        
    }    
       
    //Method to bring the list of Account and Serialize Wrapper Object as JSON
    public  static String getlstAccount() {
        List < Accountwrap > lstwrap = new List < Accountwrap > ();
        List < account > lstacc = [SELECT Id, Name, Phone
                                   FROM Account limit 100
                                  ];
        for (Account a: lstacc) {
            Accountwrap awrap = new Accountwrap();
            awrap.id = a.id;
            awrap.name = a.name;
            if (a.Phone != null) {
                awrap.Phone = a.Phone;
            }
            lstwrap.add(awrap);
        }
        return JSON.serialize(lstwrap);
     }

         //Method to bring the list of Account and Serialize Wrapper Object as JSON
    public  static String getlstCase() {
        List < Casewrap > lstwrap = new List < Casewrap > ();
        List < Case > lstacc = [SELECT CaseNumber, Subject, Status, Type, Priority
                                   FROM Case 
                                   ORDER BY CaseNumber DESC
                                   limit 100
                                  ];
        for (Case a: lstacc) {
            Casewrap awrap = new Casewrap();
            awrap.id = a.casenumber;
            awrap.subject = a.subject;
            awrap.status = a.status;
            awrap.type = a.type;
            awrap.priority = a.priority;
 
            lstwrap.add(awrap);
        }
        return JSON.serialize(lstwrap);
     }
    
}