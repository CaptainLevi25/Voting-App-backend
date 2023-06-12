// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract funders{
    //4 parties are competing and voter has to select from this 4 parties/

    uint[4] public Votes;   //array where votes per party will be stored
    address[] public participants; //storing address to make sure one person wont be able to vote twice

    function  giveVote0() public{
       // require(_partyNumber>=0 && _partyNumber<4);
        address voter = msg.sender;
        uint flag = 0;
        for(uint i =0;i<participants.length;i++){
            if(participants[i]==voter){
                flag=1;
            }
        }
        if(flag==0){
            participants.push(voter);
           
          
                    Votes[0]+=1;
                
      
        
    }  
    }
        function  giveVote1() public{
       // require(_partyNumber>=0 && _partyNumber<4);
        address voter = msg.sender;
        uint flag = 0;
        for(uint i =0;i<participants.length;i++){
            if(participants[i]==voter){
                flag=1;
            }
        }
        if(flag==0){
            participants.push(voter);
           
          
                    Votes[1]+=1;
                
      
        
    }  
    }
        function  giveVote2() public{
     //   require(_partyNumber>=0 && _partyNumber<4);
        address voter = msg.sender;
        uint flag = 0;
        for(uint i =0;i<participants.length;i++){
            if(participants[i]==voter){
                flag=1;
            }
        }
        if(flag==0){
            participants.push(voter);
           
          
                    Votes[2]+=1;
                
      
        
    }  
    }
        function  giveVote3() public{
    //    require(_partyNumber>=0 && _partyNumber<4);
        address voter = msg.sender;
        uint flag = 0;
        for(uint i =0;i<participants.length;i++){
            if(participants[i]==voter){
                flag=1;
            }
        }
        if(flag==0){
            participants.push(voter);
           
          
                    Votes[3]+=1;
                
      
        
    }  
    }
  
    function totalVotes() public view returns(uint){ 
        uint totalvote=0;
        for(uint i=0;i<Votes.length;i++){
            totalvote+=Votes[i];
        }
        return totalvote;
    }
    function mostVoted() public view returns(uint)  {
        uint index = 0;
        uint maxValue = 0;
        uint temp;
        uint flag = 0;
        for(uint i = 0; i < Votes.length; i++) {
            temp = Votes[i];
            if(Votes[i]!=0){
                for(uint j = i+1; j < Votes.length; j++) {
                    if((temp == Votes[j])) {
                    flag = 1;
                    break;
                    }
                }
            }
        }
        for(uint i = 0; i<Votes.length;i++){
            if(Votes[i]>maxValue){
                index = i+1;
                maxValue=Votes[i];
            }
        }
        if(index == 0){
            return 500;
        } 
        else if(flag == 1){
            return 5;
        }
        else{
            return index;
        }
    }
        
  function alreadyVotedCheck() public view returns(bool){
        address clicker = msg.sender;
        for(uint i = 0; i<participants.length ; i++){
            if(clicker==participants[i]){
             return true;
            }
        }
         return false;
    }
}