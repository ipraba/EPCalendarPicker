<p align="center" >
  <img src="EPCalendarPickerLogo.png" alt="EPCalendarPicker" title="EPCalendarPicker" width="196">
</p>

# EPCalendarPicker
Colorful calendar component for iOS written in Swift


[![Platform](https://img.shields.io/cocoapods/p/EPCalendarPicker.svg?style=flat)](http://cocoapods.org/pods/EPContactsPicker)
[![Cocoapods Compatible](https://img.shields.io/cocoapods/v/EPCalendarPicker.svg?style=flat)](http://cocoadocs.org/docsets/EPCalendarPicker)
[![Swift 2.0](https://img.shields.io/badge/Swift-2.0-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![CI Status](https://travis-ci.org/ipraba/EPCalendarPicker.svg?branch=master)](https://travis-ci.org/ipraba/EPCalendarPicker)
[![License](https://img.shields.io/cocoapods/l/Ouroboros.svg?style=flat)](https://github.com/ipraba/EPCalendarPicker/blob/master/LICENSE)
 [![Twitter: @HaveYouMetPrabu](https://img.shields.io/badge/contact-@HaveYouMetPrabu-blue.svg?style=flat)](https://twitter.com/HaveYouMetPrabu)

Preview
-------
![Screenshot](https://raw.githubusercontent.com/ipraba/EPCalendarPicker/master/Screenshots/Image2.png)    ![Screenshot](https://raw.githubusercontent.com/ipraba/EPCalendarPicker/master/Screenshots/Image3.png)


Installation
------------

####CocoaPods
EPCalendarPicker is available on CocoaPods. Just add the following to your project Podfile:
```
pod 'EPCalendarPicker'
use_frameworks!
```
####Manual Installation

Just drag and drop the `EPCalendarPicker` folder into your project

Demo
----

Stream the demo of this example in browser using [Appetize.io](https://appetize.io/app/2p5cj9qa4efv6z7trhnzc5rmz4)

Features
--------

EPcalendarPicker provides lot of features which lets you customize the picker

1. Single selection and multiselection option
2. Customize the date colors in the picker
3. Today Indication and Scrolling to today
4. Delegates that return the selected dates
5. Ability to set the starting and ending year of the calendar

Initialization
--------------
You can init the picker as follows

        let calendarPicker = EPCalendarPicker(startYear: 2015, endYear: 2017, multiSelection: true, selectedDates: nil)
        calendarPicker.calendarDelegate = self
        let navigationController = UINavigationController(rootViewController: calendarPicker)
        self.presentViewController(navigationController, animated: true, completion: nil)   

Properties
----------

Name | Description
---- | ---------
**`tintColor`**|`Tintcolor of the navigationBar bar buttons`
**`weekdayTintColor`**|`Weekday title and date color`
**`weekendTintColor`**|`Weekend title and date color`
**`todayTintColor`**|`Today bar button the today's date color`
**`dateSelectionColor`**|`Selected date color`
**`monthTitleColor`**|`Month title color`
**`multiSelectEnabled`**|`Boolean value indicating whether multiselection enabled or not`
**`calendarDelegate`**|`Delegate`
**`startYear`**|`Starting year of the calendar`
**`endYear`**|`Ending year of the calendar`
**`startDate`**|`Dates previous to this startDate cannot be selected`
**`highlightsToday`**|`Boolean that highlights the today date`
**`hideDaysFromOtherMonth`**|`Hides the days of other months with empty spaces`
**`backgroundImage`**|`Background Image of the calendar`
**`backgroundColor`**|`Background Color of the Calendar`
**`dayDisabledTintColor`**|`Disabled day tint color`

Delegates
---------
EPCalendarPicker provides you three delegates for getting the callbacks on the picker

    optional    func epCalendarPicker(_: EPCalendarPicker, didCancel error : NSError)
    optional    func epCalendarPicker(_: EPCalendarPicker, didSelectDate date : NSDate)
    optional    func epCalendarPicker(_: EPCalendarPicker, didSelectMultipleDate dates : [NSDate])

Credits
-------
Thanks to [Stefan Sturm](https://github.com/Urkman) for this super [extensions](https://github.com/ipraba/EPCalendarPicker/pull/9) to this component 

License
-------
EPCalendarPicker is available under the MIT license. See the [LICENSE](https://github.com/ipraba/EPCalendarPicker/blob/master/LICENSE) file for more info.

Contributors
------------
[@ipraba](https://github.com/ipraba)


