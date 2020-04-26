# coding: utf-8
from __future__ import absolute_import
from __future__ import division
from __future__ import print_function
from __future__ import unicode_literals

import logging.config
import os
import sys

if not hasattr(sys.modules[__name__], '__file__'):
    __file__ = '/root/recognition/recognition/app/common/driver.py'

cur_path = os.path.abspath(os.path.dirname(__file__))
PROJECT_ROOT_PATH = os.path.abspath(os.path.join(os.path.dirname(__file__), '../../../'))
LOG_CONF_PATH = '../../conf/log.conf'

ori_path = os.getcwd()
os.chdir(cur_path)
logging.config.fileConfig(os.path.abspath(LOG_CONF_PATH))
logger = logging.getLogger('root')
os.chdir(ori_path)
