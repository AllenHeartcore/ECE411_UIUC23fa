# CP3 Progress Report Appendix: Cache Parameter Test Log

### **Commit `5a0d1df` is used for this part of data.**

For each wordsize, *italic* configurations are suboptimal,
while **bold** configurations are optimal with minimum area.



## 1024 wordsize

| | 16 sets | 32 sets | 64 sets | 128 sets | 256 sets |
| -: | - | - | - | - | - |
|  **4 ways** |  *3342253*  | **3341959** | 3341959 | 3341959 | 3341959 |
|  **8 ways** | **3341959** |   3341959   | 3341959 | 3341959 | 3341959 |
| **16 ways** |   3341959   |   3341959   | 3341959 | 3341959 | 3341959 |

- 1024 wordsize, 16 sets, 4 ways
```
    start at 67683,  stop at 3338007,  finish at 3342253,  IPC = 0.223383
    L1 I Cache: 1269162 hits,  139 misses, 2541477 cycles, 22.683 penalty
    L2 I Cache:      22 hits,  117 misses,    2737 cycles, 23.017 penalty
    L1 D Cache:   73912 hits,   24 misses,  148481 cycles, 27.375 penalty
    L2 D Cache:       0 hits,   24 misses,     585 cycles, 24.375 penalty
```
- 1024 wordsize, otherwise
```
    start at 67683,  stop at 3337839,  finish at 3341959,  IPC = 0.223395
    L1 I Cache: 1269162 hits,  139 misses, 2541183 cycles, 20.568 penalty
    L2 I Cache:      36 hits,  103 misses,    2443 cycles, 23.019 penalty
    L1 D Cache:   73912 hits,   24 misses,  148481 cycles, 27.375 penalty
    L2 D Cache:       0 hits,   24 misses,     585 cycles, 24.375 penalty
```



## 512 wordsize

| | 16 sets | 32 sets | 64 sets | 128 sets | 256 sets |
| -: | - | - | - | - | - |
|  **4 ways** |  *3337290*  |  *3335121*  | *3334159* | 3334146 | 3334146 |
|  **8 ways** |  *3334666*  | **3334146** |  3334146  | 3334146 | 3334146 |
| **16 ways** | **3334146** |   3334146   |  3334146  | 3334146 | 3334146 |

- 512 wordsize, 16 sets, 4 ways
```
    start at 67883,  stop at 3332950,  finish at 3337290,  IPC = 0.223743
    L1 I Cache: 1259467 hits,  505 misses, 2527228 cycles, 16.424 penalty
    L2 I Cache:      63 hits,  442 misses,    6780 cycles, 15.054 penalty
    L1 D Cache:   73890 hits,   46 misses,  148651 cycles, 18.935 penalty
    L2 D Cache:       2 hits,   45 misses,     733 cycles, 16.200 penalty
```
- 512 wordsize, 32 sets, 4 ways
```
    start at 67883,  stop at 3330807,  finish at 3335121,  IPC = 0.223890
    L1 I Cache: 1259468 hits,  505 misses, 2525059 cycles, 12.125 penalty
    L2 I Cache:     230 hits,  275 misses,    4609 cycles, 15.087 penalty
    L1 D Cache:   73890 hits,   46 misses,  148641 cycles, 18.717 penalty
    L2 D Cache:       2 hits,   45 misses,     723 cycles, 15.978 penalty
```
- 512 wordsize, 16 sets, 8 ways
```
    start at 67883,  stop at 3330326,  finish at 3334666,  IPC = 0.223923
    L1 I Cache: 1259468 hits,  505 misses, 2524604 cycles, 11.224 penalty
    L2 I Cache:     265 hits,  240 misses,    4154 cycles, 15.100 penalty
    L1 D Cache:   73890 hits,   46 misses,  148641 cycles, 18.717 penalty
    L2 D Cache:       2 hits,   45 misses,     723 cycles, 15.978 penalty
```
- 512 wordsize, 64 sets, 4 ways
```
    start at 67883,  stop at 3329949,  finish at 3334159,  IPC = 0.223949
    L1 I Cache: 1259468 hits,  505 misses, 2524097 cycles, 10.220 penalty
    L2 I Cache:     304 hits,  201 misses,    3647 cycles, 15.119 penalty
    L1 D Cache:   73890 hits,   46 misses,  148641 cycles, 18.717 penalty
    L2 D Cache:       2 hits,   45 misses,     723 cycles, 15.978 penalty
```
- 512 wordsize, otherwise
```
    start at 67883,  stop at 3329949,  finish at 3334146,  IPC = 0.223949
    L1 I Cache: 1259468 hits,  505 misses, 2524084 cycles, 10.194 penalty
    L2 I Cache:     305 hits,  200 misses,    3634 cycles, 15.120 penalty
    L1 D Cache:   73890 hits,   46 misses,  148641 cycles, 18.717 penalty
    L2 D Cache:       2 hits,   45 misses,     723 cycles, 15.978 penalty
```



