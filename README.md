# Pre-Entregable-DockerFile
# Entorno Virtual
python -m venv venv
source venv/Scripts/activate  

# Requirements
pip install -r dependencies/requirements.txt  
python.exe -m pip install --upgrade pip

# Definición de variables Airflow
AIRFLOW_VERSION=2.10.0  
PYTHON_VERSION="$(python -c 'import sys; print(f"{sys.version_info.major}.{sys.version_info.minor}")')"  
CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"  

# Instalación de Airflow  
pip install "apache-airflow==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"  