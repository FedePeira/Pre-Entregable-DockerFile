# Pre-Entregable-DockerFile
### Entorno Virtual
python -m venv venv
source venv/Scripts/activate  

********************************

### Requirements
pip install -r dependencies/requirements.txt  
python.exe -m pip install --upgrade pip

********************************

### Definición de variables Airflow
export AIRFLOW_VERSION=2.10.0  
export PYTHON_VERSION="$(python -c 'import sys; print(f"{sys.version_info.major}.{sys.version_info.minor}")')"  
export CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"  

********************************

### Instalación de Airflow  
pip install "apache-airflow==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"  

********************************

### Correr Airflow
airflow standalone

********************************

### Mover a carpeta de Directorio en Ubuntu
cd /mnt/d/Fede\ Ort/a.\ Portafolio/Coderhouse\ -\ Data\ Engineer/Pre-Entregable\ DockerFile  

********************************

### Instalar Docker
-- Abrir Terminal de Ubuntu en WSL
docker --version  

sudo apt update  
sudo apt upgrade  

sudo apt install apt-transport-https ca-certificates curl software-properties-common  

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -  

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"  

sudo apt update  

sudo apt install docker-ce  

sudo service docker start  

sudo usermod -aG docker $USER 

********************************

### Correr Docker
docker-compose up

docker-compose up -d  

docker ps  

docker-compose logs airflow-webserver

docker-compose down  

docker-compose run --rm airflow-webserver airflow db init  

********************************

### Error Airflow
--> airflow.api.auth.backend.basic is not found
