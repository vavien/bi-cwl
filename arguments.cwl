#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
label: Example trivial wrapper for Java 11 compiler
baseCommand: javac
arguments: ["-d", $(runtime.outdir)]
inputs:
  src:
    type: File
    inputBinding:
      position: 1
outputs:
  classfile:
    type: File
    outputBinding:
      glob: "*.class"

