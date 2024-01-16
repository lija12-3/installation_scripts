
# Set Maven version
MAVEN_VERSION="3.9.6"

# Set installation directory
MAVEN_HOME="/opt/maven"

# Define Maven download URL
MAVEN_URL="https://dlcdn.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz"

# Create Maven installation directory
sudo mkdir -p ${MAVEN_HOME}

# Download Maven
sudo curl -fsSL ${MAVEN_URL} -o /tmp/apache-maven.tar.gz

# Extract Maven
sudo tar -xzf /tmp/apache-maven.tar.gz -C ${MAVEN_HOME} --strip-components=1

# Add Maven bin directory to PATH
echo "export PATH=${MAVEN_HOME}/bin:${PATH}" >> ~/.bashrc

# Source the updated bashrc
source ~/.bashrc

# Clean up
rm /tmp/apache-maven.tar.gz


# Display Maven version
mvn -v
