from skyfield.api import load

# Step 1: Load the timescale and get the current time
ts = load.timescale()
t = ts.now()

# Step 2: Load the planetary ephemeris file (DE421)
planets = load('de421.bsp')
earth, mars = planets['earth'], planets['mars']

# Step 3: Compute the position of Mars as seen from Earth
astrometric = earth.at(t).observe(mars)
ra, dec, distance = astrometric.radec()

# Step 4: Print results
print("Right Ascension (RA):", ra)
print("Declination (Dec):", dec)
print("Distance from Earth to Mars:", distance.au, "AU")