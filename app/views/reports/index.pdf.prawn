pdf.text "Report for #{current_user.email}", :size => 20, :style => :bold

pdf.move_down(30)

@reports.each do |report|
	doc = Nokogiri::HTML(open(report.url))
		pdf.text doc.css("h1").text, :size => 12, :style => :bold
		pdf.move_down(15)
		pdf.text doc.css("p:first-of-type").text.force_encoding('Windows-1252')
		pdf.move_down(15)
end