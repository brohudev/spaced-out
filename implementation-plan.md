# Asteroid Mining Simulator: Implementation Plan

## Week 1-2: Asteroid Mapper (Feb 12)

- [x] Set up Python environment with Skyfield
	- [x] **Ensure Python is installed** (Python 3.8 or later is recommended)
	- [x] **Create a dedicated project folder** (e.g., `spaced_out_project`)
	- [x]  **Create a virtual environment** within that folder using Python’s `venv` module
	- [x]  **Activate the virtual environment** (this ensures your packages don’t interfere with other projects)
	- [x]  **Install Skyfield and its dependencies** via `pip install skyfield`
	- [x]  **Verify the installation** by importing Skyfield in a simple test script
- [x] add testing framework for python
- [x] Create CLI tool to fetch asteroid data
- [ ] Implement asteroid spec calculation (size, orbit, type)
	- [ ] ?
- [ ] Set up Docker container
	- [ ] create the files
	- [ ] set them up to serve the microservice as required (the only service for nowww)
- [ ] Deploy to AWS Lambda
	- [ ] ?
- [ ] Basic error handling and logging
	- [ ] ?

## Week 3-4: Mining Simulator (Feb 26)

- [ ] Implement optical mining model in Python
- [ ] Set up heat/energy calculations
- [ ] Create real-time ore tracking system
- [ ] Set up Redis for data storage
- [ ] Deploy Lambda function for mining calculations
- [ ] Implement basic user interface for mining controls

## Week 5-6: Economic Model (Mar 12)

- [ ] Set up connection to LME API for price data
- [ ] Implement Monte Carlo simulations in Rust
- [ ] Create dynamic pricing model
- [ ] Develop basic market interface
- [ ] Set up EC2 spot instances
- [ ] Implement multi-user support for shared asteroid resources

## Week 7-8: API Layer and Integration (Mar 26)

- [ ] Set up FastAPI framework
- [ ] Create endpoints for asteroid data
- [ ] Create endpoints for market prices
- [ ] Implement user authentication
- [ ] Deploy to ECS Fargate
- [ ] Integrate API with frontend components

## Bonus Features (Time Permitting)

- [ ] Implement leaderboard system
- [ ] Add more complex mining techniques
- [ ] Create visualization for asteroid map
- [ ] Implement real-time multiplayer features
