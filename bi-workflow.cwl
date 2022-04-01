#!/usr/bin/env cwl-runner
$namespaces:
  cwltool: "http://commonwl.org/cwltool#"

cwlVersion: v1.0
class: Workflow

inputs:
  - id: question
    type: string
  - id: file_to_search
    type: File
  - id: type_of_graph
    type: int

outputs:
  - id: graph
    type: File

steps:
  - id: nlp
    run: bi-nlp.cwl
    in:
      question
    out:
      - brand
      - item
      - time

  - id: search:
    run: bi-search.cwl
    in:
      slot: 
        nlp/slot
	file_to_search
	type_of_graph
    out: 
      - graph


