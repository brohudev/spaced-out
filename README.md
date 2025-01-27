# Spaced Out 🌌

**Spaced Out** is a satellite constellation simulation that runs on Raspberry Pis (and whatever *other* resource constrained hardware you throw at it). 

I wanted to learn the languages and also wanted to brag about having my own satellite constellation *simulation*........ so here i am 🙈

---

## Features 🚀

- **Constellation Simulation**: Simulate a network of satellites in a constellation, from launch to orbit. Watch them work together or fall apart—just like life.
- **Distributed Communications**: Watch satellites send messages, communicate peer-to-peer, and deal with interruptions (space debris, or maybe just space drama).
- **Ground Control Interface**: A mission control dashboard, powered by **Elixir**, to visualize satellite positions, telemetry data, and orbital paths in real-time.
- **Low-Level Space Stuff**: Experience how satellites communicate, track their orbits, and debug any satellite tantrums (yes, they can be sassy).
- **Resource-Constrained**: Built with performance in mind, this project is designed to run on low-power devices like Raspberry Pi 4s and other small-scale embedded systems.

---

## Tech Stack ⚙️

- **Elixir** – For ground control app and satellite telemetry aggregation.
- **Go** – For peer-to-peer satellite communications and network simulation.
- **Zig** – For low-level, high-performance satellite simulation code.
- **Raspberry Pi 4** – Your very own ground station for satellite simulation.
- **Arduino** – Add hardware simulation for satellite behavior and status.
- **Other Pi’s and IoT Devices** – Create a whole space network using whatever hardware you can get your hands on!

---

## Setup 🛠️

1. **Clone the Repo**  
   Start by cloning the project to your machine:

   ```bash
   git clone https://github.com/yourusername/spaced-out.git
   cd spaced-out
   ```

2. **Install Dependencies**  
   Follow the steps for setting up **Elixir**, **Go**, and **Zig** on your system. Each language has its own dependencies, so check out their official docs:
   
   - [Elixir Installation](https://elixir-lang.org/install.html)
   - [Go Installation](https://golang.org/doc/install)
   - [Zig Installation](https://ziglang.org/download/)

3. **Hardware Setup**  
   - Connect your Raspberry Pi and any other IoT devices.
   - Flash Raspberry Pi OS onto an SD card and get your Pi running.
   - (Optional) Set up an Arduino for low-level satellite behavior simulation.

4. **Run the Simulator**  
   Run the simulation by executing the following commands based on your specific setup:

   ```bash
   # For ground control (Elixir):
   mix run ground_control.exs

   # For satellite communication (Go):
   go run satellite_comm.go

   # For satellite simulation (Zig):
   zig run satellite_sim.zig
   ```

---

## How It Works 🛰️

### 1. **Satellites in Space (Raspberry Pis)**  
Each Raspberry Pi represents a "satellite" in the constellation. Satellites send telemetry back to ground control, and can communicate with each other in the simulation. Using Go, we create peer-to-peer communication and simulate satellite health, positions, and errors.

### 2. **Ground Control (Elixir)**  
The Elixir-based mission control app listens to telemetry data and visualizes the constellation in real-time. It also provides a dashboard where you can monitor each satellite’s orbital health and status.

### 3. **Low-Level Performance (Zig)**  
Zig powers the backend of the simulation, optimizing orbital calculations and satellite interactions, keeping everything smooth and high-performance even on embedded devices.

---

## Milestones 🚀

1. **Initial Setup**: Get the basic simulation running with 1 satellite (Pi).
2. **Peer-to-Peer Communication**: Enable satellite-to-satellite communication with Go.
3. **Ground Control Interface**: Build a basic Elixir dashboard for visualizing satellite positions.
4. **Simulating Orbits**: Use Zig to model satellite orbits and handle real-time updates.
5. **Scale Up**: Add multiple satellites and increase the complexity (hello, real constellations!).
6. **Resource Constraints**: Optimize the simulation to run smoothly on low-power devices (Pi, Arduino, etc.).
7. **Make it Pretty**: Enhance the dashboard with cool visualizations. Maybe even add some memes.

---

## Future Features 🌠

- **De-orbit Simulation**: Simulate what happens when satellites fail and re-enter the atmosphere.
- **Satellite Malfunctions**: Add simulation of satellite failures and drama (just like real life).
- **Enhanced Visuals**: 3D orbital paths, fancy telemetry readouts, and more!
- **Space Debris**: Add satellite collisions or debris interference. Space is chaotic, after all.

---

## Contributing 🖖

- Ignore this bit im p sure im the only one no this project ehehehehe

---

## License 📜

This project is licensed MIT! Feel free to fork it, contribute, and make it your own. Just make sure to share the space memes and give credit where it’s due.

---

# Stay Spaced Out 🌌

Enjoy your time in the stars, and don’t forget: space is big, but **Spaced Out** is bigger.

---

How’s that for a meme-packed, fun README?


```├── README.md                  # Project overview and instructions
├── LICENSE                    # Project license
├── docs/                      # Documentation for the project
│   ├── design.md              # System design document
│   ├── milestones.md          # Development milestones
│   ├── architecture.md        # High-level architecture diagram
│   └── troubleshooting.md     # Troubleshooting guide
├── satellites/                # Code for individual satellite nodes
│   ├── zig/                   # Zig-based embedded software
│   │   ├── src/
│   │   │   ├── main.zig       # Main satellite control logic
│   │   │   ├── power.zig      # Power management subsystem
│   │   │   ├── comms.zig      # Communication handling
│   │   │   └── sensors.zig    # Sensor simulation
│   │   └── tests/             # Test cases for Zig modules
├── comms/                     # Communication layer
│   ├── go/                    # Go-based mesh networking system
│   │   ├── main.go            # Entry point for communication service
│   │   ├── protocol.go        # Custom communication protocol implementation
│   │   ├── peer_discovery.go  # Peer-to-peer networking logic
│   │   └── tests/             # Test cases for the communication layer
├── ground_control/            # Ground control system
│   ├── elixir/                # Elixir-based ground control software
│   │   ├── lib/
│   │   │   ├── telemetry/     # Telemetry aggregation modules
│   │   │   ├── visualization/ # Orbit and satellite status visualization
│   │   │   └── commands/      # Satellite command interface
│   │   └── config/            # Configuration files for the Elixir app
├── deployments/               # Deployment configurations
│   ├── docker/                # Docker Compose setup for local testing
│   ├── ansible/               # Ansible playbooks for Pi deployment
│   └── k8s/                   # Kubernetes deployment manifests
├── tests/                     # End-to-end tests
│   ├── e2e_tests.go           # Full system integration tests
│   ├── mock_ground_station.go # Mock ground control for testing satellites
│   └── simulation.zig         # Mock satellite nodes for testing
└── tools/                     # Utility scripts and tools (Revised)
    ├── telemetry_parser.go    # Go-based telemetry parsing
    ├── log_analyzer.go        # Go-based log analysis for debugging
    └── data_visualizer.go     # Go-based data visualization utilities
```
