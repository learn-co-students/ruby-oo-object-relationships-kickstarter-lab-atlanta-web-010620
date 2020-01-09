class Project 
    attr_reader :title 
    def initialize(title) 
        @title = title 
        @my_backers = []
    end

    def add_backer(backer) 
        a = ProjectBacker.new(self,backer)
        @my_backers << backer
    end

    def backers
        @my_backers
    end
end 