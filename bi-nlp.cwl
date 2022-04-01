cwlVersion: v1.0
class: CommandLineTool

baseCommand: python
arguments: ["a.py"]

inputs:
  - id: question
    type: string
    inputBinding:
      position: 1
	  
outputs:
  - id: intent
    type: string
  - id: time:
    type: string
  - id: brand
    type: string
  - id: query_item
    type: string
	
