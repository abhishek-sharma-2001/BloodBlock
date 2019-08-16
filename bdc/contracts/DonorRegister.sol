pragma solidity ^0.5.0;


contract DonorRegister {
  enum gender { male, female, other}
    enum bGrp { AP, AN, BP, BN,OP, ON,ABP,ABN}
    struct bDonor{
        string name;
        uint age;
        string place;
        uint mob;
        bool medCond;
        gender donGen;
        bGrp grp;
     }
  mapping(uint=>bDonor)sample;
  function setDonor(uint _id,string memory _name,uint _age,string memory _place, uint _mob,bool _medCond, gender _donGen, bGrp _grp)public{
      sample[_id] = bDonor(_name,_age,_place,_mob,_medCond,_donGen,_grp);
  }
  function getSample(uint _id)public view returns (uint _age,string memory _place,bool _medCond,gender _donGen,bGrp _grp){
     _age = sample[_id].age;
     _place = sample[_id].place;
     _medCond = sample[_id].medCond;
     _donGen = sample[_id].donGen;
     _grp = sample[_id].grp;
  }
  // constructor() public {
  // }
}