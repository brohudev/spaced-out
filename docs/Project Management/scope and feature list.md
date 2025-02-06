# Project Scope
- Hardware: Network of Raspberry Pi 4s and Zeros with Arduino integration
- Software: Multi-language implementation (Zig/Elixir/Go)
- Network: SDN-based topology with configurable constraints
- Timeline: 6-8 months for full implementation
- Deliverables: Working simulation system with monitoring and analysis tools
## Core Deliverables
### 1. Basic Constellation Simulation
- Simulation of 4-6 satellites in Low Earth Orbit (LEO)
- Fixed circular orbits with configurable parameters
  - Altitude: 500-1000 km range
  - Basic orbital period calculations
  - Simplified position tracking
- Basic node state management
  - Power state simulation
  - Health monitoring
  - Error state handling
### 2. Distributed Communication System
- Peer-to-peer messaging between satellites
  - Basic store-and-forward capability
  - Simple routing protocol
  - Communication window tracking
- Software-Defined Network (SDN) implementation
  - Virtual network topology
  - Basic bandwidth and latency simulation
  - Link state management
- Error handling and recovery
  - Message retry mechanisms
  - Basic fault tolerance
  - Connection dropout simulation

### 3. Ground Control Interface
- Real-time monitoring dashboard
  - 2D visualization of satellite positions
  - Network topology display
  - Basic telemetry data
- Command and control functionality
  - Individual satellite commands
  - Basic configuration updates
  - Health check operations
- Data logging and analysis
  - Basic telemetry recording
  - Event logging
  - Simple performance metrics

### 4. Hardware Implementation
- Raspberry Pi Network
  - 4-6 Pi devices (mix of Pi 4 and Zero)
  - SDN network configuration
  - Resource monitoring
- Arduino Integration
  - Basic sensor simulation
  - Simple hardware events
  - Status indicators

## Project Boundaries

### In Scope
- Basic orbital mechanics for LEO satellites
- Simple peer-to-peer communication
- Real-time state visualization
- Basic fault simulation and handling
- Performance monitoring and logging

### Out of Scope
- Complex orbital mechanics (no orbital maneuvers)
- Advanced routing protocols
- 3D visualization
- Multiple ground stations
- Detailed physics simulation
- Security implementation
- Inter-constellation communication

## Technical Constraints
- Hardware: Limited to available Pi and Arduino devices
- Network: Local network only
- Performance: Optimized for Pi Zero capabilities
- Storage: Local data storage only
- Visualization: 2D representations only

## Success Criteria
1. Successful simulation of 4+ satellites communicating
2. Demonstrable fault tolerance
3. Working dashboard with real-time updates
4. Basic command and control functionality
5. Documented performance metrics

---
# Feature List

### Hardware Features
1. Physical Interfaces
   - GPIO utilization for status indication
   - Sensor simulation via Arduino
   - Network interface management
   - Debug ports

### Software Features
2. Network Simulation
   - Dynamic topology changes
   - Latency simulation
   - Bandwidth constraints
   - Packet loss simulation
   - Link failures

3. Satellite Behavior
   - Orbital position calculation
   - Line-of-sight determination
   - Communication windows
   - Power state management

4. Management & Monitoring
   - Real-time status dashboard
   - Configuration interface
   - Data logging and export
   - Performance metrics
   - Fault injection capability

---
# //todo: clean this up: Core Constellation Features
### 1. Basic Satellite Functionality
- Individual satellite state management
  - Position tracking
  - Power state (on/off/low-power)
  - Health status monitoring
  - Basic error states
- Simple orbital calculations
  - Circular orbit tracking
  - Fixed altitude maintenance
  - Basic position updates

### 2. Inter-Satellite Communication
- Peer-to-peer messaging system
  - Basic message routing
  - Store-and-forward capability
  - Communication window tracking
- Network topology management
  - Neighbor discovery
  - Link state monitoring
  - Basic routing tables
- Fault handling
  - Message retry logic
  - Connection dropout handling
  - Basic error recovery

### 3. Ground Control Interface
- Real-time monitoring dashboard
  - Satellite position display
  - Network topology visualization
  - Health status indicators
- Command interface
  - Individual satellite control
  - Constellation-wide commands
  - Configuration updates
- Data collection
  - Telemetry logging
  - Performance metrics
  - Event recording

### 4. Hardware Integration
- Raspberry Pi Management
  - Auto-discovery of nodes
  - Resource monitoring
  - Performance optimization
- Network Configuration
  - SDN setup
  - Virtual network mapping
  - Bandwidth control
- Arduino Integration
  - Sensor simulation
  - Hardware event triggers
  - I/O management

### 5. Simulation Features
- Environmental Factors
  - Communication delays
  - Link interruptions
  - Basic orbital perturbations
- Testing Capabilities
  - Fault injection
  - Scenario playback
  - Performance benchmarking
- Data Analysis
  - Basic metrics collection
  - Performance reporting
  - Event correlation

## Optional Enhancement Features
(To be implemented after core features)

### 6. Advanced Orbital Mechanics
- Complex orbit calculations
- Collision avoidance
- Station-keeping maneuvers

### 7. Enhanced Communication
- Dynamic routing
- Quality of Service (QoS)
- Bandwidth optimization

### 8. Extended Ground Control
- 3D visualization
- Historical data analysis
- Advanced command scripting

### 9. System Expansion
- Dynamic node scaling
- Different satellite types
- Multiple ground stations

---
# bruh.