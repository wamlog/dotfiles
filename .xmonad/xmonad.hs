import XMonad
import XMonad.Util.EZConfig
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.DynamicLog

main = xmonad =<< xmobar (docks $ ewmh $ def {
    borderWidth = 3
  , terminal = "gnome-terminal"
  , modMask = mod4Mask
  , layoutHook = avoidStruts $ layoutHook def
  , handleEventHook = handleEventHook def <+> fullscreenEventHook
  } `additionalKeysP` [
      ("M-p", spawn "rofi -show run")
    ]
  )
