# -*- coding: utf-8 -*-
"""
Created on Tue Oct  3 17:13:57 2017

@author: cgowl_000
"""
import matplotlib as plt 
import numpy as np
import PIL  as im
r = [[1,0],[0,0]]
print(r)
g = [[0,1],[0,0]]
b = [[0,0],[1,0]]

stack = np.dstack((r,b,g))
im.Image(stack)
im.