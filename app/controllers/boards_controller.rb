class BoardsController < ApplicationController
    def index
        @boards = Board.all #全件取得はサーバの負荷が大きい
    end

    def new
        @board = Board.new
    end

    def create
        Board.create(board_params)
    end

    private
        def board_params
            params.require(:board).permit(:name, :title, :body)
        end
end
