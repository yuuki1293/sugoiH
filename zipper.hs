type Name = String
type Data = String
data FSItem = File Name Data | Folder Name [FSItem] deriving (Show)
data FSCrumb = FSCrumb Name [FSItem] [FSItem] deriving (Show)
type FSZipper = (FSItem, [FSCrumb])

fsUp :: FSZipper -> FSZipper
fsUp (item, FSCrumb name ls rs:bs) =
    (Folder name (ls ++ [item] ++ rs), bs)