// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


contract Enum{
    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    Status public status;

    function get() public view returns (Status){
        return status;
    }

    function setShipped()external {
        status = Status.Shipped;
    }

    function setAccepted()external {
        status = Status.Accepted;
    }
    
    function setRejected()external {
        status = Status.Rejected;
    }

    function setCanceled()external {
        status = Status.Canceled;
    }

    function setPending()external {
        status = Status.Pending;
    }

}