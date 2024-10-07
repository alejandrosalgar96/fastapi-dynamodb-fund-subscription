from pydantic import BaseModel


class FundCreate(BaseModel):
    name: str
    min_amount: float
    category: str


class TransactionCreate(BaseModel):
    client_id: str
    fund_id: str
    transaction_type: str
    amount: float
