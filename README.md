# Door Lock - DE1 Project
School project - A door lock with an Arty board

### Team members

- Medek Petr
- Navrátil Jiří
- Niederle Vojtěch
- Nimrichter Filip

[Link to our GitHub project folder](https://github.com/GeorgeNavratil/Door_Lock-DE1_Project)

### Project objectives

Making a Door Lock system with:

- 4-digit PIN terminal
- 4-digit 7-segment display
- 4x3 push buttons keyboard
- relay for door lock control

## Hardware description

Whole system will be mainly run on an [Arty A7-35T board](https://store.digilentinc.com/arty-a7-artix-7-fpga-development-board/) with a custom number keypad keyboard, a 4-digit display and a relay to lock the door. The keyboard and display with relay are solved at two other external boards. On the board with display and relay are two terminal blocks, one for the lock and the second one for the external source which is there in case we would need more current to open a bigger lock (safe or something like that). This board can be connected directly into pmod ports on Arty A7. 

### Keyboard

![Keyboard](Images/Keyboard.png)

### Display

![Display](Images/Display.png)

## VHDL modules description and simulations

### Keyboard

**Modul**: This module cares about the function of the keyboard. The keyboard itself is connected through seven signals where three of them go from the block to the columns of the keyboard and the other four are going back to the block from the rows. There is one 4bit vector output which gets the result of the row and column combination values. Two input ports clk and key_reset are implemented to take care of the process to run as intended.

**Simulation**:

### Comparator

**Modul**:

**Simulation**:

### Relay

**Modul**: Function of the relay module is simply to let the lock open (the relay is switched on)  for a specific time after which it locks the door.

**Simulation**:

### Control

**Modul**: Control decides if the code numbers will be displayed or if they will be hidden behind commas.

**Simulation**:

### driver_7seg_4digit

**Modul**: This module is a combination of three blocks taken from assignments (clock_enable, cnt_up_down, hex_7seg) which include the process p_mux. Its function is to take input values from the control block and display them on four seven segment displays on the external desk. The value from data0 input is shown on the first display and it stays there for 4ms then the process p_mux switches to the next input, takes the value from data1 and shows it on the second display. Same goes for the data2 and data3. The time of switching between displays is adjustable in the generic map of clock_enable in this module.

**Simulation**:


## TOP module description and simulations

### Pmod conectors:

| JD from: | to: | | JC from: | to: |
|:--------:|:---:|-|:--------:|:---:|
| DIG4     | F3  | | CA       | U12 |
| DIG3     | F4  | | CB       | V12 |
| DIG2     | D3  | | CC       | V10 |
| DIG1     | D4  | | CD       | V11 |
| RED      | G2  | | CE       | U13 |
| GREEN    | H2  | | CF       | T13 |
| RELAY    | D2  | | CG       | V14 |

<br>

![Top module diagram](Images/Top-Door_Lock.png)



<!-- Start of a comment

## Video

[![Door Lock - DE1 Project](https://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg)](https://www.youtube.com/watch?v=YOUTUBE_VIDEO_ID_HERE)

End of a comment -->

## References


- Arty A7 Reference Manual [online]. Available from: https://reference.digilentinc.com/reference/programmable-logic/arty-a7/reference-manual
- 4X3 KEYPAD OPERATING MECHANISM » PIJA Education. WHAT IS ARDUINO? & Arduino Boards » PIJA Education [online]. Available from: https://pijaeducation.com/arduino/keypad/4x3-keypad-operating-mechanism/
- How to interface 4x3 (Alphanumeric) keypad with Arduino uno : Arduino Alphanumeric keypad programming. Electronic Projects, Electrical Engineering Resources and Makers Articles [online]. Copyright © 2021 WTWH Media LLC. All Rights Reserved. The material on this site may not be reproduced, distributed, transmitted, cached or otherwise used, except with the prior written permission of WTWH Media. Available from: https://www.engineersgarage.com/arduino/alphanumeric-keypad-with-arduino/