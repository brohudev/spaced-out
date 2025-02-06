# what do i need? 
- keep track of my project [[knowledge base readme]]
	- problem statement and scoped out solution [[scope and feature list]]
		- phased approach: aka core first the rest later in stages [[Phases - proposed timeline]]
	- do pm work:
		- deadlines, timelines, and higher level tasks with flexibility built in. 
- build out a knowledge base from notes
	- take in literature
	- use it to create an architecture level design
	- turn that into points for pm work
- create project documentation that i can reference and point others to starting in [[overview]]
	- take in both the second brain and the pm station
	- merge the two into technical documentation
	- a close mapping to what each component does
	- a list of references in the literature that show its motivation
	- and a link to what i am chosing to implement.

```
docs/
├── index.md
├── knowledge base/
│   ├── 00 - MOCs/
│   │   ├── Project Architecture MOC.md
│   │   ├── Technical Concepts MOC.md
│   │   └── Research Papers MOC.md
│   ├── 01 - Phases/
│   │   ├── Phase 1 - Foundation Setup/
│   │   ├── Phase 2 - Orbital Mechanics/
│   │   └── ... (other phases)
│   ├── 02 - Technical Components/
│   │   ├── Hardware/
│   │   ├── Software/
│   │   └── SDN/
│   ├── 03 - Concepts/
│   │   ├── Orbital Mechanics/
│   │   └── Distributed Systems/
│   ├── 04 - References/
│   │   ├── Books/
│   │   ├── Papers/
│   │   └── Standards/
│   └── 05 - Development/
│       ├── ADRs/
│       │   └── ... (other ADRs)
│       ├── Testing/
│       └── Meeting Notes/
├── project/
│   ├── hardware/
│   ├── software/
│   └── simulation/
└── proposed timeline.md
  ```
  
2. **Daily Log Structure**
- Use daily notes with template:
```markdown
  ## Today's Progress
  - Worked on [[Zig Serial Protocol]]
  
  ## Blockers
  - Issue with [[Pi Zero Memory Constraints]]
  
  ## Next Steps
  - Review [[SDN Controller Architecture]]
```
- Suggested Note Templates:
3. **Concept Note Template**
```markdown
# {{Title}}

## Definition


## Relation to Project
- Implements: [[Related Component]]
- Affects: [[System Property]]
- Depends on: [[Dependency]]

## References
4. [[Relevant Paper]]
5. [[Implementation Example]]

```

6. **Paper Annotation Template**
```markdown
# {{Paper Title}}

## Key Insights
7. [[Concept A]] implementation strategy
8. [[Performance Metric]] comparison

## Project Applications
- Useful for [[Component X]] design
- Validates [[Approach Y]]

## Follow-up
- Compare with [[Alternative Paper]]
```
## 1. Problem Statement & Scope Definition
### Project Statement
To develop a ground-based distributed satellite network simulation using Raspberry Pi devices that:
- Accurately models satellite communication behaviors and constraints
- Provides a configurable SDN infrastructure for testing various network topologies
- Enables research into satellite network protocols and failure modes
- Creates a scalable platform for future satellite network research
# [[scope and feature list#Project Scope]]
- this details the scope of the project, but you can see a brief summary in the callout...
# [[scope and feature list#Feature List]]
- this details the list of features implemented in the project with a lot more detail...
# [[Phases - proposed timeline]]
- outlines the timeline/phases of the project as outlined by what i project to get done over the next few months...
- TODO: merge this file into one single simple unified file...
# [[resources]]
- should be turned into the index of resources ngl.