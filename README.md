# BTG Fondos Backend con DynamoDB

Este proyecto es una API desarrollada en FastAPI para la gestión de fondos usando DynamoDB en AWS.

## Requisitos

- Python 3.8+
- AWS CLI configurado
- Boto3

## Instalación

1. Clona este repositorio
2. Instala las dependencias:

   ```bash
   pip install -r requirements.txt
   
## Ejecución local
1. python -m venv venv
2. venv\Scripts\activate
3. zappa init
4. zappa deploy dev

# Consulta SQL

1. Ver archivo punto2.sql

# Para el get https://g7qhn7xif9.execute-api.us-east-2.amazonaws.com/dev/{id}
# Para el post https://g7qhn7xif9.execute-api.us-east-2.amazonaws.com/dev

{
  "idSuscripcion": int,
  "monto": double,
  "cliente": nvarhcar(256)
}
