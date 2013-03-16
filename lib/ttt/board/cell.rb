module TTT
  module Board
    class Cell
      attr_accessor :content

      def initialize(args)
        @position = args.fetch(:position)
        @content = '.'
      end

      def players_move(player)
        self.content = player.move
      end
    end
  end
end
