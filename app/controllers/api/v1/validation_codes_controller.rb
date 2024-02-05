class Api::V1::ValidationCodesController < ApplicationController
  def create
    # 检测是否存在60秒内创建的验证码且是登录验证码
    if ValidationCode.exists?(email: params[:email], kind: 'sign_in', created_at: 1.minute.ago..Time.now)
      render status: :to_many_requests
      return
    end
    validation_code = ValidationCode.new email: params[:email], kind: 'sign_in'
    if validation_code.save
      render status: 200
    else
      render json: {errors: validation_code.errors}, status: 400
    end
  end
end
