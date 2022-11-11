Folder Structure


important : " for calling your screen change only calling name in main.dart after that change it to 
            HomeScreen{) "



-> lib folder has major 5 components 
        1)->  components folder
        2)->  models folder
        3)->  screens folder
        4)->  theam folder

----------------------------------------------------------------------------------------------------
1)-->  components folder has below dart files like;
        1)->  navigationbar
----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
2)-->  models folder has api files {dart files) like;
        1)->  postapi
----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
3)-->  screens folder has folder of diffrent screens
        1)-> home_screen
        2)-> test_screen
        3)-> sign_in
        4)-> sign_up
        5)-> test_result
        6)-> doctor_talk
        7)-> story_screen
        8)-> relax_screen
        9)-> mood_tracker

-------- now above folder has major 3 subfolder and one dart file 
        
        ex: 
                1)-> home_screen folder
                        --> components subfolder   {it has all component of home_screen)
                        --> model subfolder        {it has postapi model dart files for home_screen only)
                        --> services subfolder     {it has remoteservice file for home_screen only)
                        --> dart file           {this file is main file of screen where all components are called here)

----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
4)--> theam folder has all theam related files
        1)-> AppTheam.dart
        2)-> SizeConfig.dart
----------------------------------------------------------------------------------------------------



NAMING CONVANTION

--->> folder name : lowercase with underscore  {ex:  home_screen )

--->> dart file name : in camelcase            {ex: HomeScreen )

--->> class name :   in camelcase  and  try to give same name as dart file name   {ex: HomeScreen )
        
                     there is more then one class in dart file 
                                
                                for main class : give name like dart file
                                
                                for subclass/another class : give name in camelcase



--------------- "   .. give meaningful name ..   " -------------
--------------- "   .. sent meaningful commit .. " -------------


        


