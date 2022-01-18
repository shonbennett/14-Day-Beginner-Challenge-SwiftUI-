///Shon Bennett
///Lesson 9 Challenge
///January 12 2022
///
///
//Challenge 1
struct TaxCollector {
    
    var tax = 0.05
    
    func totalWithTax(amount:Double) -> Double {
        return amount * (1 + tax)
    }

}

//Challenge 2
struct BillSplitter {
    
    func splitBy(subtotal:Double, numPeople:Int) -> Double {
        
        let tax = TaxCollector()
        let total = tax.totalWithTax(amount: subtotal)
        //Swift doen't allow you to divide Doubles by Ints for safety reasons, so you must cast both to the same type in order for the operation to occur
        let splitAmount = Double(total)/Double(numPeople)
        return splitAmount
        
    
    }
    
}

//instance of BillSplitter
var bill = BillSplitter()
var amount = bill.splitBy(subtotal: 120, numPeople: 5)
print(amount)
