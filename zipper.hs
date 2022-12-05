type Name = String
type Data = String
data FSItem = File Name Data | Folder Name [FSItem] deriving (Show)