## 256 wordsize

| | 16 sets | 32 sets | 64 sets | 128 sets | 256 sets |
| -: | - | - | - | - | - |
|  **4 ways** |           | *3256266* | *3252870* | **3252042** | 3252042 |
|  **8 ways** | *3256602* | *3252498* | *3252051* |   3252042   | 3252042 |
| **16 ways** | *3252426* | *3252051* |  3252042  |   3252042   | 3252042 |

- 256 wordsize, 16 sets, 8 ways
```
    start at 67796,  stop at 3252182,  finish at 3256602,  IPC = 0.229412
    L1 I Cache: 1173377 hits, 1280 misses, 2361153 cycles, 11.249 penalty
    L2 I Cache:     393 hits,  887 misses,   10560 cycles, 11.019 penalty
    L1 D Cache:   73801 hits,  135 misses,  149261 cycles, 12.289 penalty
    L2 D Cache:     106 hits,   87 misses,    1254 cycles, 11.977 penalty
```
- 256 wordsize, 32 sets, 4 ways
```
    start at 67796,  stop at 3251836,  finish at 3256266,  IPC = 0.229437
    L1 I Cache: 1173378 hits, 1280 misses, 2360813 cycles, 10.982 penalty
    L2 I Cache:     431 hits,  849 misses,   10218 cycles, 11.020 penalty
    L1 D Cache:   73801 hits,  135 misses,  149282 cycles, 12.444 penalty
    L2 D Cache:     104 hits,   89 misses,    1275 cycles, 11.989 penalty
```
- 256 wordsize, 64 sets, 4 ways
```
    start at 67796,  stop at 3248477,  finish at 3252870,  IPC = 0.229679
    L1 I Cache: 1173378 hits, 1280 misses, 2357420 cycles,  8.331 penalty
    L2 I Cache:     808 hits,  472 misses,    6825 cycles, 11.036 penalty
    L1 D Cache:   73801 hits,  135 misses,  149261 cycles, 12.289 penalty
    L2 D Cache:     106 hits,   87 misses,    1254 cycles, 11.977 penalty
```
- 256 wordsize, 32 sets, 8 ways
```
    start at 67796,  stop at 3248096,  finish at 3252498,  IPC = 0.229706
    L1 I Cache: 1173377 hits, 1280 misses, 2357049 cycles,  8.043 penalty
    L2 I Cache:     849 hits,  431 misses,    6456 cycles, 11.039 penalty
    L1 D Cache:   73801 hits,  135 misses,  149261 cycles, 12.289 penalty
    L2 D Cache:     106 hits,   87 misses,    1254 cycles, 11.977 penalty
```
- 256 wordsize, 16 sets, 16 ways
```
    start at 67796,  stop at 3248024,  finish at 3252426,  IPC = 0.229712
    L1 I Cache: 1173377 hits, 1280 misses, 2356977 cycles,  7.987 penalty
    L2 I Cache:     857 hits,  423 misses,    6384 cycles, 11.040 penalty
    L1 D Cache:   73801 hits,  135 misses,  149261 cycles, 12.289 penalty
    L2 D Cache:     106 hits,   87 misses,    1254 cycles, 11.977 penalty
```
- 256 wordsize, 32 sets, 16 ways / 256 wordsize, 64 sets, 8 ways
```
    start at 67796,  stop at 3247748,  finish at 3252051,  IPC = 0.229731
    L1 I Cache: 1173378 hits, 1280 misses, 2356601 cycles,  7.691 penalty
    L2 I Cache:     899 hits,  381 misses,    6006 cycles, 11.045 penalty
    L1 D Cache:   73801 hits,  135 misses,  149261 cycles, 12.289 penalty
    L2 D Cache:     106 hits,   87 misses,    1254 cycles, 11.977 penalty
```
- 256 wordsize, otherwise
```
    start at 67796,  stop at 3247739,  finish at 3252042,  IPC = 0.229732
    L1 I Cache: 1173378 hits, 1280 misses, 2356592 cycles,  7.684 penalty
    L2 I Cache:     900 hits,  380 misses,    5997 cycles, 11.045 penalty
    L1 D Cache:   73801 hits,  135 misses,  149261 cycles, 12.289 penalty
    L2 D Cache:     106 hits,   87 misses,    1254 cycles, 11.977 penalty
```



## 128 wordsize

| | 16 sets | 32 sets | 64 sets | 128 sets | 256 sets |
| -: | - | - | - | - | - |
|  **4 ways** |           |           |  *3288102*  | *3283430* | *3282469* |
|  **8 ways** |           | *3288226* |  *3282812*  | *3282448* |  3282434  |
| **16 ways** | *3288515* | *3282798* | **3282434** |  3282434  |  3282434 |

