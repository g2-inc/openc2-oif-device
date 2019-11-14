"""
Locate Target functions
"""
from ..utils import Dispatch, exceptions

Locate = Dispatch("locate")


@Locate.register
def default(*extra_args, **extra_kwargs):
    return exceptions.target_not_implemented()


@Locate.register
def device(act, target=[], args={}, *extra_args, **extra_kwargs):
    return exceptions.not_implemented()
