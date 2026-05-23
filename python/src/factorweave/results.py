"""Thin list wrapper that grows .to_pandas() / .to_polars() / .to_dicts()."""
from __future__ import annotations
from typing import Any, Iterable, List


class Rows(list):
    """A list of dicts with optional pandas/polars adapters.

    Returned by methods that yield tabular data (features history, top-N,
    label series, etc.). It IS a list — iterate / index it normally.
    """

    def to_dicts(self) -> List[dict]:
        return list(self)

    def to_pandas(self):
        try:
            import pandas as pd
        except ImportError as e:  # pragma: no cover
            raise RuntimeError("pandas not installed — `pip install factorweave[pandas]`") from e
        return pd.DataFrame(list(self))

    def to_polars(self):
        try:
            import polars as pl
        except ImportError as e:  # pragma: no cover
            raise RuntimeError("polars not installed — `pip install factorweave[polars]`") from e
        return pl.DataFrame(list(self))

    @classmethod
    def of(cls, items: Iterable[Any]) -> "Rows":
        return cls(list(items))
