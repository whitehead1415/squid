--Cat = Left | Middle | Right



{-
              a row             index with categoricals
          [100, 200, left]     (2, [left, middle, Right])  ->  [100, 200, 1, 0, 0]
encode ::    [String] ->           [(int, [String])]       ->  [String]
-}


--this was just as a reminder on the function syntax
--doubleMe x = x + x





--------------- ok. let's start with something simple. let's just see if we can parse the first part, what i've termed "a row". Actually,
--------------- I belive that's supposed to be a list of lists of Strings, [[String]], so let's do that.




----- so if we take the function syntax example of "doubleMe"...
----- I need more. I'm not sure if I need to specify that we're.... yea, I think I need to specify that it's a list (or lists) coming in. Sucks, because it's hardcoding the type... I think.... do we have to specify it? I don't think that's how it's done when we do the x:xs pattern. OK, let's try it without first.

--flatten xs = bah!! I can't even get past this. arg!! To the book....


--(ok. huge gap in time there. I bought the Learn You a Haskell book. It's about time. I've been thinking I should for a while now.)


{-
--ok. let's give this a whack.
flatten xs
flatten [] = "What!?"
flatten []:x = x       -----    i think this will fail. i have "xs" in the function definition but not x.
flatten x:xs =
-}
-------- no. this is confining it to a list. we can do this with a fold.




flatten xs = foldl (+) xs         --fold left is the one that is safe for infiite lists? (doesn't apply here. just taking advantage of an opportunity to show off something i know.)
                                  -- i'm spending too much time trying to remember things. no more. going to the book/docs as much as i need to.
