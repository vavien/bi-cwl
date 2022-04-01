cwlVersion: v1.0
class: CommandLineTool

baseCommand: python
arguments: ["b.py"]

inputs:
  - id: slot:
    type: array
  - id: file_to_search:
    type: File
  - id: type_of_graph:
    type: int
	  
outputs:
  - id: graph:
    type: File

