module SemiStructuredLog
  enum LogLevel
    Info
    Warning
    Error
  end
  
  def self.log(level : LogLevel, message) : String
    case level
    when LogLevel::Info    then info(message)
    when LogLevel::Warning then warn(message)
    when LogLevel::Error   then error(message)
    else                   "[#{level}]: #{message}"
    end
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
