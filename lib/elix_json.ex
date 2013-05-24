##
## Author: Adam Shannon
##

## The basic idea is to take in a keyword list,
## find the keys, and then recurse down the values
## depending on if they are another list or not.

## It'd be nice to have a method that can recurse
## down and tell us if we have valid json or not.

## Make a parser for reading a json string and building
## the keyword array and then a module for taking
## a keyword array and returning the json string.


# defmodule Json do
#   def toJson(obj) do
#   end
#   def fromJson(obj) do
#   end
# [
#     numbers: 1.0001,
#     booleans: true,
#     strings: "string",
#     nested_objects: [
#         lists: [1,2,3]
#     ]
# ]
#  ## Type Predicates
#   def isKey(obj) do
#     isString(obj)
#   end
#   def isBoolean(obj) do
#   end
#   def isNumber(obj) do
#   end
#   def isString(obj) do
#   end
#   def isObject(obj) do
#   end
#   def isValid(obj) do
#   end
# end
