require "./services/rider_services"
require "./schemas/payment_method_schemas"

class RiderController < Sinatra::Base
  post "/:id/payment-methods" do
    body = JSON.parse(request.body.read)
    validation = CreatePaymentMethodSchema.new.call(body)
    halt 400, { error: validation.errors.to_h }.to_json unless validation.success?
    rider = Rider[:id]
    tokenized_card = body["tokenized_card"]
    halt 404, { error: "Rider not found" }.to_json unless rider
    begin
      payment_method = RiderServices.create_payment_method(rider, tokenized_card)
      status 201
      payment_method.to_json
    rescue  => e
      halt 400, { error: e.message }.to_json
    end
  end

  get "/:id" do
    rider = Rider[:id]
    halt 404, { error: "Rider not found" }.to_json unless rider
    status 201
    rider.to_json
  end

  get "/:id/payments" do
    rider = Rider[:id]
    halt 404, { error: "Rider not found" }.to_json unless rider
    payment_method = PaymentMethod.where(rider_id: rider.id).order(:created_at)
    status 201
    payment_method.to_json    
  end

end
