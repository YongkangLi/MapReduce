#!/usr/bin/python

import sys

# Create a dictionary to map words to counts
wordcount = {}


def hash(s):
    hash_value = 0
    for c in s:
        hash_value *= 128
        hash_value += ord(c)
        hash_value %= 3
    return hash_value


if __name__ == "__main__":
    # Get input from stdin
    for line in sys.stdin:
        # Remove spaces from beginning and end of the line
        line = line.strip()

        # parse the input from mapper.py
        word, count = line.split('\t', 1)
        # convert count (currently a string) to int
        try:
            count = int(count)
        except ValueError:
            continue

        try:
            wordcount[word] = wordcount[word] + count
        except:
            wordcount[word] = count

    f0 = open((sys.argv)[1], "w")
    f1 = open((sys.argv)[2], "w")
    f2 = open((sys.argv)[3], "w")

    for word in wordcount.keys():
        hash_value = hash(word)
        if hash_value == 0:
            f0.write('%s\t%s\n' % (word, wordcount[word]))
        elif hash_value == 1:
            f1.write('%s\t%s\n' % (word, wordcount[word]))
        elif hash_value == 2:
            f2.write('%s\t%s\n' % (word, wordcount[word]))
