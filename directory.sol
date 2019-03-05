pragma solidity 0.5;

contract Annuaire {
    
    struct Personne {
        uint annee;
        string prenom;
        string nom;
    }
    
    mapping (address => Personne) listePersonnes;
    
    function setPersonne(uint _annee, string memory _prenom, string memory _nom) public {
        Personne memory nouvellePersonne = Personne(_annee, _prenom, _nom);
        listePersonnes[msg.sender] = nouvellePersonne;
    }
    
    function getPersonne(address _address) view public returns (uint, string memory, string memory) {
        return (listePersonnes[_address].annee, listePersonnes[_address].nom, listePersonnes[_address].prenom);
    }
}
