pdf.text "Report for user: #{current_user.email}", :size => 20, :style => :bold

pdf.move_down(30)

pdf.text "Total items: #{@reports.count}", :size => 14

pdf.move_down(30)

counter = 1

@reports.each do |report|
	doc = Nokogiri::HTML(open(report.url))
		pdf.text "#{counter}. #{doc.css("h1").text}", :size => 12, :style => :bold
		pdf.move_down(15)
		pdf.text doc.css("p:first-of-type").text.force_encoding('Windows-1252')
		pdf.move_down(15)
		counter += 1
end

