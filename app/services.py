import uuid

import boto3

from app.config import get_funds_table, get_transactions_table
from app.models import Transaction


# Función para insertar los fondos en la tabla DynamoDB
def insert_funds():
    table = get_funds_table()
    funds = [
        {"id": "1", "name": "FPV_BTG_PACTUAL_RECAUDADORA", "min_amount": 75000, "category": "FPV"},
        {"id": "2", "name": "FPV_BTG_PACTUAL_ECOPETROL", "min_amount": 125000, "category": "FPV"},
        {"id": "3", "name": "DEUDAPRIVADA", "min_amount": 50000, "category": "FIC"},
        {"id": "4", "name": "FDO-ACCIONES", "min_amount": 250000, "category": "FIC"},
        {"id": "5", "name": "FPV_BTG_PACTUAL_DINAMICA", "min_amount": 100000, "category": "FPV"},
    ]
    for fund in funds:
        table.put_item(Item=fund)


def get_funds():
    table = get_funds_table()
    response = table.scan()
    return response["Items"]


def subscribe_to_fund(transaction: Transaction):
    table = get_transactions_table()
    transaction_id = str(uuid.uuid4())
    transaction_record = {
        "id": transaction_id,
        "client_id": transaction.client_id,
        "fund_id": transaction.fund_id,
        "transaction_type": transaction.transaction_type,
        "amount": transaction.amount,
    }
    table.put_item(Item=transaction_record)
    return transaction_record


def get_transactions(client_id: str):
    table = get_transactions_table()
    response = table.scan(
        FilterExpression=boto3.dynamodb.conditions.Attr("client_id").eq(client_id)
    )
    return response["Items"]
