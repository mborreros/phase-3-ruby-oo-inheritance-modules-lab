require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'
require_relative '../lib/concerns/paramable'
require 'pry'

class Song

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@all = []

  # def initialize
  #   self.class.all << self
  # end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

end
