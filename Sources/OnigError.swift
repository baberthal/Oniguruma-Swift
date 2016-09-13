import COniguruma

public struct OnigError: Error {
  public var _code: Int
  internal var err_info: OnigErrorInfo?

  public init() {
    _code = 0
    err_info = nil
  }

  public init(code: Int, info: OnigErrorInfo) {
    _code = code
    err_info = info
  }

  public init(errorInfo: OnigErrorInfo) {
    _code = 0
    err_info = errorInfo
  }

  public init(code: Int) {
    _code = code
    err_info = nil
  }

  public lazy var message: String = {
    if self._code == 0 { return "" }
    return ""
  }()
}

fileprivate func stringFromErrorCode(_ code: Int) -> String {
  return ""
}
