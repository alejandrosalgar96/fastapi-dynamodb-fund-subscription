import boto3

session = boto3.Session(region_name="us-east-2", profile_name="prueba")

dynamodb = session.resource("dynamodb")


def get_funds_table():
    return dynamodb.Table("Funds")


def get_transactions_table():
    return dynamodb.Table("Transactions")
