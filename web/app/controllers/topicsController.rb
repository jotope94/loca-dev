class TopicsController < ApplicationController
    before_action :set_topic, only: [:show, :edit, :update, :destroy]

    def index
        @topics = Topic.all
    end

    def set_topic
        @topic = Topic.find(params[:id])
    end

    def topic_params
        params.require(:topic).permit(:titulo)
    end

    def show

    end
    
    def new
        @topic = Topic.new
    end

    def create
        @topic = Topic.new(topic_params)
        if @topic.save
            redirect_to topic_url(@topic), notice: "Tópico criado com sucesso"
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit

    end

    def update
        if @topic.update(topic_params)
            redirect_to topic_url(@topic), notice: "Tópico atualizado com sucesso"
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @topic.destroy
        redirect_to topics_url, notice: "Tópico deletado com sucesso"
    end
end