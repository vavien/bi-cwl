#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool

label: 意图识别+槽标记

baseCommand: python
arguments: ["a.py"]

inputs:
  question:
    type: string
    inputBinding:
      position: 1
	  
outputs:
  intent:
    type: string
  time:
    type: string
  brand:
    type: string
  query_item:
    type: string
	

