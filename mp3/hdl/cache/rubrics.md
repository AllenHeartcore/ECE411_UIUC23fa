### **Datapath General**
- Having all arrays of correct size
- Tag comparison and hit detection
- Bus adapter and cacheline adapter
- LLC address selected between Tag and CPU address
- LRU updates on hits or loading

### **Data Array**
- D from CPU when writing
- D from LLC when loading
- Q to CPU select way based on hit
- Q to LLC select way based on LRU
- WE on correct way based on hit when writing
- WE on correct way based on LRU when loading
- Mask from CPU when writing
- Mask '1 when loading

### **Tag Array**
- D from CPU address
- Q to tag compare
- Q to LLC address select way based on LRU
- WE on correct way based on LRU when loading

### **Dirty Array**
- D set to 1 if writing
- D set to 0 if evicting or loading
- Q to controller, select way base on LRU
- WE on correct way based on hit when writing
- WE on correct way based on LRU when loading

### **Valid Array**
- D set to constant 1 or only 1 when loading
- Q to hit detection
- WE on correct way based on LRU

### **FSM**
- Four states, two cycle hit & one cycle SRAM read
- Hit and Miss detection
- Set cpu_resp correctly when hit
- Read pmem_resp correctly (looping)
- Set pmem_read and pmem_write correctly (during allocation and eviction)
- Clean evict correctly using miss and dirty
- Dirty evict correctly using miss and dirty
