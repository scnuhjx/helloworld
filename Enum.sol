// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Enum{
    enum State {Created,Locked,Inactive}

    State public state;

    constructor() {
        state = State.Created;
    }
    function lock()public{

        state=State.Locked;
    }
    function unlock()public{

        state=State.Inactive;
    }
    function reset()public{

        state=State.Created;
    }

    function isActive()public view returns(bool){

        return (state==State.Created);

    }

    function isLocked()public view returns(bool){
        return (state==State.Locked);
    }

    function isUnlocked()public view returns(bool){

        return (state==State.Inactive);
    }



}