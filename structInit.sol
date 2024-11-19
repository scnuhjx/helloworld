//SPDX-License-Identifier:MIT
pragma solidity ^0.8.28;
contract StructInit{

    event Jiluwho(address,uint);
    struct Book{
        string title;
        string author;
        uint ID;


    }
    
    function getBooks()public pure returns(Book memory,Book memory,Book memory){
        Book memory book1=Book('learn sol','hjx',1); //按顺序最简洁了。
        Book memory book2=Book({title:'learn sol',author:'hjx2',ID:2});
        Book memory book3;
        book3.ID=3;
        book3.author='hjx3';
        book3.title='learn sol3';
        return (book1,book2,book3);

    }
    receive() external payable { }
    fallback() external payable {
        emit Jiluwho(msg.sender,msg.value);
     }


}