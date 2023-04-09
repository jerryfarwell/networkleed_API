class CheckoutController < ApplicationController
    def create
        items = params[:items]
        line_items = items.map do |item|
          {
            price: item[:id],
            quantity: item[:quantity]
          }
        end
    
        session = Stripe::Checkout::Session.create(
          payment_method_types: ['card'],
          line_items: line_items,
          mode: 'payment',
          success_url: 'http://localhost:5173/paid',
          cancel_url: 'http://localhost:5173/cancel'
        )
    
        render json: { url: session.url }
      end
  
end
