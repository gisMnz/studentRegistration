#!/usr/bin/python
# -*- coding: UTF-8 -*-
"""
| *Project:*         | DTx                          |
| *Module:*          | TestLibrary                  |
| *Description:*     | Low Level Keywords in Python |
| *Version:*         | 1.0.0                        |
| *Developer:*       | Eunice Pombo                 |
| *Date*             | 04-05-2020                   |
| *Pre-requirements* | see classes.py               |
_Copyright 2019 Altran_
"""
############################
### --- IMPORTATIONS --- ###
############################



import os
from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import keyword
from robot.api import logger


built_in = BuiltIn()
try:
    output_dir = built_in.get_variable_value('${OUTPUT DIR}')
except:
    output_dir = os.getcwd()


@keyword("Remove Old Log Prints")
def remove_files(extension):
    log_folder = output_dir     #Isola o valor da variável
    files = os.listdir(log_folder)
    for item in files:
        if item.endswith(extension):
            os.remove(os.path.join(log_folder, item))
            logger.info("File removed: " + str(os.path.join(log_folder, item)))