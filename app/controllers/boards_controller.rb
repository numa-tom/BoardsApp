class BoardsController < ApplicationController #継承してコントローラとして機能
    def index
    end
    
    def new
        @board = Board.new
    end

    def create
        Board.create(board_params)
        binding.pry
    end

    private #これ以下がprivate

    def board_params
        params.require(:board).permit(:name, :title, :body)
    end
end