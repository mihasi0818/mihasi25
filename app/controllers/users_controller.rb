class UsersController < ApplicationController
    before_action :set_user, only: %i[ show edit update destroy ]
    before_action :require_user, except: [:new, :create]
    before_action :require_same_user, only: [:edit, :update, :destroy]
    helper_method :current_user

    # GET /users or /users.json
    def index
      @users = User.page(params[:page]).per(3).reverse_order
    end
  
    # GET /users/1 or /users/1.json
    
    def show
      @user = User.find(params[:id])
      @posts = @user.posts.page(params[:page]).reverse_order
    end
  
    # GET /users/new
    def new
      @user = User.new
    end
  
    # GET /users/1/edit
    def edit
    end
  
    # POST /users or /users.json
    def create
      @user = User.new(user_params)
      if @user.save
        @user.send_activation_email
        flash[:notice] = "アカウント有効化メールを送信しました。メールが届きましたら、記載されているリンクをクリックしてアカウントを有効化してください。"
        redirect_to root_url
        # log_in @user
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /users/1 or /users/1.json
    def update
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to user_url(@user), notice: "ユーザーアカウントを編集しました。" }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /users/1 or /users/1.json
    def destroy
      @user.destroy
  
      respond_to do |format|
        format.html { redirect_to users_url, notice: "ユーザーアカウントを削除しました。", status: :see_other }
        format.json { head :no_content }
      end
    end

    def new_guest
      if current_user
        redirect_to current_user, alert: "すでにログインしています"  # ログインしている場合はゲストユーザーを作成しない
      else
        user = User.new_guest
        log_in user
        redirect_to root posts, notice: "ゲストとしてログインしました"
      end
  
    end
  
    



    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
  
      def require_same_user
        if current_user != @user # && !current_user.admin?
          flash[:alert] = "許可されていない操作です。プロフィールの編集、削除は作成者ご自身のみ可能です。"
          redirect_to @user
        end
      end

      def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
      end  
    end

    def login_required
      redirect_to login_path unless current_user
   #ユーザーがログインしていない限り、ログイン画面にレダイレクトする
    end



    
