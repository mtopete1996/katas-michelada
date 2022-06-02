# frozen_string_literal: true

require 'debug'

def ips_between(ip_start, ip_end)
  ip_start = ip_start.split('.')
  ip_end = ip_end.split('.')
  networks = ip_end.zip(ip_start)[0..2]
                   .each_with_object([]) do |byte, ips|
                     ips << byte.reduce { |mem, ip| mem.to_i - ip.to_i }
                   end
                   .reduce(:+)

  (networks * 256) + (ip_end[3].to_i - ip_start[3].to_i)
end