- 128 wordsize, 16 sets, 16 ways
```
    start at 68978,  stop at 3283632,  finish at 3288515,  IPC = 0.227252
    L1 I Cache: 1173858 hits, 8476 misses, 2401358 cycles,  6.329 penalty
    L2 I Cache:    6870 hits, 1606 misses,   28215 cycles,  9.013 penalty
    L1 D Cache:   73361 hits,  575 misses,  151694 cycles,  8.647 penalty
    L2 D Cache:     784 hits,  171 misses,    3247 cycles,  9.819 penalty
```
- 128 wordsize, 32 sets, 8 ways
```
    start at 68988,  stop at 3283343,  finish at 3288226,  IPC = 0.227273
    L1 I Cache: 1173869 hits, 8476 misses, 2401071 cycles,  6.292 penalty
    L2 I Cache:    6915 hits, 1561 misses,   27906 cycles,  9.017 penalty
    L1 D Cache:   73361 hits,  575 misses,  151730 cycles,  8.710 penalty
    L2 D Cache:     783 hits,  172 misses,    3283 cycles,  9.983 penalty
```
- 128 wordsize, 64 sets, 4 ways
```
    start at 68978,  stop at 3283219,  finish at 3288102,  IPC = 0.227281
    L1 I Cache: 1173858 hits, 8476 misses, 2400945 cycles,  6.280 penalty
    L2 I Cache:    6929 hits, 1547 misses,   27802 cycles,  9.014 penalty
    L1 D Cache:   73361 hits,  575 misses,  151694 cycles,  8.647 penalty
    L2 D Cache:     784 hits,  171 misses,    3247 cycles,  9.819 penalty
```
- 128 wordsize, 128 sets, 4 ways
```
    start at 68978,  stop at 3278575,  finish at 3283430,  IPC = 0.227610
    L1 I Cache: 1173860 hits, 8476 misses, 2396273 cycles,  5.728 penalty
    L2 I Cache:    7597 hits,  879 misses,   23126 cycles,  9.024 penalty
    L1 D Cache:   73361 hits,  575 misses,  151694 cycles,  8.647 penalty
    L2 D Cache:     784 hits,  171 misses,    3247 cycles,  9.819 penalty
```
- 128 wordsize, 64 sets, 8 ways
```
    start at 68978,  stop at 3277943,  finish at 3282812,  IPC = 0.227654
    L1 I Cache: 1173862 hits, 8476 misses, 2395654 cycles,  5.655 penalty
    L2 I Cache:    7686 hits,  790 misses,   22503 cycles,  9.027 penalty
    L1 D Cache:   73361 hits,  575 misses,  151694 cycles,  8.647 penalty
    L2 D Cache:     784 hits,  171 misses,    3247 cycles,  9.819 penalty
```
- 128 wordsize, 32 sets, 16 ways
```
    start at 68978,  stop at 3277929,  finish at 3282798,  IPC = 0.227655
    L1 I Cache: 1173862 hits, 8476 misses, 2395640 cycles,  5.653 penalty
    L2 I Cache:    7688 hits,  788 misses,   22489 cycles,  9.027 penalty
    L1 D Cache:   73361 hits,  575 misses,  151694 cycles,  8.647 penalty
    L2 D Cache:     784 hits,  171 misses,    3247 cycles,  9.819 penalty
```
- 128 wordsize, 256 sets, 4 ways
```
    start at 68978,  stop at 3277684,  finish at 3282469,  IPC = 0.227673
    L1 I Cache: 1173862 hits, 8476 misses, 2395311 cycles,  5.614 penalty
    L2 I Cache:    7735 hits,  741 misses,   22160 cycles,  9.028 penalty
    L1 D Cache:   73361 hits,  575 misses,  151694 cycles,  8.647 penalty
    L2 D Cache:     784 hits,  171 misses,    3247 cycles,  9.819 penalty
```
- 128 wordsize, 128 sets, 8 ways
```
    start at 68978,  stop at 3277656,  finish at 3282448,  IPC = 0.227675
    L1 I Cache: 1173862 hits, 8476 misses, 2395290 cycles,  5.612 penalty
    L2 I Cache:    7738 hits,  738 misses,   22139 cycles,  9.028 penalty
    L1 D Cache:   73361 hits,  575 misses,  151694 cycles,  8.647 penalty
    L2 D Cache:     784 hits,  171 misses,    3247 cycles,  9.819 penalty
```
- 128 wordsize, otherwise
```
    start at 68978,  stop at 3277649,  finish at 3282434,  IPC = 0.227675
    L1 I Cache: 1173862 hits, 8476 misses, 2395276 cycles,  5.610 penalty
    L2 I Cache:    7740 hits,  736 misses,   22125 cycles,  9.029 penalty
    L1 D Cache:   73361 hits,  575 misses,  151694 cycles,  8.647 penalty
    L2 D Cache:     784 hits,  171 misses,    3247 cycles,  9.819 penalty
```
