from typing import Optional

from pydantic import BaseModel


class Fund(BaseModel):
    id: str
    name: str
    min_amount: float
    category: str


class Transaction(BaseModel):
    id: Optional[str] = None
    client_id: str
    fund_id: str
    transaction_type: str  # 'subscription' or 'cancellation'
    amount: float
