**Scientific Programming with `R`** (spr) is a course taught in the [MPhil in Computational Biology](http://www.ccbi.cam.ac.uk/Education/MPhil), Cambridge, UK. The content of the course is by [Stephen Eglen](http://www.damtp.cam.ac.uk/user/sje30/), with contributions from Laurent Gatto. Teaching by Stephen and, since 2012, Laurent. The complete course comprises 16 hours sessions, 8 lectures and 4 practicals. 

See the [TeachingMaterial](https://github.com/lgatto/TeachingMaterial) repository for more material.

This material is licensed under the 
[Creative Commons Attribution-ShareAlike 3.0 License](http://creativecommons.org/licenses/by-sa/3.0/). 


## 2020 material

Material for 2020 is in the [2020 folder](2020/).


## Compiling under windows

- Install msys2 and update it.
- Install R, Rstudio through normal route


To get Rstudio ready, we may need to change a couple of settings
  because if you have OneDrive (as I do), it will use that as your
  home directory for evertything.  If you don't mind storing lots of
  extra things in onedrive, you can skip the next two steps.
  
- Tell Rstudio your default home directory.  Go to Tools --> Global
  Options and change the default working directory to something like
  `C:/Users/steph`.  Don't forget to press apply.

- 



```
install.packages("tinytex", "ggplot2", "knitr", "patchwork")
tinytex::install_tinytex()g
```
