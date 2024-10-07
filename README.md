# fastapi-dynamodb-fund-subscription
“FastAPI DynamoDB Fund Subscription” es una aplicación backend que permite a los usuarios gestionar sus suscripciones a diversos fondos de inversión. Utiliza FastAPI para crear una API RESTful, DynamoDB como base de datos NoSQL para almacenar la información de los fondos y las suscripciones, y AWS Lambda para ejecutar la aplicación de manera serverless. Este proyecto incluye un pipeline de CI/CD configurado con GitHub Actions que despliega automáticamente la aplicación en AWS utilizando AWS SAM (Serverless Application Model), proporcionando una arquitectura escalable y moderna.”

# Características clave:
API RESTful desarrollada con FastAPI.
DynamoDB como base de datos NoSQL para almacenar los fondos y suscripciones.
Despliegue serverless en AWS Lambda con API Gateway.
Pipeline CI/CD con GitHub Actions para automatización de despliegues.
AWS SAM para gestionar la infraestructura como código.

# Requisitos:
Python 3.11
AWS CLI configurado
GitHub Actions para CI/CD
Uvicorn para servir la API localmente


# Prueba Técnica BTG - Parte 2: Consultas SQL

Este proyecto contiene el script SQL para crear una base de datos que simula la interacción entre clientes, productos, sucursales, y visitas en una plataforma de fondos de inversión. La base de datos está diseñada en PostgreSQL y permite obtener información sobre los clientes que tienen inscrito algún producto disponible solo en las sucursales que han visitado.

## Requisitos

- PostgreSQL instalado en tu sistema.
- Un entorno de línea de comandos para ejecutar las consultas.
- Un cliente de base de datos como [pgAdmin](https://www.pgadmin.org/) o cualquier otra herramienta que prefieras.
