///different instances of structures work together to run an app

//this is just a structure which serves as a blueprint. you can use the blueprint to created instances of the class (objects)
struct MyStructure {
    
    var message = "Hello"
    
    func myFunction() {
        print(message)
    }
    
}

//a is an instance of the MyStructure structure (an object). since it is an instance of the strucutre, the var type is MyStructure (teh structure itself)
var a:MyStructure = MyStructure()
//the dot notation is used to access the message property of the a object
a.message = "Hi"
//dot notation is used to access the myFunction method
a.myFunction()

var b:MyStructure = MyStructure()
b.message = "World"
b.myFunction()


//Chris' ex:
struct DatabaseManager {
    //private keyword makes this property only accessible inside of databasemanager struct (restricts the scope)
    private var serverName = "Server 1"
    
    //this method will return if a save was done successfully
    func saveData(data:String) -> Bool {
        return true
    }
}

struct ChatView {
    
    var message = "Hello"
    
    func sendChat() {
        //we use the instance of another struct to run this method (example of how diff instances work together to run an app)
        var db = DatabaseManager()
        //if we added the private keyword infront of the saveData func in DatabaseManager struct, we would not be able to access it here
        let successful = db.saveData(data: message)
        
        //if save unsauccessful, alert the user
    }
    
}

