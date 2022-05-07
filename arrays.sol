pragma solidity >=0.5.0 <0.6.0;
contract ZombieFactory {
    uint dnaDigits =16;
    uint dnaModulud = 10 ** dnaDigits;

    struct Zombie {
        uint dna;
        string name;
    }
    /* arrays are a data structure that holds collection of homogeneous data type
    there are two types of arrays in solidity
    1.static [number]
    2.dynamic[]
    */

    uint[1] newZ;   
    uint[5] deadZ;
    uint[] PandoraZ; 

    /* We can create a array of the previous Zombie struct as well. it will hold the 
    so creating a dynamic array of structs is useful in storing structured data in the 
    contract */
    Zombie[] public zombies;
}

