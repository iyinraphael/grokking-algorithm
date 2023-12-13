# Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.

# Each letter in magazine can only be used once in ransomNote.

def canConstruct(ransomNote: str, magazine: str) -> bool:
    dict1 = {"ransonNote" : ransomNote}
    dict2 = {"magazine" : magazine}

    return dict1["ransonNote"] in dict2["magazine"]