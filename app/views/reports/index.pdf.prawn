pdf.text "Report for #{current_user.email}", :size => 20, :style => :bold

@reports.each do |report|
	doc = Nokogiri::HTML(open(report.url))
		pdf.text doc.css("h1").text, :size => 12, :style => :bold
end