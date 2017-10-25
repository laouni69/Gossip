class GossipsController<ApplicationController


def new
	@gossip = Gossip.new


end

def index
	@gossip = Gossip.all
end
def create
	post = Gossip.create(post_params)
	redirect_to gossip_path(post.id)
end


def show
	@gossip = Gossip.find(params[:id])
end

def update

end


def destroy 

end


def edit

end

private
		def post_params
			params.require(:gossips).permit(:anonymous_author, :content)
		end
end
