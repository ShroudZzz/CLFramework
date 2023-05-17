# ``CLFramework``

make XCFramework sample Demo (Xcode14.2 Swift5)  

Target-CLFramework  
`General`:  
&ensp;&ensp;&ensp;&ensp;`Supported Destinations` : add build platforms  
&ensp;&ensp;&ensp;&ensp;`Mininum Deplyments`     : set mininum version  
`Build Settings`:  
&ensp;&ensp;&ensp;&ensp;`Build Active Architecture Only`     : NO  
&ensp;&ensp;&ensp;&ensp;`Build Librarises for Distributions` : YES  
&ensp;&ensp;&ensp;&ensp;`Excluded Architectures`             : set useless arch  
`Linking`:  
&ensp;&ensp;&ensp;&ensp;`Dead Code Stripping`   : NO  
&ensp;&ensp;&ensp;&ensp;`Mach-O Type`           : static lib or dymatic lib  
     

**Check List**
* [ ] Swift File `class` `struct` `property` `func` add `public` or `open` If you want to expose the interface to others 
* [ ] OC/C .h in File `Build Phases` -> `Headers`, .m/.c `Build Phases` -> `Compile Sources` 

