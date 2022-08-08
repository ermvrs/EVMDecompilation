contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
        var var0 = msg.value; // ether sent via tx
    
        if (var0) { revert(memory[0x00:0x00]); } // if there isnt any payable or fallback function in contract. 
                                                // this line appears on top. So check it, if exist then there 
                                                // wont be reentrancy with native
    
        if (msg.data.length < 0x04) { revert(memory[0x00:0x00]); } // this line exist because all functions takes argument
    
        var0 = msg.data[0x00:0x20] >> 0xe0; // read first 4 bytes to take function selector
    
        if (var0 == 0x1076d7ae) { // firstMap(address,uint256)
            // Dispatch table entry for 0x1076d7ae (unknown)
            var var1 = 0x0081;
            var var2 = 0x007c;
            var var3 = msg.data.length - 0x04 + 0x04;
            var var4 = 0x04;
            var2, var3 = func_0379(var3, var4);
            func_007C(var2, var3);
            stop();
        } else if (var0 == 0x197a4a18) { // readFirst(address)
            // Dispatch table entry for 0x197a4a18 (unknown)
            var1 = 0x009d;
            var2 = 0x0098;
            var4 = 0x04;
            var3 = var4 + (msg.data.length - var4);
            var2 = func_034C(var3, var4);
            var1 = func_0098(var2);
            var temp0 = var1;
            var1 = 0x00aa;
            var2 = temp0;
            var3 = memory[0x40:0x60];
            var1 = func_041B(var2, var3);
            var temp1 = memory[0x40:0x60];
            return memory[temp1:temp1 + var1 - temp1];
        } else if (var0 == 0x366ae10c) { // readSec(address)
            // Dispatch table entry for 0x366ae10c (unknown)
            var1 = 0x00cd;
            var2 = 0x00c8;
            var4 = 0x04;
            var3 = var4 + (msg.data.length - var4);
            var2 = func_034C(var3, var4);
            var1 = func_00C8(var2);
            var temp2 = var1;
            var1 = 0x00da;
            var2 = temp2;
            var3 = memory[0x40:0x60];
            var1 = func_041B(var2, var3);
            var temp3 = memory[0x40:0x60];
            return memory[temp3:temp3 + var1 - temp3];
        } else if (var0 == 0x3adf8e83) { // secondMap(address,uint256)
            // Dispatch table entry for 0x3adf8e83 (unknown)
            var1 = 0x00fd;
            var2 = 0x00f8;
            var4 = 0x04;
            var3 = var4 + (msg.data.length - var4);
            var2, var3 = func_0379(var3, var4);
            func_00F8(var2, var3);
            stop();
        } else if (var0 == 0x4575c4e4) { // thirdMap(address,uint256,uint256)
            // Dispatch table entry for 0x4575c4e4 (unknown)
            var1 = 0x0119;
            var2 = 0x0114;
            var4 = 0x04;
            var3 = var4 + (msg.data.length - var4);
            var2, var3, var4 = func_03B9(var3, var4);
            func_0114(var2, var3, var4);
            stop();
        } else if (var0 == 0x825bd006) { // readThird(address,uint256)
            // Dispatch table entry for 0x825bd006 (unknown)
            var1 = 0x0135;
            var2 = 0x0130;
            var4 = 0x04;
            var3 = var4 + (msg.data.length - var4);
            var2, var3 = func_0379(var3, var4);
            var1 = func_0130(var2, var3);
            var temp4 = var1;
            var1 = 0x0142;
            var2 = temp4;
            var3 = memory[0x40:0x60];
            var1 = func_041B(var2, var3);
            var temp5 = memory[0x40:0x60];
            return memory[temp5:temp5 + var1 - temp5];
        } else { revert(memory[0x00:0x00]); }
    }
    
    function func_007C(var arg0, var arg1) {
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x01;
        storage[keccak256(memory[0x00:0x40])] = arg1;
    }
    
    function func_0098(var arg0) returns (var r0) {
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x01;
        return storage[keccak256(memory[0x00:0x40])];
    }
    
    function func_00C8(var arg0) returns (var r0) {
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x03;
        return storage[keccak256(memory[0x00:0x40])];
    }
    
    function func_00F8(var arg0, var arg1) {
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x03;
        storage[keccak256(memory[0x00:0x40])] = arg1;
    }
    
    function func_0114(var arg0, var arg1, var arg2) {
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x04;
        var temp0 = keccak256(memory[0x00:0x40]);
        memory[0x00:0x20] = arg1;
        memory[0x20:0x40] = temp0;
        storage[keccak256(memory[0x00:0x40])] = arg2;
    }
    
    function func_0130(var arg0, var arg1) returns (var r0) {
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x04;
        var temp0 = keccak256(memory[0x00:0x40]);
        memory[0x00:0x20] = arg1;
        memory[0x20:0x40] = temp0;
        return storage[keccak256(memory[0x00:0x40])];
    }
    
    function func_0322(var arg0, var arg1) returns (var r0) {
        var var0 = msg.data[arg1:arg1 + 0x20];
        var var1 = 0x0331;
        var var2 = var0;
        func_0477(var2);
        return var0;
    }
    
    function func_0337(var arg0, var arg1) returns (var r0) {
        var var0 = msg.data[arg1:arg1 + 0x20];
        var var1 = 0x0346;
        var var2 = var0;
        func_048E(var2);
        return var0;
    }
    
    function func_034C(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) {
            var var1 = 0x00;
            var var2 = 0x0370;
            var var3 = arg0;
            var var4 = arg1 + var1;
            return func_0322(var3, var4);
        } else {
            var1 = 0x0361;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_0379(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg0 - arg1 i>= 0x40) {
            var var2 = 0x00;
            var var3 = 0x039e;
            var var4 = arg0;
            var var5 = arg1 + var2;
            var3 = func_0322(var4, var5);
            var0 = var3;
            var2 = 0x20;
            var3 = 0x03af;
            var4 = arg0;
            var5 = arg1 + var2;
            var3 = func_0337(var4, var5);
            arg0 = var3;
            r0 = var0;
            return r0, arg0;
        } else {
            var2 = 0x038f;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_03B9(var arg0, var arg1) returns (var r0, var arg0, var arg1) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
    
        if (arg0 - arg1 i>= 0x60) {
            var var3 = 0x00;
            var var4 = 0x03e0;
            var var5 = arg0;
            var var6 = arg1 + var3;
            var4 = func_0322(var5, var6);
            var0 = var4;
            var3 = 0x20;
            var4 = 0x03f1;
            var5 = arg0;
            var6 = arg1 + var3;
            var4 = func_0337(var5, var6);
            var1 = var4;
            var3 = 0x40;
            var4 = 0x0402;
            var5 = arg0;
            var6 = arg1 + var3;
            var4 = func_0337(var5, var6);
            arg1 = var4;
            arg0 = var1;
            r0 = var0;
            return r0, arg0, arg1;
        } else {
            var3 = 0x03d1;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_040C(var arg0, var arg1) {
        var var0 = 0x0415;
        var var1 = arg1;
        var0 = func_0468(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_041B(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = temp0 + 0x20;
        var var1 = 0x0430;
        var var2 = temp0;
        var var3 = arg0;
        func_040C(var2, var3);
        return var0;
    }
    
    function func_0436(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0441;
        var var2 = arg0;
        return func_0448(var2);
    }
    
    function func_0448(var arg0) returns (var r0) { return arg0 & 0xffffffffffffffffffffffffffffffffffffffff; }
    
    function func_0468(var arg0) returns (var r0) { return arg0; }
    
    function func_0477(var arg0) {
        var var0 = 0x0480;
        var var1 = arg0;
        var0 = func_0436(var1);
    
        if (arg0 == var0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_048E(var arg0) {
        var var0 = 0x0497;
        var var1 = arg0;
        var0 = func_0468(var1);
    
        if (arg0 == var0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
}
