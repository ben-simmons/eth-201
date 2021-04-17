pragma solidity 0.8.0;

contract EntityArray {
    
    struct Entity {
        uint data;
        address _address;
    }
    
    Entity[] entityArray;
    
    function addEntity(uint _data) public returns (bool) {
        bool exists = false;
        for (uint i = 0; i < entityArray.length; i++) {
            Entity memory entity = entityArray[i];
            if (entity._address == msg.sender) {
                exists = true;
            }
        }
        if (!exists) {
            Entity memory entity = Entity(_data, msg.sender);
            entityArray.push(entity);
            return true;
        }
        return false;
    }
    
    function updateEntity(uint _data) public returns (bool) {
        for (uint i = 0; i < entityArray.length; i++) {
            Entity storage entity = entityArray[i];
            if (entity._address == msg.sender) {
                entity.data = _data;
                return true;
            }
        }
        return false;
    }
    
}

contract EntityArray2 {
    
    struct Entity {
        uint data;
        address _address;
    }
    
    Entity[] entityArray;
    
    function addEntity(uint _data) public returns (bool) {
        Entity memory entity = Entity(_data, msg.sender);
        entityArray.push(entity);
        return true;
    }
    
    function updateEntity(uint _data) public returns (bool) {
        for (uint i = 0; i < entityArray.length; i++) {
            Entity storage entity = entityArray[i];
            if (entity._address == msg.sender) {
                entity.data = _data;
                return true;
            }
        }
        return false;
    }
    
}

contract EntityMapping {
    
    struct Entity {
        uint data;
        address _address;
    }
    
    mapping(address => Entity) entityMapping;
    
    function addEntity(uint _data) public returns (bool) {
        entityMapping[msg.sender] = Entity(_data, msg.sender);
        return true;
    }
    
    function updateEntity(uint _data) public returns (bool) {
        entityMapping[msg.sender].data = _data;
        return true;
    }
    
}