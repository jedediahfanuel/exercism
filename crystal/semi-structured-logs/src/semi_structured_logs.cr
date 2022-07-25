module SemiStructuredLog
  enum LogLevel
    Info
    Warning
    Error
    Debug
  end
  
  def self.log_v(level : LogLevel, message) : String
    case level
    when .info?    then info(message)
    when .warning? then warn(message)
    when .error?   then error(message)
    else           "[#{level.to_s.upcase}]: #{message}"
    end
  end
  
  def self.log(level : LogLevel, message) : String
    LogLevel.valid?(level) ? "[#{level.to_s.upcase}]: #{message}" : "[UNKNOWN]: #{message}"
  end
  
  def self.info(message) : String
    "[INFO]: #{message}"
  end
  
  def self.warn(message) : String
    "[WARNING]: #{message}"
  end
  
  def self.error(message) : String
    "[ERROR]: #{message}"
  end
end
