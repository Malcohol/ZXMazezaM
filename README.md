# MazezaM - a puzzle game

Copyright (C) 2002 Malcolm Tyrrell 
Malcolm.R.Tyrrell@gmail.com

You may use and distribute these files under the terms of the GNU General
Public Licence v3.

## Files:
*  LICENSE           - the GNU General Public Licence (version 3)
*  Makefile          - builds "MazezaM.tap"

*  doc/MazezaM.txt   - a description of the MazezaM puzzle game
*  doc/mzmFormat.txt - describes the .mzm file format

*  mazezams/original.mzm - contains the mazezams

*  mzmtools/...      - a submodule with python scripts for converting .mzm files into ZX basic source

*  README.md        - this file

*  src/constants.bas - defines constants used in main.bas
*  src/loader.bas    - Basic source for the program which starts loads MazezaM
*  src/main.bas      - contains most of the source code

*  udgs/udgmaker.bas - Basic source for creating the udgs and saving them as code
*  udgs/Makefile     - Builds udgmaker.tap
*  udgs/Mazezam2.tap - Pre-build udgs ready to be used in building "MazezaM.tap"
*  udgs/README.txt   - instructions for making the udgs

## Introduction:

This source package builds an implementation of MazezaM for the ZX Spectrum
in .tap format.

## Requirements:
To build "MazezaM.tap" you will need:
* zmakebas - converts a text file containing ZX Spectrum Basic into a .tap file.
* python   - The mzm-tools submodule contain python scripts for handling mzm files.
* cpp      - the C preprocessor 

You also will probably want:
* make     - automates the building process

## Instructions:
A useable tape file can be built by ensuring that "FINAL_BUILD" is not
listed in the variable CPPMACROS and typing "make MazezaM.tap". This program
will require you to type RUN at the basic prompt.

To make the self-starting .tap file I distribute you can try this process, but
I warn you: "WARNING: This process is extremely fiddly".

Guide:
*  MazezaM0.tap is the loader, built automatically from src/loader.bas
*  MazezaM2.tap holds the udg data, build manually by following the
    instructions in udgs/README.txt
*  MazezaM3.tap holds the main program which is initially built automatically
    as above, but then an auto-run version is manually saved.
*  (MazezaM1.tap would potential hold a loading screen if I ever created one.)
*  MazezaM.tap is the final .tap file of either build process.

Important note: the value 9500 in line 0 of main.bas and line 11 of loader.bas
is hard-coded to be slightly larger than the result file size of MazezaM3.tap.

The steps are

1. Make the udgs and store them in MazezaM2.tap.
2. Ensure "FINAL_BUILD" is listed in the variable CPPMACROS.
3. Type "make"
4. Load and run "MazezaM3.tap" in an emulator. (Note: The UDGs will not be correct for this run)
5. As instructed by the program, save the file, use "newMazezaM3.tap".
6. Quit the emulator.
7. Copy "newMazezaM3.tap" over MazezaM3.tap.
8. Type "make"
