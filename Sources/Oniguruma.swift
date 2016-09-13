import COniguruma

struct Oniguruma {
  public static func initialize() {

    guard isInitialized else {
      return
    }

    withUnsafeMutablePointer(to: &OnigEncodingUTF8) { (utf8: OnigEncoding) in
      withUnsafeMutablePointer(to: &OnigEncodingUTF16_LE) { (utf16: OnigEncoding) in
        withUnsafeMutablePointer(to: &OnigEncodingASCII) { (ascii: OnigEncoding) in
          var parray = [utf8, utf16, ascii]
          onig_initialize(parray, 3)
        }
      }
    }
  }

  static public var isInitialized: Bool {
    return _isInitialized
  }

  static private var _isInitialized: Bool = false
}
