//SPDX-License-Identifier:MIT
pragma solidity ^0.8.10;
contract structAccess{

struct Book{
    string title;
    string author;
    uint ID;

}
Book book;
function setBook()public  {

    book.title='learn solity';
    book.author='hjx';
    book.ID=1;
    
}


function getBookAuthor()public view returns(string memory){

    return book.author;
}



}