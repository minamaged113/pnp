FROM ubuntu
RUN apt-get update
RUN apt-get install -y curl git python3 python3-venv python3-pip

# https://github.com/minamaged113/pnp.git
CMD git clone https://github.com/minamaged113/pnp.git np
CMD /np/install.sh
CMD /np/test_containerized.sh