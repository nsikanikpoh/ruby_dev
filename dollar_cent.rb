class Purchase
  attr_accessor :price_cents
  extend MoneyFields
  money_fields :price
end


purchase = Purchase.new
purchase.price = 10.25
purchase.price_cents
# => 1025
purchase.price_cents = 555
purchase.price
# => #<BigDecimal:7fbc7497ac88,'0.555E1',18(36)>

module MoneyFields
  require 'bigdecimal'

  def money_fields(*fields)
    fields.each do |field|
      define_method field do
        value_cents = send("#{field}_cents")
        value_cents.nil? ? nil : BigDecimal.new(value_cents / BigDecimal.new("100"))
      end

      define_method "#{field}=" do |value|
        value_cents = value.nil? ? nil : Integer(BigDecimal.new(String(value)) * 100)
        send("#{field}_cents=", value_cents)
      end
    end
  end
end


require 'minitest/autorun'

class PurchaseTest < MiniTest::Test
  attr_reader :purchase

  def setup
    @purchase = Purchase.new
  end

  def test_reading_writing_dollars
    purchase.price = 5.00
    assert_equal purchase.price, 5.00
  end

  def test_converting_to_dollars
    purchase.price_cents = 500
    assert_equal purchase.price, 5.00
  end

  def test_converting_to_cents
    purchase.price = 5.00
    assert_equal purchase.price_cents, 500
  end

  def test_writing_dollars_from_string
    purchase.price = "5.00"
    assert_equal purchase.price_cents, 500
  end

  def test_nils
    purchase.price = nil
    assert_equal purchase.price, nil
  end

  def test_creating_methods
    assert_equal Purchase.instance_methods(false).sort, [:price_cents, :price_cents=, :price, :price=].sort
  end

  def test_respond_to_dollars
    assert_equal purchase.respond_to?(:price), true
    assert_equal purchase.respond_to?(:price=), true
  end
end