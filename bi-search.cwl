#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool

label: 搜索结果

baseCommand: python
arguments: ["b.py"]

inputs:
  slot:
    type: array
  file_to_search:
    type: File
  type_of_graph:
    type: int
	  
outputs:
  graph:
    type: File

