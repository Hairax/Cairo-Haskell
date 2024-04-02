module Main (main) where

import Graphics.Rendering.Cairo
import Graphics.Rendering.Cairo.Types


main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  withImageSurface FormatARGB32 100 100 $ \surface -> do
    renderWith surface $ do
      setSourceRGB 0 0 0
      moveTo 0 0
      lineTo 100 100
      stroke
    surfaceWriteToPNG surface "out.png"
  putStrLn "Goodbye, Haskell!"
