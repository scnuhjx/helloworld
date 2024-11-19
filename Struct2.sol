//@author:hjx
//@dev:结构体数组。
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Struct2{



    struct students{
        string name;
        uint grade;
        bool pass;


    }
students[] public stud; //加了public，相当于把stud释放出来了，一个get函数,建立了一个学生数组

function set(string calldata _name,uint _grade,bool _pass)public {
    students memory Mystu; //先临时建立个Mystu的实例，再一个个填充，后把实例压进stud的学生数组中。
    Mystu.name=_name;
    Mystu.grade=_grade;
    Mystu.pass=_pass;
    stud.push(Mystu);


}
function get(uint _index)public view returns(string memory){
    require(_index<stud.length,'out of boudry');
    return stud[_index].name;
}
function get2(uint _index)public view returns(string memory,bool,uint){
    return (stud[_index].name,stud[_index].pass,stud[_index].grade);
}

function updateName(uint _index,string memory _newname)public returns(students memory){
    require(_index<stud.length,'out of boudry');
    stud[_index].name=_newname;
    return stud[_index];

}
}