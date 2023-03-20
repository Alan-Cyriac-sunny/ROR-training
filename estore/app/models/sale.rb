class Sale < ApplicationRecord
  belongs_to :product
  belongs_to :user

  # enum payment_status: [:failed, :completed]
  after_commit :update_inventory_count, on: [:create], if: :completed?
  # after_commit :update_inventory_count, on: [:create, :update], if: :completed?

  private

  def completed?
    payment_status == 'completed'
  end

  def update_inventory_count
    product.update(inventory_count: product.inventory_count - quantity)
  end
end