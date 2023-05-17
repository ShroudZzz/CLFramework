# ``CLFramework``

make XCFramework sample Demo (Xcode14.2 Swift5)

Target-CLFramework
    `General`:
        `Supported Destinations` : add build platforms
        `Mininum Deplyments`     : set mininum version
    `Build Settings`:
        `Build Active Architecture Only`     : NO
        `Build Librarises for Distributions` : YES
        `Excluded Architectures`             : set useless arch
    `Linking`:
         `Dead Code Stripping`   : NO
         `Mach-O Type`           : static lib or dymatic lib
     

**Check List**
* [ ] Swift File `class` `struct` `property` `func` add `public` or `open` If you want to expose the interface to others 
* [ ] OC/C .h in File `Build Phases` -> `Headers`, .m/.c `Build Phases` -> `Compile Sources` 

