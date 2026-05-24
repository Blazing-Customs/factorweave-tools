"""Factor Weave Python client.

>>> import factorweave as fw
>>> client = fw.Client(api_key="fw_live_...")
>>> client.report_card("AAPL")
"""
from .client import Client
from .errors import (
    FactorWeaveError, AuthError, TierError,
    NotFoundError, RateLimitError, ServerError,
)
from .results import Rows

__all__ = [
    "Client",
    "Rows",
    "FactorWeaveError", "AuthError", "TierError",
    "NotFoundError", "RateLimitError", "ServerError",
]
__version__ = "0.2.0"
