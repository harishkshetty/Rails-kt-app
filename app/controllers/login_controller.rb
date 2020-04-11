class LoginController < ApplicationController

    before_action :set_user, only: [:update_user, :add]

    def show
        @user=User.find(params[:id])
    end

    def index
        @users=User.all
    end

    def new
        new=User.new
    end

    def create
    
    end

    def search

    end

    def add
        # set_user
        @button_titile = "this is custome"
    end

    def update_user

        # update action here
        # set_user

        service = UserService.new(@user, params[:user])
        service.update_user

        redirect_to login_url

    end

    def create_user_order
        set_user

        order = Order.new({
                            user_id: @user.id,
                            order_ref: "ref_for_3_1",
                            total_amount: "20",
                            total_discount: "0"
                          })
        order.save

        order_deliver_detail = OrderDeliverDetail.new({
                                                        order_id: order.id,
                                                        postal_code: "123456",
                                                        street_name: "Serangoon Central",
                                                        block_name: "Blk 413",
                                                        floor_number: "09",
                                                        house_number: "351"
                                                      })
        order_deliver_detail.save

        order_item_detail1 = OrderItemsDetail.new( {
                                                     order_id: order.id,
                                                     item_code: "12345",
                                                     item_name: "Pencil",
                                                     price: "2",
                                                     qty: "5",
                                                     discount: "0",
                                                     total_discount: "0",
                                                     total_price: "10"
                                                   })
        order_item_detail1.save

        redirect_to login_url

    end

    def create_user_order_with_attributes
        set_user

        order_params = {
          user_id: @user.id,
          order_ref: "ref_for_3_1",
          total_amount: "20",
          total_discount: "0",

          order_items_details_attributes:  [
            {
              item_code: "12345",
              item_name: "Pencil",
              price: "2",
              qty: "5",
              discount: "0",
              total_discount: "0",
              total_price: "10"
            },
            {
              item_code: "12345",
              item_name: "Pen",
              price: "10",
              qty: "1",
              discount: "0",
              total_discount: "0",
              total_price: "10"
            }
          ],

          order_deliver_detail_attributes: {
            postal_code: "123456",
            street_name: "Serangoon Central",
            block_name: "Blk 413",
            floor_number: "09",
            house_number: "351"
          }
        }

        Order.new(order_params).save

        redirect_to login_url
    end

    def set_user
        @user = User.find(params[:id])
    end
end
