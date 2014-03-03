MemWar Client (Mac)
================
An interface for [MemWar](https://github.com/anthropomorphic/MemWar/tree/45dd967814e96884d3b59cca88a0d7f9b78dd02c), a programming game written in Ruby. MemWar is based loosely off of [CoreWar](http://www.corewars.org). Information about the game can be found in [this article](http://blog.codinghorror.com/core-war-two-programs-enter-one-program-leaves/).

How To Install
===

There are no precompiled binaries ready yet, so to play you will need to download the source and compile it with Xcode.

In order to run it, you will also need to seperately download [this archive](https://github.com/anthropomorphic/MemWar/archive/v0.1.zip) containing the Ruby scripts, expand it, and include the scripts in the project before building. This can be done by right clicking anywhere in the Project Navigator (the view on the left of the window that shows all the files in the project) and selecting `Add Files To "MemWar"`. You will then need to navigate to the unarchived folder that contains the Ruby scripts, and click `Add`.

This should be all that is needed. If the scripts are loaded properly, when run, the view on the left will be black with white text detailing the instructions currently loaded into the core. If not, it will be a light gray color.

How To Play
===
You will need to write competing programs into two files, called `prog1.bc` and `prog2.bc` respectively.
All instructions are written on their own lines. They each consist of a three character opcode and two hexadecimal numbers between `0x00` (`0`) and `0xFF` (`255`) separated by spaces. The `0x` should not be included in the instruction. You may include optional comments following instructions, but they must be preceded by a semicolon (`;`). For example:

    mov 0c 15 ; optional comment

There is not yet a documented list of instructions, but you may find the currently implemented instructions in [vm.rb](https://github.com/anthropomorphic/MemWar/blob/45dd967814e96884d3b59cca88a0d7f9b78dd02c/vm.rb).

Help
===
Feel free to contact me for help.

memwar_help@mikefdorst.com
