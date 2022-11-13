data Person = Person String String Int Float String String
    deriving (Show)

firstName :: Person -> String
firstName (Person firstname _ _ _ _ _) = firstname