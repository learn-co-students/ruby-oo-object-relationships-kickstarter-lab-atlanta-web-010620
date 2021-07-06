class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backer_list = ProjectBacker.all.select{ |pairing| pairing.project == self}
        backer_list.map {|pairing| pairing.backer}
    end
end