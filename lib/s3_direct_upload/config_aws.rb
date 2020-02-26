require "singleton"

module S3DirectUpload
  class Config
    include Singleton

    ATTRIBUTES = [:bucket, :prefix_to_clean, :region, :url]

    attr_accessor *ATTRIBUTES
  end

  def self.config
    if block_given?
      yield Config.instance
    end
    Config.instance
  end
end
