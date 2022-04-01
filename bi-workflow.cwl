#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow

inputs:
  question: string
  file_to_search: File
  type_of_graph: int

outputs:
  graph:
    type: File
    outputSource: result/classfile

steps:
  nlp:
    run: bi-nlp.cwl
    in:
      question
    out:
	  brand
	  item
	  time

  search:
    run: bi-search.cwl
    in:
      slot: nlp/slot
	  file_to_search
	  type_of_graph
    out: graph


