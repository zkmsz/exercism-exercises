class LogLineParser
  def initialize(line)
    @line = line.strip.split(":")
  end

  def message
    @line[1].strip
  end

  def log_level
    @line[0].downcase.gsub(/\[|\]/, "")
  end

  def reformat
    "#{message} (#{log_level})"
  end
end