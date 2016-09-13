import COniguruma

extension Regex {
  public struct Options: OptionSet {
    public var rawValue: UInt32

    public init(rawValue: UInt32) {
      self.rawValue = rawValue
    }

    static let None                = Regex.Options(rawValue: ONIG_OPTION_NONE)
    static let IgnoreCase          = Regex.Options(rawValue: ONIG_OPTION_IGNORECASE)
    static let Extend              = Regex.Options(rawValue: IgnoreCase.rawValue << 1)
    static let Multiline           = Regex.Options(rawValue: Extend.rawValue << 1)
    static let Singleline          = Regex.Options(rawValue: Multiline.rawValue << 1)
    static let FindLongest         = Regex.Options(rawValue: Singleline.rawValue << 1)
    static let FindLongestNotEmpty = Regex.Options(rawValue: FindLongest.rawValue << 1)
    static let NegateSingleline    = Regex.Options(rawValue: FindLongestNotEmpty.rawValue << 1)
    static let DontCaptureGroup    = Regex.Options(rawValue: NegateSingleline.rawValue << 1)
    static let CaptureGroup        = Regex.Options(rawValue: DontCaptureGroup.rawValue << 1)
    static let NotBOL              = Regex.Options(rawValue: CaptureGroup.rawValue << 1)
    static let NotEOL              = Regex.Options(rawValue: NotBOL.rawValue << 1)
    static let POSIXRegion         = Regex.Options(rawValue: NotEOL.rawValue << 1)

    static let Default             = Regex.Options.None
  }
}
