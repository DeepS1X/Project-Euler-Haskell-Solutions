import Data.List
import System.IO

listOfNumsDivisBy3Or5 x = sum[x | x <- x, (mod x 5 == 0 || mod x 3 == 0)]