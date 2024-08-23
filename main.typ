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

- Fault-tolerance requires too much resource 
#figure(image("pics/resourceestimation.png", width: 70%),caption: [Resource Estimation for Various Application and Hardware Quality.])

== Correlated Decoding @Cain2024CorrelatedDO

- For transversal entangling gates "errors detected on one logical qubit can contain information about which errors occurred on other logical qubits"
#figure(image("pics/correlated_threshold.png",width: 40%), caption: [In Simulation with Correlated Error, threshold is improved from 5.1% to 10.3%])

- "if we can perform fewer than d rounds between transversal CNOTs, by leveraging the deterministic propagation of stabilizer measurement errors through CNOTs to verify stabilizer measurements using surrounding rounds of syndrome extraction"
- "stabilizer measurement errors near transversal CNOTs generate hyperedges that make conventional decoding approaches challenging"

#figure(image("pics/optimal_senumber.png", width: 50%))

== Algorithmic Fault-Tolerance @Zhou2024AlgorithmicFT

- "a key component of many schemes for achieving universality is magic state teleportation, which crucially relies on the ability to realize feed-forward operations."
- "such feed-forward operations require on-the-fly interpretation of logical measurements, followed by a subsequent conditional gate, when only a subset of the logical qubits have been measured"
- "Surprisingly, we find that these inconsistencies can be accounted for in classical processing, with a reinterpretation of subsequent measurement results"

#figure(image("pics/algorithmic_ft.png"))

== Summary 

#figure(image("pics/aftsummary.jpg",width: 100%))

= Quantum Computing At the Physical Layer 

== Summary @Huang2021QuantumIS
- "a quantum processor with such an instruction set, designing an instruction by replacing iSWAP with its matrix square root SQiSW can both reduce the gate error and improve compilation capabilities substantially" 

- "taking only roughly half of the time of iSWAP, the SQiSW gate is expected to be implemented with much higher fidelity. Moreover, it has superior compilation capabilities than iSWAP in the task of compiling arbitrary two-qubit gates. An iFRB experiment, which can benchmark non-Clifford gates, on our capacitively coupled fluxonium quantum processor shows the gate error is reduced by 41% and the Haar random two-qubit gate error is reduced by 50% compared to iSWAP on the same chip"

- #link("https://ymsc.tsinghua.edu.cn/info/1057/3741.htm")[Online Recoding of Talk]

= The Ultimate Boundaries of Quantum Causality

== Picture

#figure(image("pics/IMG20240819094006.jpg"))
#figure(image("pics/IMG20240819094104.jpg"))
#figure(image("pics/IMG20240819094219.jpg"))
#figure(image("pics/IMG20240819094243.jpg"))
#figure(image("pics/IMG20240819095319.jpg"))
#figure(image("pics/IMG20240819095414.jpg"))
#figure(image("pics/IMG20240819095632.jpg"))

== Notes 
- Indefinite Causal order used to improve metrology with continuous variable system https://www.nature.com/articles/s41567-023-02046-y 
- Indefinite causal order: wasn’t it just a relaxation of the quantum channel between two parties, of-course it could violated some CHSH like inequality (ref Porf Xin Wang’s course) 
- Def Indefinite Causal Order: If you cannot represent the process of two parties as a probabilitistic combination of two processes in one where A happens before B and the other otherwise. 
- What is the boundary of violation of all possible experiment and all possible order…. 
- Quantum mechanics + causal order violates some inequality but not maximal (algebraically) 

= Constant-Overhead Fault-Tolerant Quantum Computing With Reconfigurable Atom Arrays

== Summary
- "Practical implementation of product qLDPC code by (globally) rearranging atoms"
- "High-threshold, constant-space-overhead memory under circuit-level fault-tolerant design"
- "Fault-tolerant commputation via teleportation to topological codes"
- "qLDPC-based FT quantum computer"

== qLDPC is necessary

- For surface code $[[n,k,d]]$, "$n/k = d^2$"
- "Connectivity constrains quantum code" @Bravyi2009TradeoffsFR
- "High-rate qLDPC code: constant space overhead" $[[n,Theta(n),Theta(n^(alpha>=1/2))]]$ @Gottesman2013FaulttolerantQC@PRXQuantum.2.040101@Panteleev2021AsymptoticallyGQ
- Con of qLDPC
  - "requires non-local and complicated connection"
  - "Large code size & low threshold" 
  - #link("https://www.youtube.com/watch?v=5tfj4ArAJa0")[QIP2024 Talk]

== Example of qLDPC code: Hypergraph product Code @Xu2023ConstantoverheadFQ

- "The HGP code is constructed from two classical LDPC codes"
#figure(image("pics/hypergraph_product_code.png", width: 50%))

#figure(image("pics/qldpc_performance.png",width: 50%))

== Logical Operation with qLDPC code @Xu2023ConstantoverheadFQ
- "performingfault-tolerant logical operations and perform the first numerical simulation of logical gate performance on qLDPC codes"
- "We teleport the logical information between the qLDPC memory and ancillary topological codes using a measurement-based circuit"
- "prescribed logical measurements are implemented using lattice surgery"
- "Universal logical operations can then be performed in the topological codes using standard techniques"
- "To use these LDPC codes for quantum computation,
 one must be able to fault-tolerantly implement a universal set of protected logic gates. While Ref. [32] establishes a method to perform quantum computation using faulttolerant gate teleportation [39], the cost associated with the distillation of the requisite resource state [40] is not understood well in the practical regime of interest" @Cohen2021LowoverheadFQ

== Recording of Talk 

- #link("https://www.youtube.com/watch?v=5tfj4ArAJa0")[QIP2024 Talk]
- #link("https://www.youtube.com/watch?v=rBuKW87xrag")[QEC2023 Talk]

= Entanglement Renormalization and Tensor Network Representation of Chern Insulator

== Summary

- Question: Can tensor network formalism represent physically interesting materials: eg. free-fermion Chern Insulator ?
- Chirality and gappedness cannot co-exist in tensor network representation of Chern insulator 
- Zipper: separate long-range entangled state from the short range entanglement by some BASIS CHANGE @Wong2022ZipperER
- Catch: bond dimensino of PEPS grows polynomially as the size of the system. 

== Chern Insulator: the "trouble maker"
- locally describable
  - dressed product states
  - Atomic Insulator
  - Quasi-1D Description (e.g. quantum Hall)
  - ??? non-chiral topological order ... toric code)
- Physically Interesting
  - Chiral states
  - Semi-metals
  - Critical states
  - Metals
  - ...

== Difficulties with Chiral Tensor Networks
- General picture: PEPS with finite bond dimensions can be chiral but @PhysRevLett.111.236805@PhysRevB.92.205307
  - No gapped, local parent Hamiltonian
  - Algebraically decaying correlation (which might approximate the short-range part well)
- No-go proven for free fermions w/ translation invariance  @PhysRevB.92.205307
- Interaction not as rigorously studied but the overall picture still holds @PhysRevLett.114.114301@PhysRevLett.129.177201@Weerda2023FractionalQH 

== Photos

#figure(image("pics/ap1.png",width: 50%))
#figure(image("pics/zipper.png", width:50%))
#figure(image("pics/zipper2.png", width: 50%))
= References
#bibliography("refs.bib",style: "american-physics-society")


