class Order{
    var customer : [Customer]?
    
    init() {
        print("initialized order!")
    }
    
    deinit {
        print("deinitialized order!")
    }
}

class Customer{
    var order : [Order]?
    
    init() {
        print("initialized customer!")
    }
    
    deinit {
        print("deinitialized customer!")
    }
}

class Address{
    
    var customer : Customer?
    var order : Order?
    
    init() {
        print("initialized Adress!")
    }
    
    deinit {
        print("deinitialized adress!")
    }
}

var _order : Order?
var _customer : Customer?
var _address : Address?

_order = Order()
_customer = Customer()
_address = Address()

    
guard let _order?.customer += _customer else{
    return
}

_order?.customer!.append(_customer)
_customer?.order!.append(_order)
_address?.customer! = _customer!
_address?.order = _order



_order = nil
_customer = nil
_address = nil
