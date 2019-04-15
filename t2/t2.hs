import Text.Printf




type Point  = (Float, Float)
-- x, y
type Rect   = (Point, Float, Float)
-- point, width, height
type Circle = (Point, Float)
-- point, radius



-- palettes

--rgbPalette

--greenPallete :: Int -> Int -> [(Int, Int, Int)]
--greenPallete n_col n_lin = 




-- generate case figures

--genRectsCase1 :: Int -> Int -> [Rect]
--genRectsCase1 n_col n_lin =  


genCirclesCase2 :: [Circle]
genCirclesCase2 = [(((radius*(cos x) + cx) , (radius*(sin x) + cy)),10) | x <- [x*(pi/180) | x <- [0,30..330]]]
    where
        radius = 100
        cx = 150
        cy = 150


genCirclesCase3 :: Int -> [Circle]
genCirclesCase3 col = xs 
    where
        lis = (take (col*3) $ cycle xs)
        xs = [( ((radius*(cos x) + cx), (radius*(sin x) + cy) ), rad) | x <- [y*(pi/180) | y <- [0,120,240]]]
        rad = 50
        radius = 40
        cx = 100
        cy = 100
        gap = 20


-- SVG Functions

svgRect :: Rect -> String -> String
svgRect ((x, y), w, h) style = printf "<rect x='%.3f' y='%.3f' width='%.2f' height='%.2f' style=%s />\n" x y w h style

svgCirc :: Circle -> String -> String
svgCirc ((x, y), r) style = printf "<circle cx='%.3f' cy='%.3f' r='%.3f' style='%s' />\n" x y r style 

svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h

svgEnd :: String
svgEnd = "</svg>"

svgStyle :: (Int, Int, Int) -> String
svgStyle (r, g, b) = printf "fill:rgb(%d,%d,%d); mix-blend-mode: screen;" r g b

svgElements :: (a -> String -> String) -> [a] -> [String] -> String
svgElements func elements styles = concat $ zipWith func elements styles




--genCase1 :: IO()
--genCase1 = writeFile "case1.svg" svgstrs
--    where
--        svgstrs = svgBegin w h ++ svgfigs ++ svgEnd
--        svgfigs = svgElements svgRect rects (map svgStyle palette)
--        rects = genRectsCase1 n_col n_lin
--        n_col = 10
--        n_lin = 5
--        (w,h) = (1500,500)

genCase2 :: IO()
genCase2 = writeFile "case2.svg" $ svgstrs
    where
        svgstrs = svgBegin w h ++ svgfigs ++ svgEnd
        svgfigs = svgElements svgCirc circles (map svgStyle palette)
        palette = take n_circles $ cycle [(0,0,0)]
        n_circles = 12
        circles = genCirclesCase2
        (w,h) = (1500,500)

genCase3 :: IO()
genCase3 = writeFile "case3.svg" $ svgstrs
    where
        svgstrs = svgBegin w h ++ svgfigs ++ svgEnd
        svgfigs = svgElements svgCirc circles (map svgStyle palette)
        circles = genCirclesCase3 col
        palette = take col $ cycle [(255,0,0),(0,255,0),(0,0,255)]
        col = 3
        (w,h) = (1500,500)


main = do
    genCase2



