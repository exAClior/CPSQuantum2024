#import "@preview/touying:0.4.2": *
#import "@preview/touying-buaa:0.1.0" as buaa-theme

#let s = buaa-theme.register()

// Global information configuration
#let s = (s.methods.info)(
  self: s,
  title: [CPS Quantum Computing],
  subtitle: [Talk Excerpts],
  author: [Yusheng Zhao],
  date: datetime.today(),
  institution: [HKUST(GZ)],
)

// Extract methods
#let (init, slides) = utils.methods(s)
#show: init

// Extract slide functions
#let (slide, empty-slide, title-slide, outline-slide, new-section-slide, ending-slide) = utils.slides(s)
#show: slides.with()

#outline-slide()

= Correlated Decoding and Algorithmic Fault-Tolerance in Quantum Computing

== Resource Estimation @Beverland2022AssessingRT

#figure( image("pics/resourceestimation.png", width: 80%),caption: [Resource Estimation for Various Application and Hardware Quality.])

== Correlated Decoding @Cain2024CorrelatedDO

- High level idea
#figure(image("pics/correlated_threshold.png",width: 45%), caption: [In Simulation with Correlated Error, threshold is improved from 5.1% to 10.3%])

Correlated Syndrom error: threshold also lowered

- #link("")[Maddie's Talk]

== Algorithmic Fault-Tolerance 

== Summary 

#figure(image("pics/aftsummary.jpg",width: 100%))

= The Ultimate Boundaries of Quantum Causality
Indefinite Causal order used to improve metrology with continuous variable system https://www.nature.com/articles/s41567-023-02046-y 
Indefinite causal order: wasn’t it just a relaxation of the quantum channel between two parties, of-course it could violated some CHSH like inequality (ref Porf Xin Wang’s course) 
Def Indefinite Causal Order: If you cannot represent the process of two parties as a probabilitistic combination of two processes in one where A happens before B and the other otherwise. 
What is the boundary of violation of all possible experiment and all possible order…. 
Quantum mechanics + causal order violates some inequality but not maximal (algebraically) 

= Constant-Overhead Fault-Tolerant Quantum Computing With Reconfigurable Atom Arrays
Connectivity of physical qubits in code limits the number of logical qubit you could represent   https://arxiv.org/abs/0909.5200 
achieve high encoding rates and good code distance scaling 
involves nonlocal operations that require long-range connectivity between qubits 
LDPC code from the product of two classical code (Hypergraph product code 
qLDPC as Quantum Memory, Surface Code for logical gate (why you need to convert to Surface code? because it has space time cost of kd^3 , what about surface code? ) 
https://www.youtube.com/watch?v=5tfj4ArAJa0
https://www.youtube.com/watch?v=rBuKW87xrag 
surface code may be as good a code as you could get https://arxiv.org/abs/0909.5200 if you only allow nearest neighbor connection 
https://arxiv.org/pdf/2308.07915 what kind of error did they consider in qLDPC code simulation? 
= Quantum Computing At the Physical Layer
Weyl Chamber: 
describe locally equivalent two-qubit gates via  KAK decomposition  
Component of XX, YY, ZZ KAK decomposition defines the equivalence class and this 3D vector forms a Weyl Chamber 

- #link("https://arxiv.org/pdf/2109.08158")[Quantum Lego Paper]
- #link("https://ymsc.tsinghua.edu.cn/info/1057/3741.htm")[Online Recoding of Talk]


= Entanglement Renormalization and Tensor Network Representation of Chern Insulator

Can tensor network formalism represent physically interesting materials: eg. free-fermion Chern Insulator 
Chirality and gappedness cannot co-exist in tensor network representation of Chern insulator 
Zipper: separate long-range entangled state from the short range entanglement by some BASIS CHANGE 
Metal’s electron are also “localized”?!?!  https://arxiv.org/abs/2206.11761
Catch: bond dimensino of PEPS grows polynomially as the size of the system. 

= References
#bibliography("refs.bib",style: "american-physics-society")


