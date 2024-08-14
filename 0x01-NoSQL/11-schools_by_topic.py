#!/usr/bin/env python3

"""
Python function that returns
the list of school having
a specific topic"""


def schools_by_topic(mongo_collection, topic):
    """
    returns the list of school having
    a specific topic"""
    doc_list = mongo_collection.find(
        {"topic": topic}
        )
    return [doc for doc in doc_list]
