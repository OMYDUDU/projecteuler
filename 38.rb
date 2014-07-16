9876.downto(1234) do |x|
	tmp = x.to_s.split(//)
	if !tmp.include?('0') && tmp.uniq.length == tmp.length && x%10 != 5  
		if ['1','2','3','4','5','6','7','8','9'] - tmp == (x*2).to_s.split(//).sort
			puts x.to_s + (x*2).to_s
			break
		end
	end
end