FROM postgis/postgis

# Update and install dependencies
RUN apt-get update && apt-get install -y wget osm2pgsql python3-pip

# Copy the default.style file needed for osm2pgsql
COPY default.style /usr/bin/

# Download the OpenStreetMap data
RUN wget -O /tmp/zurich-latest.osm.pbf https://download.openstreetmap.fr/extracts/europe/switzerland/zurich-latest.osm.pbf
