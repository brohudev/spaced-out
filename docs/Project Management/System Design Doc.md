## System Architecture

### Hardware Components
1. Compute Nodes
   - Raspberry Pi 4 units (primary nodes)
   - Raspberry Pi Zero units (lightweight nodes)
   - Arduino Dev Kit (for sensor simulation and I/O)

2. Network Infrastructure
   - Ethernet connections between Pi units
   - SDN switches/virtual networking
   - Potential wireless communications for specific scenarios

### Software Stack
1. Core Components
   - Language Choice:
     - Zig: For low-level system operations and performance-critical components
     - Elixir: For distributed computing and fault tolerance
     - Go: For networking and service coordination
2. System Layers
   - Hardware Abstraction Layer (HAL)
     - Device drivers and hardware interfaces
     - Sensor simulation modules
   - Network Layer
     - SDN controller implementation
     - Network topology management
     - Communication protocols
   - Simulation Layer
     - Satellite behavior models
     - Orbital mechanics calculations
     - Network latency simulation
   - Application Layer
     - Monitoring and visualization
     - Configuration management
     - Data collection and analysis