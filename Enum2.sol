// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Enum2{
//Pending=0,Shipped=1,Accepted=2,Rejected=3,Canceled=4
    event StatusChanged(Status prev,Status updated);
    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    Status public status; //定义一个枚举类型Status,不赋值也是默认的0，Pending
    function get()public view returns(Status){

        return status;
    }    

    function set(Status _status)public{
        require(_status<=Status.Canceled,"invalid status");
        Status _prev =status;
        status=_status;
        emit StatusChanged(_prev,_status);
    }
    function cancel() public{
        Status _prev=status;
        set(Status.Canceled);
        emit StatusChanged(_prev,Status.Canceled);

    }

    function reset()public{
        Status _prev=status;
        delete status;
        emit StatusChanged(_prev,Status.Pending);
    }
    function isCancel()public view returns(bool){
        return (uint8(status)== 4);//可以将enum的你类型强转成uint8

    }





}