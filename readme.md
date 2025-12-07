# First-Time Setup

Follow these steps to launch the environment for the first time.



## 1. Install Prerequisites

You need:

- **Docker Desktop** → https://www.docker.com/products/docker-desktop/
- **Python 3.10+**
- **pip**

## 2. Start the Database + pgAdmin

From the project root:

```bash
docker compose up -d
```

Check docker version:

```bash
which docker
```

If it's showing homebrew installation, make sure to update your path:

```bash
export PATH="/Applications/Docker.app/Contents/Resources/bin:$PATH"
source ~/.zshrc
```


## 3. Optionally - Open pgAdmin (web UI)

Go to:

```bash
http://localhost:5050
```

Login:

- **Email:** admin@admin.com
- **Password:** secret

Add a new server:

- **General → Name:** postgres_practice
- **Connection → Host:** host.docker.internal
- **Port:** 5432
- **Database:** practice
- **Username:** postgres
- **Password:** secret

## 4. Install Python requirements

```bash
pip install -r requirements.txt
```

## 5. Run the sample script

```bash
python main.py
```