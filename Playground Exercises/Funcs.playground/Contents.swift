//this equal sign makes 0 the default value for b. so passing in arguements for b is optional
//the arrow allows us to know function return type
func myFunc(a:Int, b:Int = 0) -> Int {
    return a + b
}


print(myFunc(a: 2, b: 4))
print(myFunc(a: 2))

//arguement labels in this function allows us to have descriptors of parameters. you can use "_" to not have descriptors showing when you call the method
func myFunc(numberOne a:Int, numberTwo b:Int = 0) -> Int {
    return a + b
}

func goodMorning() -> Void {
    print("Good Morning")
}
print(goodMorning())

func printTotalWithTax(subtotal:Double) -> Double {
    return subtotal * 1.13
}
var total = printTotalWithTax(subtotal: 5)
print(total)
