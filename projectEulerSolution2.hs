import Data.List
import System.IO
import Data.Fixed
import Data.Bits

underWhat :: Double
underWhat = 4000000

fib :: [Double]
fib = 1 : 1 : [x + y | (x,y) <- zip fib (tail fib)]

filterEven :: Double -> Double
filterEven x = 
    if mod' x 2 == 0
        then x
        else 0

mapSolution :: [Double]
mapSolution = map (filterEven) $ takeWhile (<=underWhat) fib

endFunc = sum(mapSolution)
main = do
    putStrLn $ show endFunc
