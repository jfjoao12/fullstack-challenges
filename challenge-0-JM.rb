####################
# Joao Magalhaes
# WEBD-3008 (265257)
####################


PST =  0.07
GST = 0.05

def tax_calculation(sub_total)

  pst_calculation = (PST * sub_total).round(2)
  gst_calculation = (GST * sub_total).round(2)
  grand_total = (sub_total + pst_calculation + gst_calculation).round(3)

  if (grand_total <= 5)
    message = "Pocket change"
  elsif (grand_total < 20)
    message = "Wallet time"
  elsif (grand_total > 20)
    message = "Charge it!"
  end

  # Output
  puts "
        #{message} \n
        Subtotal $#{sub_total}
        PST: $#{pst_calculation}
        GST: $#{gst_calculation}
        Grand Total: $#{grand_total}"
end

print "Subtotal: "
answer = + gets.to_i
puts tax_calculation(answer)