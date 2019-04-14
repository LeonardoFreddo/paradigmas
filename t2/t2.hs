
import Text.Printf

type Point (Float, Float)
-- x, y
type Rect (Point, Float, Float)
--point, width, height
type Circle (Point, Float)
--point, radius










-- SVG Functions

svgRect :: Rect -> String -> String
svgRect ((x, y), w, h) style = printf "<rect x='%.3f' y='%.3f' width='%.2f' height='%.2f' style='%s' />\n" x y w h style

svgCirc :: Circle -> String -> String
svgCirc ((x, y), r) style = printf "<circle cx='%.3f' cy='.3f' />" 

svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h

svgEnd :: String
svgEnd = "</svg>"



genCase1 :: IO()
genCase1 = writeFile "case1.svg" svgstrs
    where
        svgstrs = svgBegin w h

main = do
    genCase1



