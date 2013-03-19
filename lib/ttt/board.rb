module TTT
  class Board
    def initialize(args)
      cell_factory = args[:cells]
      @cells = cell_factory.cells
    end

    def size
      @cells.size
    end

  end
end
