#!/usr/bin/env python3

"""
Python function that lists all documents
in a collection
"""


def list_all(mongo_collection):
    """
    Return an empty list
    if no document in the collection
    """
    doc_list = []

    for doc in mongo_collection.find():
        if doc:
            doc_list.append(doc)
    return doc_list
