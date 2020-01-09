class ProjectBacker 
    def initialize(project,backer)
        @project = project
        @backer = backer 
        @@all << self
    end 
    attr_reader :backer, :project
    
    # class variables 
    @@all = []
    # class methods 
    def self.all 
        @@all 
    end 
end