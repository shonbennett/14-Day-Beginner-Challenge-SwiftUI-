////Structure- a form of organization that serves as a building block of your app and is used to represetn something (i.e. a role, a component etc.) in your app
///this is very reminiscent of a class in Java
///
///property- variable inside a structure; usually included at the top of the page (reminiscent of instance veriables in Java)
///
///we only call functions "methods" when they are included in a structure

//ex: code for a chatting app
struct ChatView {
    
    // Variables and Constants (vars and constants are actually known as "properties" inside the struct) used in the structure
    //reminds me of instance variables in Java
    //these bottom two are known as "stored properties" bc they return exactly what is stored
    var message = ""
    
    //this is a "computed property", which has to determine the value of the var before returning. MUST specify the value type bc Xcode cannot assume what it is bc the value is not immediately known
    var messageWithPrefix: String {
        //you could also do this without the return here since this is only one line of code; Xcode would assume it is returning that one line as the var's value
        let prefix = "Shon says: "
        return prefix + message
    }
    
    //View code for the screen (UI code)
    
    //Functions (functions are actually known as "methods" inside of a struct)
    func sendChat() -> Void {
        
        //code to send message
        print(messageWithPrefix)
    }
    
    func deleteChat() -> Void {
        
        print(messageWithPrefix)

    }
    
}


//Practice: Lesson 8 Challenge
struct Car {
    
    var make: String = "Mercedes"
    var model: String = "MX70"
    var year: String = "2013"
    
    var details:String {
        year + make + model
    }
    
    func getDetails() -> String {
        return details
    }
    
}
