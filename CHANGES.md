# SDK 1.X Changes

All notable changes to this project will be documented in this file.


## [1.45] - 2020-01-17
### Fixes

- 56729: Fix for OPC file crashing the Glasswall engine.
- 57314: Fix for memory leak in GIF due to invalid CodeLength.
- 57316: Fix for memory leak in JPG due to a corrupt JPEG segment.
- 57318: Fix for memory leak in OOXML that occurs when gathering OPC relationship data.

### Changed

- Image and text export/import: Change in PDF export behaviour whereby images are no longer left in the regenerated PDF 
file contained in the exported package. By calling import, the images can be re-inserted into the PDF from raw image 
data stored in the exported package.
