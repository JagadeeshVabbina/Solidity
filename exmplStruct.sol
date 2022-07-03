 //structs => a custom data type --> where multiple types of varible are defined under a single entity
    struct customer {
        string name;
        string custAddress;
        uint age;
    }

//array of struct data type
    customer[] public customers;

    //function to add data into the array of struct
    function addStruct(string memory n,string memory ca,uint a) public {
        customers.push(customer(n,ca,a));

    }

    //function to return the struct values
    function getStruct(uint _index) public view returns(string memory n,string memory ca,uint a) {
        customer storage cust = customers[_index];
        return (cust.name,cust.custAddress,cust.age);
    }

