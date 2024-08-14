#!/usr/bin/env python3

"""
Python function that changes
all topics of a school
document based on the name"""


def update_topics(mongo_collection, name, topics):
    """
    changes the list of topics approached
    in the school based on the names"""
    mongo_collection.upadte_many(
        {"name": name},
        {"$set": {"topics": topics}}
    )
