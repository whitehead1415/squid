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



{-
flatten xs = foldl (+) xs         --fold left is the one that is safe for infiite lists? (doesn't apply here. just taking advantage of an opportunity to show off something i know.)
                                  -- i'm spending too much time trying to remember things. no more. going to the book/docs as much as i need to.
-}




-- an example from the book
-- maximum' :: (Ord a) => [a] -> a
-- maximum' [] = error "maximum of empty list!"
-- maximum' [x] = x
-- maximum' (x:xs) = max x (maximum' xs)


-- going back to hard coded list. i can do this one. then we'll change to a fold
-- flatten :: (String a) [a] -> [a]                                -- not concerned about putting a type on it right now. concerned about getting some feedback right now.
-- flatten  [] = "Bleh"
-- flatten  [x] = x
-- flatten  (x:xs) = x + " -- " + flatten xs
--- doesn't work. tried a few thing. I don't understand the error message. --   • Expecting two fewer arguments to ‘String’
--                                                                                Expected kind ‘* -> * -> *’, but ‘String’ has kind ‘*’


-- going  back further in the book for an example that has lists of Strings.



------------ it's been a while. I can't find one. No happy. Frustrated. Way harder than I thought. But like the time I tried a real problem in codewars.







--- ok. let's simplify it more.  baby steps.

--doubleMe x = x + x             -- alright. that's pretty much the begining.
                                 -- look at that! it compiles!
                                 -- but it doesn't work if a pass in a String. OK, the string concat operator is ++.
--doubleMe x = x ++ x            -- but this one does.





-- ok. let's do recursion now. let's reverse a list.
myreverse :: [a] -> [a]
myreverse [] = []
myreverse [x] = [x]           -- let's go ahead and stop here and see if what we have so far is right. -- it is :) ok. less frustration, more happiness.
--myreverse x:xs = myreverse [xs]:x        -- that looks right. let's see. -- Argg!
--myreverse x:[xs] = (myreverse [xs]) : x    -- dang it. k, let's look at the book.
-------- parens on the pattern??
myreverse (x:[xs]) = (myreverse [xs]) : x    -- wow. that blew up.
