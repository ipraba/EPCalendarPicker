Pod::Spec.new do |s|
  s.name             = "EPCalendarPicker"
  s.version          = "1.1.1"
  s.summary          = "Colourful calendar component for iOS written in Swift"
  s.description      = <<-DESC
Features
1. Single selection and multiselection option
2. Customization on changing the colors of the dates
3. Delegates to capture teh selected dates
4. Option to define the calendar start and ending year
DESC

  s.homepage         = "https://github.com/LEYEFEINC/EPCalendarPicker"
  s.license          = 'MIT'
  s.author           = { "Prabaharan" => "mailprabaharan.e@gmail.com" }
  s.source           = { 'https://github.com/LEYEFEINC/EPCalendarPicker.git', :tag => '1.1.1' }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files = 'EPCalendar/EPCalendarPicker'
  s.frameworks = 'UIKit'
#  s.resource_bundles = {
#    'EPCalendarPicker' => [
#         'EPCalendar/**/*.xib'
#    ]
# }
  s.resources        = ["EPCalendar/EPCalendarPicker/EPCalendarCell1.xib", "EPCalendar/EPCalendarPicker/EPCalendarHeaderView.xib"]
end
