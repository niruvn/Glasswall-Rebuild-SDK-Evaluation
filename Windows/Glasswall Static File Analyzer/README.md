# Glasswall Static File Analyzer

The Glasswall Static File Analyzer is an application designed to process folders of files through the Glasswall Rebuild engine.  
  
The application requires that the Glasswall library be present in the same folder as the application and that it is named glasswall.classic.dll, you can obtain the library [From Here](https://github.com/filetrust/Glasswall-Rebuild-SDK-Evaluation/blob/master/Windows/Library/glasswall.classic.dll)  

The application will generate two configuration files:  
*GwConfig.xml is the xml-based configuration file that Glasswall requires on startup  
*Config2.gwc contains configuration specific to this application  
  
DO NOT EDIT THESE CONFIGURATION FILES  
These file configurations are managed entirely through the applcation's File->Processing Options submenu  
  
To run the program choose the following:  
*The input folder  
*The output folder to place the files and reports generated from processing  
*Analyze or Protect (i.e. simply scan the files or clean them via the chosen rules)  
*Whether to process subfolders (how deep this goes can be set in the Processing Options menu)  
  
Once these are selected, click OK to process.  
  
If you would like to see details of this processing, click the button with the + above the OK button to view the detailed processing status.  
  
If you have questions email Support@glasswallsolutions.com
