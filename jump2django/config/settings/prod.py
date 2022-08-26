from .base import *

ALLOWED_HOSTS = ['localhost']
STATIC_ROOT = BASE_DIR / 'static/'
STATICFILES_DIRS = []  # to prevent STATIC_ROOT be in _DIRS at base.py
DEBUG = False