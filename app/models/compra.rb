class Compra < ApplicationRecord

  def self.formatter
    grouped = []
    for compra in Compra.all
      c = Hash['crypto' => compra.crypto, 'quantity' => compra.cantidad]
      if grouped.find{ |i| i['crypto'] == c['crypto'] }
        grouped[grouped.index{ |i| i['crypto'] == c['crypto'] }]['quantity'] += c['quantity']
      else
        grouped.push(c)
      end
    end

    return grouped
  end
end
