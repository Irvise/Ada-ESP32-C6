# Ada-ESP32-C6
Ada running on the ESP32-C6


## SVD
The `svd` directory containes the [CMSIS-SVD](https://www.keil.com/pack/doc/CMSIS/SVD/html/index.html) CPU descriptor file for the ESP32-C6.
With this file and the [`svd2ada`](https://github.com/AdaCore/svd2ada) program, the CPU data registers and descriptors are automatically generated.

### Limitations
As of `2023-11-02`, the `svd2ada` utillity does not currently parse register names with array descriptor `%s` correctly. Therefore, the `RMT` functionallity has been disabled for now.
