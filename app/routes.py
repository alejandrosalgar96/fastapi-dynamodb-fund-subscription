from fastapi import APIRouter

from app.schemas import TransactionCreate
from app.services import get_funds, get_transactions, subscribe_to_fund

router = APIRouter()


@router.get("/funds")
async def list_funds():
    return get_funds()


@router.post("/subscribe")
async def subscribe_fund(transaction: TransactionCreate):
    transaction_record = subscribe_to_fund(transaction)
    return {"message": "Subscription successful", "transaction": transaction_record}


@router.get("/transactions/{client_id}")
async def list_transactions(client_id: str):
    return get_transactions(client_id)
