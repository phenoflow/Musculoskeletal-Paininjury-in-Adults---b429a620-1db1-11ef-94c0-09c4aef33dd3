cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  musculoskeletal-paininjury-in-adults-fracture---primary:
    run: musculoskeletal-paininjury-in-adults-fracture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  musculoskeletal-paininjury-in-adults-metatarsalgia---primary:
    run: musculoskeletal-paininjury-in-adults-metatarsalgia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-fracture---primary/output
  musculoskeletal-paininjury-in-adults---primary:
    run: musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-metatarsalgia---primary/output
  musculoskeletal-paininjury-in-adults-sacroiliac---primary:
    run: musculoskeletal-paininjury-in-adults-sacroiliac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults---primary/output
  arthropathy-musculoskeletal-paininjury-in-adults---primary:
    run: arthropathy-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-sacroiliac---primary/output
  pain---primary:
    run: pain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: arthropathy-musculoskeletal-paininjury-in-adults---primary/output
  lateral-musculoskeletal-paininjury-in-adults---primary:
    run: lateral-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: pain---primary/output
  musculoskeletal-paininjury-in-adults-backache---primary:
    run: musculoskeletal-paininjury-in-adults-backache---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: lateral-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-carpal---primary:
    run: musculoskeletal-paininjury-in-adults-carpal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-backache---primary/output
  musculoskeletal-paininjury-in-adults-sacroiliitis---primary:
    run: musculoskeletal-paininjury-in-adults-sacroiliitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-carpal---primary/output
  musculoskeletal-paininjury-in-adults-femur---primary:
    run: musculoskeletal-paininjury-in-adults-femur---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-sacroiliitis---primary/output
  musculoskeletal-paininjury-in-adults-contusion---primary:
    run: musculoskeletal-paininjury-in-adults-contusion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-femur---primary/output
  navicular-musculoskeletal-paininjury-in-adults---primary:
    run: navicular-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-contusion---primary/output
  musculoskeletal-paininjury-in-adults-vertebra---primary:
    run: musculoskeletal-paininjury-in-adults-vertebra---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: navicular-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-thumb---primary:
    run: musculoskeletal-paininjury-in-adults-thumb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-vertebra---primary/output
  cervical-musculoskeletal-paininjury-in-adults---primary:
    run: cervical-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-thumb---primary/output
  musculoskeletal-paininjury-in-adults-phalanx---primary:
    run: musculoskeletal-paininjury-in-adults-phalanx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: cervical-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-dupuytrens---primary:
    run: musculoskeletal-paininjury-in-adults-dupuytrens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-phalanx---primary/output
  stiff-musculoskeletal-paininjury-in-adults---primary:
    run: stiff-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-dupuytrens---primary/output
  musculoskeletal-paininjury-in-adults-thigh---primary:
    run: musculoskeletal-paininjury-in-adults-thigh---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: stiff-musculoskeletal-paininjury-in-adults---primary/output
  patellofemoral-musculoskeletal-paininjury-in-adults---primary:
    run: patellofemoral-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-thigh---primary/output
  musculoskeletal-paininjury-in-adults-wrist---primary:
    run: musculoskeletal-paininjury-in-adults-wrist---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: patellofemoral-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-lumbar---primary:
    run: musculoskeletal-paininjury-in-adults-lumbar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-wrist---primary/output
  musculoskeletal-paininjury-in-adults-malleolus---primary:
    run: musculoskeletal-paininjury-in-adults-malleolus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-lumbar---primary/output
  acromioclavicular-musculoskeletal-paininjury-in-adults---primary:
    run: acromioclavicular-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-malleolus---primary/output
  proximal-musculoskeletal-paininjury-in-adults---primary:
    run: proximal-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: acromioclavicular-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-closed---primary:
    run: musculoskeletal-paininjury-in-adults-closed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: proximal-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-torticolli---primary:
    run: musculoskeletal-paininjury-in-adults-torticolli---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-closed---primary/output
  musculoskeletal-paininjury-in-adults-arthritis---primary:
    run: musculoskeletal-paininjury-in-adults-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-torticolli---primary/output
  polyarthropathy-musculoskeletal-paininjury-in-adults---primary:
    run: polyarthropathy-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-arthritis---primary/output
  musculoskeletal-paininjury-in-adults-calcaneu---primary:
    run: musculoskeletal-paininjury-in-adults-calcaneu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: polyarthropathy-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-weber---primary:
    run: musculoskeletal-paininjury-in-adults-weber---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-calcaneu---primary/output
  musculoskeletal-paininjury-in-adults-bursitis---primary:
    run: musculoskeletal-paininjury-in-adults-bursitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-weber---primary/output
  musculoskeletal-paininjury-in-adults-joint---primary:
    run: musculoskeletal-paininjury-in-adults-joint---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-bursitis---primary/output
  myelopathy-musculoskeletal-paininjury-in-adults---primary:
    run: myelopathy-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-joint---primary/output
  musculoskeletal-paininjury-in-adults-walking---primary:
    run: musculoskeletal-paininjury-in-adults-walking---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: myelopathy-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-tendon---primary:
    run: musculoskeletal-paininjury-in-adults-tendon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-walking---primary/output
  musculoskeletal-paininjury-in-adults-muscle---primary:
    run: musculoskeletal-paininjury-in-adults-muscle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-tendon---primary/output
  repetitive-musculoskeletal-paininjury-in-adults---primary:
    run: repetitive-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-muscle---primary/output
  musculoskeletal-paininjury-in-adults-fibula---primary:
    run: musculoskeletal-paininjury-in-adults-fibula---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: repetitive-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-dislocation---primary:
    run: musculoskeletal-paininjury-in-adults-dislocation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-fibula---primary/output
  musculoskeletal-paininjury-in-adults-scoliosis---primary:
    run: musculoskeletal-paininjury-in-adults-scoliosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-dislocation---primary/output
  nontraumatic-musculoskeletal-paininjury-in-adults---primary:
    run: nontraumatic-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-scoliosis---primary/output
  distal-musculoskeletal-paininjury-in-adults---primary:
    run: distal-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: nontraumatic-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-synovitis---primary:
    run: musculoskeletal-paininjury-in-adults-synovitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: distal-musculoskeletal-paininjury-in-adults---primary/output
  subacromial-musculoskeletal-paininjury-in-adults---primary:
    run: subacromial-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-synovitis---primary/output
  synovial-musculoskeletal-paininjury-in-adults---primary:
    run: synovial-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: subacromial-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-tibia---primary:
    run: musculoskeletal-paininjury-in-adults-tibia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: synovial-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-pulled---primary:
    run: musculoskeletal-paininjury-in-adults-pulled---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-tibia---primary/output
  thoracic-musculoskeletal-paininjury-in-adults---primary:
    run: thoracic-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-pulled---primary/output
  musculoskeletal---primary:
    run: musculoskeletal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: thoracic-musculoskeletal-paininjury-in-adults---primary/output
  pubic-musculoskeletal-paininjury-in-adults---primary:
    run: pubic-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: musculoskeletal---primary/output
  radial-musculoskeletal-paininjury-in-adults---primary:
    run: radial-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: pubic-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-spondylosis---primary:
    run: musculoskeletal-paininjury-in-adults-spondylosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: radial-musculoskeletal-paininjury-in-adults---primary/output
  swollen-musculoskeletal-paininjury-in-adults---primary:
    run: swollen-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-spondylosis---primary/output
  musculoskeletal-paininjury-in-adults-ganglion---primary:
    run: musculoskeletal-paininjury-in-adults-ganglion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: swollen-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-subluxation---primary:
    run: musculoskeletal-paininjury-in-adults-subluxation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-ganglion---primary/output
  musculoskeletal-paininjury-in-adults-ankle---primary:
    run: musculoskeletal-paininjury-in-adults-ankle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-subluxation---primary/output
  musculoskeletal-paininjury-in-adults-forearm---primary:
    run: musculoskeletal-paininjury-in-adults-forearm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-ankle---primary/output
  meniscal-musculoskeletal-paininjury-in-adults---primary:
    run: meniscal-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-forearm---primary/output
  musculoskeletal-paininjury-in-adults-hallux---primary:
    run: musculoskeletal-paininjury-in-adults-hallux---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: meniscal-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-region---primary:
    run: musculoskeletal-paininjury-in-adults-region---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-hallux---primary/output
  musculoskeletal-paininjury-in-adults-humerus---primary:
    run: musculoskeletal-paininjury-in-adults-humerus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-region---primary/output
  musculoskeletal-paininjury-in-adults-facet---primary:
    run: musculoskeletal-paininjury-in-adults-facet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-humerus---primary/output
  musculoskeletal-paininjury-in-adults-acquired---primary:
    run: musculoskeletal-paininjury-in-adults-acquired---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-facet---primary/output
  musculoskeletal-paininjury-in-adults-rotator---primary:
    run: musculoskeletal-paininjury-in-adults-rotator---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-acquired---primary/output
  musculoskeletal-paininjury-in-adults-olecranon---primary:
    run: musculoskeletal-paininjury-in-adults-olecranon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-rotator---primary/output
  musculoskeletal-paininjury-in-adults-osteophyte---primary:
    run: musculoskeletal-paininjury-in-adults-osteophyte---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-olecranon---primary/output
  musculoskeletal-paininjury-in-adults-patella---primary:
    run: musculoskeletal-paininjury-in-adults-patella---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-osteophyte---primary/output
  musculoskeletal-paininjury-in-adults-thickness---primary:
    run: musculoskeletal-paininjury-in-adults-thickness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-patella---primary/output
  musculoskeletal-paininjury-in-adults-sciatica---primary:
    run: musculoskeletal-paininjury-in-adults-sciatica---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-thickness---primary/output
  musculoskeletal-paininjury-in-adults-bicep---primary:
    run: musculoskeletal-paininjury-in-adults-bicep---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-sciatica---primary/output
  musculoskeletal-paininjury-in-adults-clavicle---primary:
    run: musculoskeletal-paininjury-in-adults-clavicle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-bicep---primary/output
  musculoskeletal-paininjury-in-adults-spondylolisthesis---primary:
    run: musculoskeletal-paininjury-in-adults-spondylolisthesis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-clavicle---primary/output
  bimalleolar-musculoskeletal-paininjury-in-adults---primary:
    run: bimalleolar-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-spondylolisthesis---primary/output
  musculoskeletal-paininjury-in-adults-system---primary:
    run: musculoskeletal-paininjury-in-adults-system---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: bimalleolar-musculoskeletal-paininjury-in-adults---primary/output
  metatarsophalangeal-musculoskeletal-paininjury-in-adults---primary:
    run: metatarsophalangeal-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-system---primary/output
  musculoskeletal-paininjury-in-adults-wedge---primary:
    run: musculoskeletal-paininjury-in-adults-wedge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: metatarsophalangeal-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-piriformis---primary:
    run: musculoskeletal-paininjury-in-adults-piriformis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-wedge---primary/output
  musculoskeletal-paininjury-in-adults-finger---primary:
    run: musculoskeletal-paininjury-in-adults-finger---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-piriformis---primary/output
  acetabular-musculoskeletal-paininjury-in-adults---primary:
    run: acetabular-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-finger---primary/output
  musculoskeletal-paininjury-in-adults-shoulder---primary:
    run: musculoskeletal-paininjury-in-adults-shoulder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: acetabular-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-greenstick---primary:
    run: musculoskeletal-paininjury-in-adults-greenstick---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-shoulder---primary/output
  musculoskeletal-paininjury-in-adults-ligament---primary:
    run: musculoskeletal-paininjury-in-adults-ligament---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-greenstick---primary/output
  musculoskeletal-paininjury-in-adults-radius---primary:
    run: musculoskeletal-paininjury-in-adults-radius---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-ligament---primary/output
  musculoskeletal-paininjury-in-adults-epicondylitis---primary:
    run: musculoskeletal-paininjury-in-adults-epicondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-radius---primary/output
  musculoskeletal-paininjury-in-adults-stenosis---primary:
    run: musculoskeletal-paininjury-in-adults-stenosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-epicondylitis---primary/output
  upper-musculoskeletal-paininjury-in-adults---primary:
    run: upper-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-stenosis---primary/output
  musculoskeletal-paininjury-in-adults-achille---primary:
    run: musculoskeletal-paininjury-in-adults-achille---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: upper-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-degeneration---primary:
    run: musculoskeletal-paininjury-in-adults-degeneration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-achille---primary/output
  musculoskeletal-paininjury-in-adults-movement---primary:
    run: musculoskeletal-paininjury-in-adults-movement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-degeneration---primary/output
  musculoskeletal-paininjury-in-adults-cramp---primary:
    run: musculoskeletal-paininjury-in-adults-cramp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-movement---primary/output
  musculoskeletal-paininjury-in-adults-elbow---primary:
    run: musculoskeletal-paininjury-in-adults-elbow---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-cramp---primary/output
  musculoskeletal-paininjury-in-adults-hypermobility---primary:
    run: musculoskeletal-paininjury-in-adults-hypermobility---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-elbow---primary/output
  calcific-musculoskeletal-paininjury-in-adults---primary:
    run: calcific-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-hypermobility---primary/output
  musculoskeletal-paininjury-in-adults-capsulitis---primary:
    run: musculoskeletal-paininjury-in-adults-capsulitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: calcific-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-prolapsed---primary:
    run: musculoskeletal-paininjury-in-adults-prolapsed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-capsulitis---primary/output
  musculoskeletal-paininjury-in-adults-pelvi---primary:
    run: musculoskeletal-paininjury-in-adults-pelvi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-prolapsed---primary/output
  multiple-musculoskeletal-paininjury-in-adults---primary:
    run: multiple-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-pelvi---primary/output
  radiculopathy-musculoskeletal-paininjury-in-adults---primary:
    run: radiculopathy-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: multiple-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-extremity---primary:
    run: musculoskeletal-paininjury-in-adults-extremity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: radiculopathy-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-baker---primary:
    run: musculoskeletal-paininjury-in-adults-baker---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-extremity---primary/output
  lower-musculoskeletal-paininjury-in-adults---primary:
    run: lower-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-baker---primary/output
  musculoskeletal-paininjury-in-adults-salterharris---primary:
    run: musculoskeletal-paininjury-in-adults-salterharris---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: lower-musculoskeletal-paininjury-in-adults---primary/output
  chronic-musculoskeletal-paininjury-in-adults---primary:
    run: chronic-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-salterharris---primary/output
  musculoskeletal-paininjury-in-adults-anterior---primary:
    run: musculoskeletal-paininjury-in-adults-anterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: chronic-musculoskeletal-paininjury-in-adults---primary/output
  enthesopathy-musculoskeletal-paininjury-in-adults---primary:
    run: enthesopathy-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-anterior---primary/output
  musculoskeletal-paininjury-in-adults-suspected---primary:
    run: musculoskeletal-paininjury-in-adults-suspected---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: enthesopathy-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-posterior---primary:
    run: musculoskeletal-paininjury-in-adults-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-suspected---primary/output
  musculoskeletal-paininjury-in-adults-tissue---primary:
    run: musculoskeletal-paininjury-in-adults-tissue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-posterior---primary/output
  musculoskeletal-paininjury-in-adults-rhabdomyolysis---primary:
    run: musculoskeletal-paininjury-in-adults-rhabdomyolysis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-tissue---primary/output
  recurrent-musculoskeletal-paininjury-in-adults---primary:
    run: recurrent-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-rhabdomyolysis---primary/output
  styloid-musculoskeletal-paininjury-in-adults---primary:
    run: styloid-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: recurrent-musculoskeletal-paininjury-in-adults---primary/output
  great-musculoskeletal-paininjury-in-adults---primary:
    run: great-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: styloid-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-rupture---primary:
    run: musculoskeletal-paininjury-in-adults-rupture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: great-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-pubis---primary:
    run: musculoskeletal-paininjury-in-adults-pubis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-rupture---primary/output
  musculoskeletal-paininjury-in-adults-foot---primary:
    run: musculoskeletal-paininjury-in-adults-foot---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-pubis---primary/output
  musculoskeletal-paininjury-in-adults-extensor---primary:
    run: musculoskeletal-paininjury-in-adults-extensor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-foot---primary/output
  musculoskeletal-paininjury-in-adults-planus---primary:
    run: musculoskeletal-paininjury-in-adults-planus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-extensor---primary/output
  musculoskeletal-paininjury-in-adults-generalised---primary:
    run: musculoskeletal-paininjury-in-adults-generalised---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-planus---primary/output
  musculoskeletal-paininjury-in-adults-meniscu---primary:
    run: musculoskeletal-paininjury-in-adults-meniscu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-generalised---primary/output
  musculoskeletal-paininjury-in-adults-unspecified---primary:
    run: musculoskeletal-paininjury-in-adults-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-meniscu---primary/output
  injury---primary:
    run: injury---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-unspecified---primary/output
  musculoskeletal-paininjury-in-adults-spasm---primary:
    run: musculoskeletal-paininjury-in-adults-spasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: injury---primary/output
  musculoskeletal-paininjury-in-adults-cruciate---primary:
    run: musculoskeletal-paininjury-in-adults-cruciate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-spasm---primary/output
  lumbosacral-musculoskeletal-paininjury-in-adults---primary:
    run: lumbosacral-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-cruciate---primary/output
  trochanteric-musculoskeletal-paininjury-in-adults---primary:
    run: trochanteric-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: lumbosacral-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-arthralgia---primary:
    run: musculoskeletal-paininjury-in-adults-arthralgia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: trochanteric-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-sprain---primary:
    run: musculoskeletal-paininjury-in-adults-sprain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-arthralgia---primary/output
  musculoskeletal-paininjury-in-adults-exostosis---primary:
    run: musculoskeletal-paininjury-in-adults-exostosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-sprain---primary/output
  partial-musculoskeletal-paininjury-in-adults---primary:
    run: partial-musculoskeletal-paininjury-in-adults---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-exostosis---primary/output
  musculoskeletal-paininjury-in-adults-fibromyalgia---primary:
    run: musculoskeletal-paininjury-in-adults-fibromyalgia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: partial-musculoskeletal-paininjury-in-adults---primary/output
  musculoskeletal-paininjury-in-adults-tendinitis---primary:
    run: musculoskeletal-paininjury-in-adults-tendinitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-fibromyalgia---primary/output
  musculoskeletal-paininjury-in-adults-supraspinatus---primary:
    run: musculoskeletal-paininjury-in-adults-supraspinatus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-tendinitis---primary/output
  musculoskeletal-paininjury-in-adults-abdomen---primary:
    run: musculoskeletal-paininjury-in-adults-abdomen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-supraspinatus---primary/output
  musculoskeletal-paininjury-in-adults-leg---primary:
    run: musculoskeletal-paininjury-in-adults-leg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-abdomen---primary/output
  musculoskeletal-paininjury-in-adults-hand---primary:
    run: musculoskeletal-paininjury-in-adults-hand---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-leg---primary/output
  musculoskeletal-paininjury-in-adults-knee---primary:
    run: musculoskeletal-paininjury-in-adults-knee---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-hand---primary/output
  musculoskeletal-paininjury-in-adults-trunk---primary:
    run: musculoskeletal-paininjury-in-adults-trunk---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-knee---primary/output
  musculoskeletal-paininjury-in-adults-toe---primary:
    run: musculoskeletal-paininjury-in-adults-toe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-trunk---primary/output
  musculoskeletal-paininjury-in-adults-spine---primary:
    run: musculoskeletal-paininjury-in-adults-spine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-toe---primary/output
  musculoskeletal-paininjury-in-adults-chest---primary:
    run: musculoskeletal-paininjury-in-adults-chest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-spine---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: musculoskeletal-paininjury-in-adults-chest---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
