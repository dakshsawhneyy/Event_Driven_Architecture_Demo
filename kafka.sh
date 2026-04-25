# Create virtual environment
python3 -m venv .venv
pip install --upgrade pip

# Install dependencies
pip install -e .

docker compose up -d

# Create topic
python3 examples/live_topic_setup.py --topic order-events-live

# Producer
python3 examples/live_producer.py --topic order-events-live --interval 1

# Consumer
python3 examples/live_topic_setup.py --topic order-events-live
