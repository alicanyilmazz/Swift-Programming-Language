
protocol ICustomerDal{
    func Add();
    func Update();
    func Delete();
}

class MySqlCustomerDal : ICustomerDal{
    func Add() {
        print("Added to MySql")
    }
    
    func Update() {
        print("Updated on MySql")
    }
    
    func Delete() {
        print("Delete from MySql")
    }
    
    
}

class SqlServerCustomerDal : ICustomerDal{
    func Add() {
        print("Added to SqlServer")
    }
    
    func Update() {
        print("Updated on SqlServer")
    }
    
    func Delete() {
        print("Delete from SqlServer")
    }
}

class OracleCustomerDal : ICustomerDal{
    func Add() {
        print("Added to Oracle")
    }
    
    func Update() {
        print("Updated on Oracle")
    }
    
    func Delete() {
        print("Delete from Oracle")
    }
}

class CustomerManager
{
    func Add(customerDal : ICustomerDal)
    {
        customerDal.Add()
    }
}

var customerDals : [ICustomerDal] = [MySqlCustomerDal(),SqlServerCustomerDal(),OracleCustomerDal()]

for customerDal in customerDals {
    customerDal.Add()
}




