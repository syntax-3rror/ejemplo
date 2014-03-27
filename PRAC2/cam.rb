class Numeric
     @@currencies = {'dollar' => 6.96, 'euro' => 9.15, 'yen' => 0.075,  'bolivian' => 1}
      def method_missing(method, *arg , &block)
        singular_currency = method.to_s.gsub(/s$/,'')
        if @@currencies.has_key?(singular_currency)
          self * @@currencies[singular_currency]
        else
          super
        end
      end
      def in(currency)
        singular_currency = currency.to_s.gsub(/s$/,'')
        if @@currencies.has_key?(singular_currency)
          self / @@currencies[singular_currency]
        end
      end
	  def self.add_currency(name,conversion)
 	@@currencies[name.to_s] = conversion
	 end
end
