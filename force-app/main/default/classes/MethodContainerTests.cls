@isTest
public class MethodContainerTests {
	@isTest public static void initTest() {
		MethodContainer container = new MethodContainer();
		container.init();
	}
	@isTest public static void SystemBusinessHoursAddTest() {
		MethodContainer.SystemBusinessHoursAdd m = new MethodContainer.SystemBusinessHoursAdd();
		m.register();
		m.getParameter('businessHoursId').value.stringValue = 'TEST';
		m.getParameter('startDate').value.datetimeValue = DateTime.newInstance(2023,1,1);
		m.getParameter('intervalMilliseconds').value.longValue = 1;
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemBusinessHoursAddGmtTest() {
		MethodContainer.SystemBusinessHoursAddGmt m = new MethodContainer.SystemBusinessHoursAddGmt();
		m.register();
		m.getParameter('businessHoursId').value.stringValue = 'TEST';
		m.getParameter('startDate').value.datetimeValue = DateTime.newInstance(2023,1,1);
		m.getParameter('intervalMilliseconds').value.longValue = 1;
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemBusinessHoursDiffTest() {
		MethodContainer.SystemBusinessHoursDiff m = new MethodContainer.SystemBusinessHoursDiff();
		m.register();
		m.getParameter('businessHoursId').value.stringValue = 'TEST';
		m.getParameter('startDate').value.datetimeValue = DateTime.newInstance(2023,1,1);
		m.getParameter('endDate').value.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Long output = (Long)m.outputValue.longValue;
	}
	@isTest public static void SystemBusinessHoursIsWithinTest() {
		MethodContainer.SystemBusinessHoursIsWithin m = new MethodContainer.SystemBusinessHoursIsWithin();
		m.register();
		m.getParameter('businessHoursId').value.stringValue = 'TEST';
		m.getParameter('targetDate').value.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemBusinessHoursNextStartDateTest() {
		MethodContainer.SystemBusinessHoursNextStartDate m = new MethodContainer.SystemBusinessHoursNextStartDate();
		m.register();
		m.getParameter('businessHoursId').value.stringValue = 'TEST';
		m.getParameter('targetDate').value.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDateAddDaysTest() {
		MethodContainer.SystemDateAddDays m = new MethodContainer.SystemDateAddDays();
		m.register();
		m.inputValue.dateValue = Date.newInstance(2023,1,1);
		m.getParameter('additionalDays').value.integerValue = 1;
		m.execute();
		Date output = (Date)m.outputValue.dateValue;
	}
	@isTest public static void SystemDateAddMonthsTest() {
		MethodContainer.SystemDateAddMonths m = new MethodContainer.SystemDateAddMonths();
		m.register();
		m.inputValue.dateValue = Date.newInstance(2023,1,1);
		m.getParameter('additionalMonths').value.integerValue = 1;
		m.execute();
		Date output = (Date)m.outputValue.dateValue;
	}
	@isTest public static void SystemDateAddYearsTest() {
		MethodContainer.SystemDateAddYears m = new MethodContainer.SystemDateAddYears();
		m.register();
		m.inputValue.dateValue = Date.newInstance(2023,1,1);
		m.getParameter('additionalYears').value.integerValue = 1;
		m.execute();
		Date output = (Date)m.outputValue.dateValue;
	}
	@isTest public static void SystemDateDayTest() {
		MethodContainer.SystemDateDay m = new MethodContainer.SystemDateDay();
		m.register();
		m.inputValue.dateValue = Date.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDateDayOfYearTest() {
		MethodContainer.SystemDateDayOfYear m = new MethodContainer.SystemDateDayOfYear();
		m.register();
		m.inputValue.dateValue = Date.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDateDaysBetweenTest() {
		MethodContainer.SystemDateDaysBetween m = new MethodContainer.SystemDateDaysBetween();
		m.register();
		m.inputValue.dateValue = Date.newInstance(2023,1,1);
		m.getParameter('secondDate').value.dateValue = Date.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDateDaysInMonthTest() {
		MethodContainer.SystemDateDaysInMonth m = new MethodContainer.SystemDateDaysInMonth();
		m.register();
		m.getParameter('year').value.integerValue = 1;
		m.getParameter('month').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDateFormatTest() {
		MethodContainer.SystemDateFormat m = new MethodContainer.SystemDateFormat();
		m.register();
		m.inputValue.dateValue = Date.newInstance(2023,1,1);
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemDateIsLeapYearTest() {
		MethodContainer.SystemDateIsLeapYear m = new MethodContainer.SystemDateIsLeapYear();
		m.register();
		m.getParameter('year').value.integerValue = 1;
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemDateIsSameDayTest() {
		MethodContainer.SystemDateIsSameDay m = new MethodContainer.SystemDateIsSameDay();
		m.register();
		m.inputValue.dateValue = Date.newInstance(2023,1,1);
		m.getParameter('dateToCompare').value.dateValue = Date.newInstance(2023,1,1);
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemDateMonthTest() {
		MethodContainer.SystemDateMonth m = new MethodContainer.SystemDateMonth();
		m.register();
		m.inputValue.dateValue = Date.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDateMonthsBetweenTest() {
		MethodContainer.SystemDateMonthsBetween m = new MethodContainer.SystemDateMonthsBetween();
		m.register();
		m.inputValue.dateValue = Date.newInstance(2023,1,1);
		m.getParameter('secondDate').value.dateValue = Date.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDateNewInstanceTest() {
		MethodContainer.SystemDateNewInstance m = new MethodContainer.SystemDateNewInstance();
		m.register();
		m.getParameter('year').value.integerValue = 1;
		m.getParameter('month').value.integerValue = 1;
		m.getParameter('day').value.integerValue = 1;
		m.execute();
		Date output = (Date)m.outputValue.dateValue;
	}
	@isTest public static void SystemDateParseTest() {
		MethodContainer.SystemDateParse m = new MethodContainer.SystemDateParse();
		m.register();
		m.getParameter('stringDate').value.stringValue = 'TEST';
		m.execute();
		Date output = (Date)m.outputValue.dateValue;
	}
	@isTest public static void SystemDateTodayTest() {
		MethodContainer.SystemDateToday m = new MethodContainer.SystemDateToday();
		m.register();
		m.execute();
		Date output = (Date)m.outputValue.dateValue;
	}
	@isTest public static void SystemDateToStartOfMonthTest() {
		MethodContainer.SystemDateToStartOfMonth m = new MethodContainer.SystemDateToStartOfMonth();
		m.register();
		m.inputValue.dateValue = Date.newInstance(2023,1,1);
		m.execute();
		Date output = (Date)m.outputValue.dateValue;
	}
	@isTest public static void SystemDateToStartOfWeekTest() {
		MethodContainer.SystemDateToStartOfWeek m = new MethodContainer.SystemDateToStartOfWeek();
		m.register();
		m.inputValue.dateValue = Date.newInstance(2023,1,1);
		m.execute();
		Date output = (Date)m.outputValue.dateValue;
	}
	@isTest public static void SystemDateValueOfTest() {
		MethodContainer.SystemDateValueOf m = new MethodContainer.SystemDateValueOf();
		m.register();
		m.getParameter('stringDate').value.stringValue = 'TEST';
		m.execute();
		Date output = (Date)m.outputValue.dateValue;
	}
	@isTest public static void SystemDate2ValueOfTest() {
		MethodContainer.SystemDate2ValueOf m = new MethodContainer.SystemDate2ValueOf();
		m.register();
		m.getParameter('fieldValue').value.objectValue = 'TEST';
		m.execute();
		Date output = (Date)m.outputValue.dateValue;
	}
	@isTest public static void SystemDateYearTest() {
		MethodContainer.SystemDateYear m = new MethodContainer.SystemDateYear();
		m.register();
		m.inputValue.dateValue = Date.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDatetimeAddDaysTest() {
		MethodContainer.SystemDatetimeAddDays m = new MethodContainer.SystemDatetimeAddDays();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.getParameter('additionalDays').value.integerValue = 1;
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetimeAddHoursTest() {
		MethodContainer.SystemDatetimeAddHours m = new MethodContainer.SystemDatetimeAddHours();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.getParameter('additionalHours').value.integerValue = 1;
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetimeAddMinutesTest() {
		MethodContainer.SystemDatetimeAddMinutes m = new MethodContainer.SystemDatetimeAddMinutes();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.getParameter('additionalMinutes').value.integerValue = 1;
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetimeAddMonthsTest() {
		MethodContainer.SystemDatetimeAddMonths m = new MethodContainer.SystemDatetimeAddMonths();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.getParameter('additionalMonths').value.integerValue = 1;
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetimeAddSecondsTest() {
		MethodContainer.SystemDatetimeAddSeconds m = new MethodContainer.SystemDatetimeAddSeconds();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.getParameter('additionalSeconds').value.integerValue = 1;
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetimeAddYearsTest() {
		MethodContainer.SystemDatetimeAddYears m = new MethodContainer.SystemDatetimeAddYears();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.getParameter('additionalYears').value.integerValue = 1;
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetimeDateTest() {
		MethodContainer.SystemDatetimeDate m = new MethodContainer.SystemDatetimeDate();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Date output = (Date)m.outputValue.dateValue;
	}
	@isTest public static void SystemDatetimeDateGMTTest() {
		MethodContainer.SystemDatetimeDateGMT m = new MethodContainer.SystemDatetimeDateGMT();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Date output = (Date)m.outputValue.dateValue;
	}
	@isTest public static void SystemDatetimeDayTest() {
		MethodContainer.SystemDatetimeDay m = new MethodContainer.SystemDatetimeDay();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDatetimeDayGmtTest() {
		MethodContainer.SystemDatetimeDayGmt m = new MethodContainer.SystemDatetimeDayGmt();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDatetimeDayOfYearTest() {
		MethodContainer.SystemDatetimeDayOfYear m = new MethodContainer.SystemDatetimeDayOfYear();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDatetimeDayOfYearGmtTest() {
		MethodContainer.SystemDatetimeDayOfYearGmt m = new MethodContainer.SystemDatetimeDayOfYearGmt();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDatetimeFormatTest() {
		MethodContainer.SystemDatetimeFormat m = new MethodContainer.SystemDatetimeFormat();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemDatetime2FormatTest() {
		MethodContainer.SystemDatetime2Format m = new MethodContainer.SystemDatetime2Format();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.getParameter('dateFormatString').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemDatetime3FormatTest() {
		MethodContainer.SystemDatetime3Format m = new MethodContainer.SystemDatetime3Format();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.getParameter('dateFormatString').value.stringValue = 'TEST';
		m.getParameter('timezone').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemDatetimeFormatGmtTest() {
		MethodContainer.SystemDatetimeFormatGmt m = new MethodContainer.SystemDatetimeFormatGmt();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.getParameter('dateFormatString').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemDatetimeFormatLongTest() {
		MethodContainer.SystemDatetimeFormatLong m = new MethodContainer.SystemDatetimeFormatLong();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemDatetimeGetTimeTest() {
		MethodContainer.SystemDatetimeGetTime m = new MethodContainer.SystemDatetimeGetTime();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Long output = (Long)m.outputValue.longValue;
	}
	@isTest public static void SystemDatetimeHourTest() {
		MethodContainer.SystemDatetimeHour m = new MethodContainer.SystemDatetimeHour();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDatetimeHourGmtTest() {
		MethodContainer.SystemDatetimeHourGmt m = new MethodContainer.SystemDatetimeHourGmt();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDatetimeIsSameDayTest() {
		MethodContainer.SystemDatetimeIsSameDay m = new MethodContainer.SystemDatetimeIsSameDay();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.getParameter('dateToCompare').value.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemDatetimeMillisecondTest() {
		MethodContainer.SystemDatetimeMillisecond m = new MethodContainer.SystemDatetimeMillisecond();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDatetimeMillisecondGmtTest() {
		MethodContainer.SystemDatetimeMillisecondGmt m = new MethodContainer.SystemDatetimeMillisecondGmt();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDatetimeMinuteTest() {
		MethodContainer.SystemDatetimeMinute m = new MethodContainer.SystemDatetimeMinute();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDatetimeMinuteGmtTest() {
		MethodContainer.SystemDatetimeMinuteGmt m = new MethodContainer.SystemDatetimeMinuteGmt();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDatetimeMonthTest() {
		MethodContainer.SystemDatetimeMonth m = new MethodContainer.SystemDatetimeMonth();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDatetimeMonthGmtTest() {
		MethodContainer.SystemDatetimeMonthGmt m = new MethodContainer.SystemDatetimeMonthGmt();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDatetimeNewInstanceTest() {
		MethodContainer.SystemDatetimeNewInstance m = new MethodContainer.SystemDatetimeNewInstance();
		m.register();
		m.getParameter('milliseconds').value.longValue = 1;
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetime2NewInstanceTest() {
		MethodContainer.SystemDatetime2NewInstance m = new MethodContainer.SystemDatetime2NewInstance();
		m.register();
		m.getParameter('date').value.dateValue = Date.newInstance(2023,1,1);
		m.getParameter('time').value.timeValue = Time.newInstance(0,0,0,0);
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetime3NewInstanceTest() {
		MethodContainer.SystemDatetime3NewInstance m = new MethodContainer.SystemDatetime3NewInstance();
		m.register();
		m.getParameter('year').value.integerValue = 1;
		m.getParameter('month').value.integerValue = 1;
		m.getParameter('day').value.integerValue = 1;
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetime4NewInstanceTest() {
		MethodContainer.SystemDatetime4NewInstance m = new MethodContainer.SystemDatetime4NewInstance();
		m.register();
		m.getParameter('year').value.integerValue = 1;
		m.getParameter('month').value.integerValue = 1;
		m.getParameter('day').value.integerValue = 1;
		m.getParameter('hour').value.integerValue = 1;
		m.getParameter('minute').value.integerValue = 1;
		m.getParameter('second').value.integerValue = 1;
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetimeNewInstanceGmtTest() {
		MethodContainer.SystemDatetimeNewInstanceGmt m = new MethodContainer.SystemDatetimeNewInstanceGmt();
		m.register();
		m.getParameter('date').value.dateValue = Date.newInstance(2023,1,1);
		m.getParameter('time').value.timeValue = Time.newInstance(0,0,0,0);
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetime2NewInstanceGmtTest() {
		MethodContainer.SystemDatetime2NewInstanceGmt m = new MethodContainer.SystemDatetime2NewInstanceGmt();
		m.register();
		m.getParameter('year').value.integerValue = 1;
		m.getParameter('month').value.integerValue = 1;
		m.getParameter('date').value.integerValue = 1;
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetime3NewInstanceGmtTest() {
		MethodContainer.SystemDatetime3NewInstanceGmt m = new MethodContainer.SystemDatetime3NewInstanceGmt();
		m.register();
		m.getParameter('year').value.integerValue = 1;
		m.getParameter('month').value.integerValue = 1;
		m.getParameter('date').value.integerValue = 1;
		m.getParameter('hour').value.integerValue = 1;
		m.getParameter('minute').value.integerValue = 1;
		m.getParameter('second').value.integerValue = 1;
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetimeNowTest() {
		MethodContainer.SystemDatetimeNow m = new MethodContainer.SystemDatetimeNow();
		m.register();
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetimeParseTest() {
		MethodContainer.SystemDatetimeParse m = new MethodContainer.SystemDatetimeParse();
		m.register();
		m.getParameter('datetimeString').value.stringValue = 'TEST';
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetimeSecondTest() {
		MethodContainer.SystemDatetimeSecond m = new MethodContainer.SystemDatetimeSecond();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDatetimeSecondGmtTest() {
		MethodContainer.SystemDatetimeSecondGmt m = new MethodContainer.SystemDatetimeSecondGmt();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDatetimeTimeTest() {
		MethodContainer.SystemDatetimeTime m = new MethodContainer.SystemDatetimeTime();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Time output = (Time)m.outputValue.timeValue;
	}
	@isTest public static void SystemDatetimeTimeGmtTest() {
		MethodContainer.SystemDatetimeTimeGmt m = new MethodContainer.SystemDatetimeTimeGmt();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Time output = (Time)m.outputValue.timeValue;
	}
	@isTest public static void SystemDatetimeValueOfTest() {
		MethodContainer.SystemDatetimeValueOf m = new MethodContainer.SystemDatetimeValueOf();
		m.register();
		m.getParameter('dateTimeString').value.stringValue = 'TEST';
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetime2ValueOfTest() {
		MethodContainer.SystemDatetime2ValueOf m = new MethodContainer.SystemDatetime2ValueOf();
		m.register();
		m.getParameter('fieldValue').value.objectValue = 'TEST';
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetimeValueOfGmtTest() {
		MethodContainer.SystemDatetimeValueOfGmt m = new MethodContainer.SystemDatetimeValueOfGmt();
		m.register();
		m.getParameter('dateTimeString').value.stringValue = 'TEST';
		m.execute();
		Datetime output = (Datetime)m.outputValue.datetimeValue;
	}
	@isTest public static void SystemDatetimeYearTest() {
		MethodContainer.SystemDatetimeYear m = new MethodContainer.SystemDatetimeYear();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemDatetimeYearGmtTest() {
		MethodContainer.SystemDatetimeYearGmt m = new MethodContainer.SystemDatetimeYearGmt();
		m.register();
		m.inputValue.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemLabelGetTest() {
		MethodContainer.SystemLabelGet m = new MethodContainer.SystemLabelGet();
		m.register();
		m.getParameter('namespace').value.stringValue = 'TEST';
		m.getParameter('label').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemLabelTranslationExistsTest() {
		MethodContainer.SystemLabelTranslationExists m = new MethodContainer.SystemLabelTranslationExists();
		m.register();
		m.getParameter('namespace').value.stringValue = 'TEST';
		m.getParameter('label').value.stringValue = 'TEST';
		m.getParameter('language').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemMathAbsTest() {
		MethodContainer.SystemMathAbs m = new MethodContainer.SystemMathAbs();
		m.register();
		m.getParameter('decimalValue').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2AbsTest() {
		MethodContainer.SystemMath2Abs m = new MethodContainer.SystemMath2Abs();
		m.register();
		m.getParameter('doubleValue').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMath3AbsTest() {
		MethodContainer.SystemMath3Abs m = new MethodContainer.SystemMath3Abs();
		m.register();
		m.getParameter('integerValue').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemMath4AbsTest() {
		MethodContainer.SystemMath4Abs m = new MethodContainer.SystemMath4Abs();
		m.register();
		m.getParameter('longValue').value.longValue = 1;
		m.execute();
		Long output = (Long)m.outputValue.longValue;
	}
	@isTest public static void SystemMathAcosTest() {
		MethodContainer.SystemMathAcos m = new MethodContainer.SystemMathAcos();
		m.register();
		m.getParameter('decimalAngle').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2AcosTest() {
		MethodContainer.SystemMath2Acos m = new MethodContainer.SystemMath2Acos();
		m.register();
		m.getParameter('doubleAngle').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathAsinTest() {
		MethodContainer.SystemMathAsin m = new MethodContainer.SystemMathAsin();
		m.register();
		m.getParameter('decimalAngle').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2AsinTest() {
		MethodContainer.SystemMath2Asin m = new MethodContainer.SystemMath2Asin();
		m.register();
		m.getParameter('doubleAngle').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathAtanTest() {
		MethodContainer.SystemMathAtan m = new MethodContainer.SystemMathAtan();
		m.register();
		m.getParameter('decimalAngle').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2AtanTest() {
		MethodContainer.SystemMath2Atan m = new MethodContainer.SystemMath2Atan();
		m.register();
		m.getParameter('doubleAngle').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathAtan2Test() {
		MethodContainer.SystemMathAtan2 m = new MethodContainer.SystemMathAtan2();
		m.register();
		m.getParameter('xCoordinate').value.decimalValue = 1;
		m.getParameter('yCoordinate').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2Atan2Test() {
		MethodContainer.SystemMath2Atan2 m = new MethodContainer.SystemMath2Atan2();
		m.register();
		m.getParameter('xCoordinate').value.doubleValue = 1;
		m.getParameter('yCoordinate').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathCbrtTest() {
		MethodContainer.SystemMathCbrt m = new MethodContainer.SystemMathCbrt();
		m.register();
		m.getParameter('decimalValue').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2CbrtTest() {
		MethodContainer.SystemMath2Cbrt m = new MethodContainer.SystemMath2Cbrt();
		m.register();
		m.getParameter('doubleValue').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathCeilTest() {
		MethodContainer.SystemMathCeil m = new MethodContainer.SystemMathCeil();
		m.register();
		m.getParameter('decimalValue').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2CeilTest() {
		MethodContainer.SystemMath2Ceil m = new MethodContainer.SystemMath2Ceil();
		m.register();
		m.getParameter('doubleValue').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathCosTest() {
		MethodContainer.SystemMathCos m = new MethodContainer.SystemMathCos();
		m.register();
		m.getParameter('decimalAngle').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2CosTest() {
		MethodContainer.SystemMath2Cos m = new MethodContainer.SystemMath2Cos();
		m.register();
		m.getParameter('doubleAngle').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathCoshTest() {
		MethodContainer.SystemMathCosh m = new MethodContainer.SystemMathCosh();
		m.register();
		m.getParameter('decimalAngle').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2CoshTest() {
		MethodContainer.SystemMath2Cosh m = new MethodContainer.SystemMath2Cosh();
		m.register();
		m.getParameter('doubleAngle').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathExpTest() {
		MethodContainer.SystemMathExp m = new MethodContainer.SystemMathExp();
		m.register();
		m.getParameter('exponentDecimal').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2ExpTest() {
		MethodContainer.SystemMath2Exp m = new MethodContainer.SystemMath2Exp();
		m.register();
		m.getParameter('exponentDouble').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathFloorTest() {
		MethodContainer.SystemMathFloor m = new MethodContainer.SystemMathFloor();
		m.register();
		m.getParameter('decimalValue').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2FloorTest() {
		MethodContainer.SystemMath2Floor m = new MethodContainer.SystemMath2Floor();
		m.register();
		m.getParameter('doubleValue').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathLogTest() {
		MethodContainer.SystemMathLog m = new MethodContainer.SystemMathLog();
		m.register();
		m.getParameter('decimalValue').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2LogTest() {
		MethodContainer.SystemMath2Log m = new MethodContainer.SystemMath2Log();
		m.register();
		m.getParameter('doubleValue').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathLog10Test() {
		MethodContainer.SystemMathLog10 m = new MethodContainer.SystemMathLog10();
		m.register();
		m.getParameter('decimalValue').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2Log10Test() {
		MethodContainer.SystemMath2Log10 m = new MethodContainer.SystemMath2Log10();
		m.register();
		m.getParameter('doubleValue').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathMaxTest() {
		MethodContainer.SystemMathMax m = new MethodContainer.SystemMathMax();
		m.register();
		m.getParameter('decimalValue1').value.decimalValue = 1;
		m.getParameter('decimalValue2').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2MaxTest() {
		MethodContainer.SystemMath2Max m = new MethodContainer.SystemMath2Max();
		m.register();
		m.getParameter('doubleValue1').value.doubleValue = 1;
		m.getParameter('doubleValue2').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMath3MaxTest() {
		MethodContainer.SystemMath3Max m = new MethodContainer.SystemMath3Max();
		m.register();
		m.getParameter('integerValue1').value.integerValue = 1;
		m.getParameter('integerValue2').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemMath4MaxTest() {
		MethodContainer.SystemMath4Max m = new MethodContainer.SystemMath4Max();
		m.register();
		m.getParameter('longValue1').value.longValue = 1;
		m.getParameter('longValue2').value.longValue = 1;
		m.execute();
		Long output = (Long)m.outputValue.longValue;
	}
	@isTest public static void SystemMathMinTest() {
		MethodContainer.SystemMathMin m = new MethodContainer.SystemMathMin();
		m.register();
		m.getParameter('decimalValue1').value.decimalValue = 1;
		m.getParameter('decimalValue2').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2MinTest() {
		MethodContainer.SystemMath2Min m = new MethodContainer.SystemMath2Min();
		m.register();
		m.getParameter('doubleValue1').value.doubleValue = 1;
		m.getParameter('doubleValue2').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMath3MinTest() {
		MethodContainer.SystemMath3Min m = new MethodContainer.SystemMath3Min();
		m.register();
		m.getParameter('integerValue1').value.integerValue = 1;
		m.getParameter('integerValue2').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemMath4MinTest() {
		MethodContainer.SystemMath4Min m = new MethodContainer.SystemMath4Min();
		m.register();
		m.getParameter('longValue1').value.longValue = 1;
		m.getParameter('longValue2').value.longValue = 1;
		m.execute();
		Long output = (Long)m.outputValue.longValue;
	}
	@isTest public static void SystemMathModTest() {
		MethodContainer.SystemMathMod m = new MethodContainer.SystemMathMod();
		m.register();
		m.getParameter('integerValue1').value.integerValue = 1;
		m.getParameter('integerValue2').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemMath2ModTest() {
		MethodContainer.SystemMath2Mod m = new MethodContainer.SystemMath2Mod();
		m.register();
		m.getParameter('longValue1').value.longValue = 1;
		m.getParameter('longValue2').value.longValue = 1;
		m.execute();
		Long output = (Long)m.outputValue.longValue;
	}
	@isTest public static void SystemMathPowTest() {
		MethodContainer.SystemMathPow m = new MethodContainer.SystemMathPow();
		m.register();
		m.getParameter('doubleValue').value.doubleValue = 1;
		m.getParameter('exponent').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathRandomTest() {
		MethodContainer.SystemMathRandom m = new MethodContainer.SystemMathRandom();
		m.register();
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathRintTest() {
		MethodContainer.SystemMathRint m = new MethodContainer.SystemMathRint();
		m.register();
		m.getParameter('decimalValue').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2RintTest() {
		MethodContainer.SystemMath2Rint m = new MethodContainer.SystemMath2Rint();
		m.register();
		m.getParameter('doubleValue').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathRoundTest() {
		MethodContainer.SystemMathRound m = new MethodContainer.SystemMathRound();
		m.register();
		m.getParameter('doubleValue').value.doubleValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemMath2RoundTest() {
		MethodContainer.SystemMath2Round m = new MethodContainer.SystemMath2Round();
		m.register();
		m.getParameter('decimalValue').value.decimalValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemMathRoundToLongTest() {
		MethodContainer.SystemMathRoundToLong m = new MethodContainer.SystemMathRoundToLong();
		m.register();
		m.getParameter('decimalValue').value.decimalValue = 1;
		m.execute();
		Long output = (Long)m.outputValue.longValue;
	}
	@isTest public static void SystemMath2RoundToLongTest() {
		MethodContainer.SystemMath2RoundToLong m = new MethodContainer.SystemMath2RoundToLong();
		m.register();
		m.getParameter('doubleValue').value.doubleValue = 1;
		m.execute();
		Long output = (Long)m.outputValue.longValue;
	}
	@isTest public static void SystemMathSignumTest() {
		MethodContainer.SystemMathSignum m = new MethodContainer.SystemMathSignum();
		m.register();
		m.getParameter('decimalValue').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2SignumTest() {
		MethodContainer.SystemMath2Signum m = new MethodContainer.SystemMath2Signum();
		m.register();
		m.getParameter('doubleValue').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathSinTest() {
		MethodContainer.SystemMathSin m = new MethodContainer.SystemMathSin();
		m.register();
		m.getParameter('decimalAngle').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2SinTest() {
		MethodContainer.SystemMath2Sin m = new MethodContainer.SystemMath2Sin();
		m.register();
		m.getParameter('doubleAngle').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathSinhTest() {
		MethodContainer.SystemMathSinh m = new MethodContainer.SystemMathSinh();
		m.register();
		m.getParameter('decimalAngle').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2SinhTest() {
		MethodContainer.SystemMath2Sinh m = new MethodContainer.SystemMath2Sinh();
		m.register();
		m.getParameter('doubleAngle').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathSqrtTest() {
		MethodContainer.SystemMathSqrt m = new MethodContainer.SystemMathSqrt();
		m.register();
		m.getParameter('decimalValue').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2SqrtTest() {
		MethodContainer.SystemMath2Sqrt m = new MethodContainer.SystemMath2Sqrt();
		m.register();
		m.getParameter('doubleValue').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathTanTest() {
		MethodContainer.SystemMathTan m = new MethodContainer.SystemMathTan();
		m.register();
		m.getParameter('decimalAngle').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2TanTest() {
		MethodContainer.SystemMath2Tan m = new MethodContainer.SystemMath2Tan();
		m.register();
		m.getParameter('doubleAngle').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemMathTanhTest() {
		MethodContainer.SystemMathTanh m = new MethodContainer.SystemMathTanh();
		m.register();
		m.getParameter('decimalAngle').value.decimalValue = 1;
		m.execute();
		Decimal output = (Decimal)m.outputValue.decimalValue;
	}
	@isTest public static void SystemMath2TanhTest() {
		MethodContainer.SystemMath2Tanh m = new MethodContainer.SystemMath2Tanh();
		m.register();
		m.getParameter('doubleAngle').value.doubleValue = 1;
		m.execute();
		Double output = (Double)m.outputValue.doubleValue;
	}
	@isTest public static void SystemStringAbbreviateTest() {
		MethodContainer.SystemStringAbbreviate m = new MethodContainer.SystemStringAbbreviate();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('maxWidth').value.integerValue = 1;
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemString2AbbreviateTest() {
		MethodContainer.SystemString2Abbreviate m = new MethodContainer.SystemString2Abbreviate();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('maxWidth').value.integerValue = 1;
		m.getParameter('offset').value.integerValue = 1;
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringCapitalizeTest() {
		MethodContainer.SystemStringCapitalize m = new MethodContainer.SystemStringCapitalize();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringCenterTest() {
		MethodContainer.SystemStringCenter m = new MethodContainer.SystemStringCenter();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('size').value.integerValue = 1;
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemString2CenterTest() {
		MethodContainer.SystemString2Center m = new MethodContainer.SystemString2Center();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('size').value.integerValue = 1;
		m.getParameter('paddingString').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringCharAtTest() {
		MethodContainer.SystemStringCharAt m = new MethodContainer.SystemStringCharAt();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('index').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringCodePointAtTest() {
		MethodContainer.SystemStringCodePointAt m = new MethodContainer.SystemStringCodePointAt();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('index').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringCodePointBeforeTest() {
		MethodContainer.SystemStringCodePointBefore m = new MethodContainer.SystemStringCodePointBefore();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('index').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringCodePointCountTest() {
		MethodContainer.SystemStringCodePointCount m = new MethodContainer.SystemStringCodePointCount();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('beginIndex').value.integerValue = 1;
		m.getParameter('endIndex').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringCompareToTest() {
		MethodContainer.SystemStringCompareTo m = new MethodContainer.SystemStringCompareTo();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('secondString').value.stringValue = 'TEST';
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringContainsTest() {
		MethodContainer.SystemStringContains m = new MethodContainer.SystemStringContains();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringContainsAnyTest() {
		MethodContainer.SystemStringContainsAny m = new MethodContainer.SystemStringContainsAny();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('inputString').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringContainsIgnoreCaseTest() {
		MethodContainer.SystemStringContainsIgnoreCase m = new MethodContainer.SystemStringContainsIgnoreCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringContainsNoneTest() {
		MethodContainer.SystemStringContainsNone m = new MethodContainer.SystemStringContainsNone();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('inputString').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringContainsOnlyTest() {
		MethodContainer.SystemStringContainsOnly m = new MethodContainer.SystemStringContainsOnly();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('inputString').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringContainsWhitespaceTest() {
		MethodContainer.SystemStringContainsWhitespace m = new MethodContainer.SystemStringContainsWhitespace();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringCountMatchesTest() {
		MethodContainer.SystemStringCountMatches m = new MethodContainer.SystemStringCountMatches();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringDeleteWhitespaceTest() {
		MethodContainer.SystemStringDeleteWhitespace m = new MethodContainer.SystemStringDeleteWhitespace();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringDifferenceTest() {
		MethodContainer.SystemStringDifference m = new MethodContainer.SystemStringDifference();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('secondString').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringEndsWithTest() {
		MethodContainer.SystemStringEndsWith m = new MethodContainer.SystemStringEndsWith();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('suffix').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringEndsWithIgnoreCaseTest() {
		MethodContainer.SystemStringEndsWithIgnoreCase m = new MethodContainer.SystemStringEndsWithIgnoreCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('suffix').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringEqualsTest() {
		MethodContainer.SystemStringEquals m = new MethodContainer.SystemStringEquals();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('secondString').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemString2EqualsTest() {
		MethodContainer.SystemString2Equals m = new MethodContainer.SystemString2Equals();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('stringOrId').value.objectValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringEqualsIgnoreCaseTest() {
		MethodContainer.SystemStringEqualsIgnoreCase m = new MethodContainer.SystemStringEqualsIgnoreCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('secondString').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringEscapeCsvTest() {
		MethodContainer.SystemStringEscapeCsv m = new MethodContainer.SystemStringEscapeCsv();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringEscapeEcmaScriptTest() {
		MethodContainer.SystemStringEscapeEcmaScript m = new MethodContainer.SystemStringEscapeEcmaScript();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringEscapeHtml3Test() {
		MethodContainer.SystemStringEscapeHtml3 m = new MethodContainer.SystemStringEscapeHtml3();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringEscapeHtml4Test() {
		MethodContainer.SystemStringEscapeHtml4 m = new MethodContainer.SystemStringEscapeHtml4();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringEscapeJavaTest() {
		MethodContainer.SystemStringEscapeJava m = new MethodContainer.SystemStringEscapeJava();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringEscapeSingleQuotesTest() {
		MethodContainer.SystemStringEscapeSingleQuotes m = new MethodContainer.SystemStringEscapeSingleQuotes();
		m.register();
		m.getParameter('stringToEscape').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringEscapeUnicodeTest() {
		MethodContainer.SystemStringEscapeUnicode m = new MethodContainer.SystemStringEscapeUnicode();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringEscapeXmlTest() {
		MethodContainer.SystemStringEscapeXml m = new MethodContainer.SystemStringEscapeXml();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringFormatTest() {
		MethodContainer.SystemStringFormat m = new MethodContainer.SystemStringFormat();
		m.register();
		m.getParameter('stringToFormat').value.stringValue = 'TEST';
		m.getParameter('formattingArguments').value.objectListValue = new String[] { 'A', 'B', 'C' };
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringFromCharArrayTest() {
		MethodContainer.SystemStringFromCharArray m = new MethodContainer.SystemStringFromCharArray();
		m.register();
		m.getParameter('charArray').value.integerListValue = new Integer[] { 1, 2, 3 };
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringGetCharsTest() {
		MethodContainer.SystemStringGetChars m = new MethodContainer.SystemStringGetChars();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		Integer[] output = (Integer[])m.outputValue.integerListValue;
	}
	@isTest public static void SystemStringGetCommonPrefixTest() {
		MethodContainer.SystemStringGetCommonPrefix m = new MethodContainer.SystemStringGetCommonPrefix();
		m.register();
		m.getParameter('strings').value.stringListValue = new String[] { 'A', 'B', 'C' };
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringGetLevenshteinDistanceTest() {
		MethodContainer.SystemStringGetLevenshteinDistance m = new MethodContainer.SystemStringGetLevenshteinDistance();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('stringToCompare').value.stringValue = 'TEST';
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemString2GetLevenshteinDistanceTest() {
		MethodContainer.SystemString2GetLevenshteinDistance m = new MethodContainer.SystemString2GetLevenshteinDistance();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('stringToCompare').value.stringValue = 'TEST';
		m.getParameter('threshold').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringHashCodeTest() {
		MethodContainer.SystemStringHashCode m = new MethodContainer.SystemStringHashCode();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringIndexOfTest() {
		MethodContainer.SystemStringIndexOf m = new MethodContainer.SystemStringIndexOf();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemString2IndexOfTest() {
		MethodContainer.SystemString2IndexOf m = new MethodContainer.SystemString2IndexOf();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.getParameter('index').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringIndexOfAnyTest() {
		MethodContainer.SystemStringIndexOfAny m = new MethodContainer.SystemStringIndexOfAny();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringIndexOfAnyButTest() {
		MethodContainer.SystemStringIndexOfAnyBut m = new MethodContainer.SystemStringIndexOfAnyBut();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringIndexOfCharTest() {
		MethodContainer.SystemStringIndexOfChar m = new MethodContainer.SystemStringIndexOfChar();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('character').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemString2IndexOfCharTest() {
		MethodContainer.SystemString2IndexOfChar m = new MethodContainer.SystemString2IndexOfChar();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('character').value.integerValue = 1;
		m.getParameter('startIndex').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringIndexOfDifferenceTest() {
		MethodContainer.SystemStringIndexOfDifference m = new MethodContainer.SystemStringIndexOfDifference();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('stringToCompare').value.stringValue = 'TEST';
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringIndexOfIgnoreCaseTest() {
		MethodContainer.SystemStringIndexOfIgnoreCase m = new MethodContainer.SystemStringIndexOfIgnoreCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemString2IndexOfIgnoreCaseTest() {
		MethodContainer.SystemString2IndexOfIgnoreCase m = new MethodContainer.SystemString2IndexOfIgnoreCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.getParameter('startPosition').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringIsAllLowerCaseTest() {
		MethodContainer.SystemStringIsAllLowerCase m = new MethodContainer.SystemStringIsAllLowerCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringIsAllUpperCaseTest() {
		MethodContainer.SystemStringIsAllUpperCase m = new MethodContainer.SystemStringIsAllUpperCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringIsAlphaTest() {
		MethodContainer.SystemStringIsAlpha m = new MethodContainer.SystemStringIsAlpha();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringIsAlphaSpaceTest() {
		MethodContainer.SystemStringIsAlphaSpace m = new MethodContainer.SystemStringIsAlphaSpace();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringIsAlphanumericTest() {
		MethodContainer.SystemStringIsAlphanumeric m = new MethodContainer.SystemStringIsAlphanumeric();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringIsAlphanumericSpaceTest() {
		MethodContainer.SystemStringIsAlphanumericSpace m = new MethodContainer.SystemStringIsAlphanumericSpace();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringIsAsciiPrintableTest() {
		MethodContainer.SystemStringIsAsciiPrintable m = new MethodContainer.SystemStringIsAsciiPrintable();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringIsBlankTest() {
		MethodContainer.SystemStringIsBlank m = new MethodContainer.SystemStringIsBlank();
		m.register();
		m.getParameter('inputString').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringIsEmptyTest() {
		MethodContainer.SystemStringIsEmpty m = new MethodContainer.SystemStringIsEmpty();
		m.register();
		m.getParameter('inputString').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringIsNotBlankTest() {
		MethodContainer.SystemStringIsNotBlank m = new MethodContainer.SystemStringIsNotBlank();
		m.register();
		m.getParameter('inputString').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringIsNotEmptyTest() {
		MethodContainer.SystemStringIsNotEmpty m = new MethodContainer.SystemStringIsNotEmpty();
		m.register();
		m.getParameter('inputString').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringIsNumericTest() {
		MethodContainer.SystemStringIsNumeric m = new MethodContainer.SystemStringIsNumeric();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringIsNumericSpaceTest() {
		MethodContainer.SystemStringIsNumericSpace m = new MethodContainer.SystemStringIsNumericSpace();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringIsWhitespaceTest() {
		MethodContainer.SystemStringIsWhitespace m = new MethodContainer.SystemStringIsWhitespace();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringJoinTest() {
		MethodContainer.SystemStringJoin m = new MethodContainer.SystemStringJoin();
		m.register();
		m.getParameter('iterableObj').value.objectValue = new String[] { 'A', 'B', 'C' };
		m.getParameter('separator').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringLastIndexOfTest() {
		MethodContainer.SystemStringLastIndexOf m = new MethodContainer.SystemStringLastIndexOf();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemString2LastIndexOfTest() {
		MethodContainer.SystemString2LastIndexOf m = new MethodContainer.SystemString2LastIndexOf();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.getParameter('endPosition').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringLastIndexOfCharTest() {
		MethodContainer.SystemStringLastIndexOfChar m = new MethodContainer.SystemStringLastIndexOfChar();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('character').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemString2LastIndexOfCharTest() {
		MethodContainer.SystemString2LastIndexOfChar m = new MethodContainer.SystemString2LastIndexOfChar();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('character').value.integerValue = 1;
		m.getParameter('endIndex').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringLastIndexOfIgnoreCaseTest() {
		MethodContainer.SystemStringLastIndexOfIgnoreCase m = new MethodContainer.SystemStringLastIndexOfIgnoreCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemString2LastIndexOfIgnoreCaseTest() {
		MethodContainer.SystemString2LastIndexOfIgnoreCase m = new MethodContainer.SystemString2LastIndexOfIgnoreCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.getParameter('endPosition').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringLeftTest() {
		MethodContainer.SystemStringLeft m = new MethodContainer.SystemStringLeft();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('length').value.integerValue = 1;
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringLeftPadTest() {
		MethodContainer.SystemStringLeftPad m = new MethodContainer.SystemStringLeftPad();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('length').value.integerValue = 1;
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringLengthTest() {
		MethodContainer.SystemStringLength m = new MethodContainer.SystemStringLength();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringMidTest() {
		MethodContainer.SystemStringMid m = new MethodContainer.SystemStringMid();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('startIndex').value.integerValue = 1;
		m.getParameter('length').value.integerValue = 1;
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringNormalizeSpaceTest() {
		MethodContainer.SystemStringNormalizeSpace m = new MethodContainer.SystemStringNormalizeSpace();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringOffsetByCodePointsTest() {
		MethodContainer.SystemStringOffsetByCodePoints m = new MethodContainer.SystemStringOffsetByCodePoints();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('index').value.integerValue = 1;
		m.getParameter('codePointOffset').value.integerValue = 1;
		m.execute();
		Integer output = (Integer)m.outputValue.integerValue;
	}
	@isTest public static void SystemStringRemoveTest() {
		MethodContainer.SystemStringRemove m = new MethodContainer.SystemStringRemove();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringRemoveEndTest() {
		MethodContainer.SystemStringRemoveEnd m = new MethodContainer.SystemStringRemoveEnd();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringRemoveEndIgnoreCaseTest() {
		MethodContainer.SystemStringRemoveEndIgnoreCase m = new MethodContainer.SystemStringRemoveEndIgnoreCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringRemoveStartTest() {
		MethodContainer.SystemStringRemoveStart m = new MethodContainer.SystemStringRemoveStart();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringRemoveStartIgnoreCaseTest() {
		MethodContainer.SystemStringRemoveStartIgnoreCase m = new MethodContainer.SystemStringRemoveStartIgnoreCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('substring').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringRepeatTest() {
		MethodContainer.SystemStringRepeat m = new MethodContainer.SystemStringRepeat();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('numberOfTimes').value.integerValue = 1;
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemString2RepeatTest() {
		MethodContainer.SystemString2Repeat m = new MethodContainer.SystemString2Repeat();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('separator').value.stringValue = 'TEST';
		m.getParameter('numberOfTimes').value.integerValue = 1;
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringReplaceTest() {
		MethodContainer.SystemStringReplace m = new MethodContainer.SystemStringReplace();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('target').value.stringValue = 'TEST';
		m.getParameter('replacement').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringReplaceAllTest() {
		MethodContainer.SystemStringReplaceAll m = new MethodContainer.SystemStringReplaceAll();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('regExp').value.stringValue = 'TEST';
		m.getParameter('replacement').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringReplaceFirstTest() {
		MethodContainer.SystemStringReplaceFirst m = new MethodContainer.SystemStringReplaceFirst();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('regExp').value.stringValue = 'TEST';
		m.getParameter('replacement').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringReverseTest() {
		MethodContainer.SystemStringReverse m = new MethodContainer.SystemStringReverse();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringRightTest() {
		MethodContainer.SystemStringRight m = new MethodContainer.SystemStringRight();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('length').value.integerValue = 1;
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringRightPadTest() {
		MethodContainer.SystemStringRightPad m = new MethodContainer.SystemStringRightPad();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('length').value.integerValue = 1;
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringSplitTest() {
		MethodContainer.SystemStringSplit m = new MethodContainer.SystemStringSplit();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('regExp').value.stringValue = 'TEST';
		m.execute();
		String[] output = (String[])m.outputValue.stringListValue;
	}
	@isTest public static void SystemString2SplitTest() {
		MethodContainer.SystemString2Split m = new MethodContainer.SystemString2Split();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('regExp').value.stringValue = 'TEST';
		m.getParameter('limit').value.integerValue = 1;
		m.execute();
		String[] output = (String[])m.outputValue.stringListValue;
	}
	@isTest public static void SystemStringSplitByCharacterTypeTest() {
		MethodContainer.SystemStringSplitByCharacterType m = new MethodContainer.SystemStringSplitByCharacterType();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String[] output = (String[])m.outputValue.stringListValue;
	}
	@isTest public static void SystemStringSplitByCharacterTypeCamelCaseTest() {
		MethodContainer.SystemStringSplitByCharacterTypeCamelCase m = new MethodContainer.SystemStringSplitByCharacterTypeCamelCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String[] output = (String[])m.outputValue.stringListValue;
	}
	@isTest public static void SystemStringStartsWithTest() {
		MethodContainer.SystemStringStartsWith m = new MethodContainer.SystemStringStartsWith();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('prefix').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringStartsWithIgnoreCaseTest() {
		MethodContainer.SystemStringStartsWithIgnoreCase m = new MethodContainer.SystemStringStartsWithIgnoreCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('prefix').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemStringStripHtmlTagsTest() {
		MethodContainer.SystemStringStripHtmlTags m = new MethodContainer.SystemStringStripHtmlTags();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringSubstringTest() {
		MethodContainer.SystemStringSubstring m = new MethodContainer.SystemStringSubstring();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('startIndex').value.integerValue = 1;
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemString2SubstringTest() {
		MethodContainer.SystemString2Substring m = new MethodContainer.SystemString2Substring();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('startIndex').value.integerValue = 1;
		m.getParameter('endIndex').value.integerValue = 1;
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringSubstringAfterTest() {
		MethodContainer.SystemStringSubstringAfter m = new MethodContainer.SystemStringSubstringAfter();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('separator').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringSubstringAfterLastTest() {
		MethodContainer.SystemStringSubstringAfterLast m = new MethodContainer.SystemStringSubstringAfterLast();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('separator').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringSubstringBeforeTest() {
		MethodContainer.SystemStringSubstringBefore m = new MethodContainer.SystemStringSubstringBefore();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('separator').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringSubstringBeforeLastTest() {
		MethodContainer.SystemStringSubstringBeforeLast m = new MethodContainer.SystemStringSubstringBeforeLast();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('separator').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringSubstringBetweenTest() {
		MethodContainer.SystemStringSubstringBetween m = new MethodContainer.SystemStringSubstringBetween();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('tag').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemString2SubstringBetweenTest() {
		MethodContainer.SystemString2SubstringBetween m = new MethodContainer.SystemString2SubstringBetween();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('open').value.stringValue = 'TEST';
		m.getParameter('close').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringSwapCaseTest() {
		MethodContainer.SystemStringSwapCase m = new MethodContainer.SystemStringSwapCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringToLowerCaseTest() {
		MethodContainer.SystemStringToLowerCase m = new MethodContainer.SystemStringToLowerCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemString2ToLowerCaseTest() {
		MethodContainer.SystemString2ToLowerCase m = new MethodContainer.SystemString2ToLowerCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('locale').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringToUpperCaseTest() {
		MethodContainer.SystemStringToUpperCase m = new MethodContainer.SystemStringToUpperCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemString2ToUpperCaseTest() {
		MethodContainer.SystemString2ToUpperCase m = new MethodContainer.SystemString2ToUpperCase();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.getParameter('locale').value.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringTrimTest() {
		MethodContainer.SystemStringTrim m = new MethodContainer.SystemStringTrim();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringUncapitalizeTest() {
		MethodContainer.SystemStringUncapitalize m = new MethodContainer.SystemStringUncapitalize();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringUnescapeCsvTest() {
		MethodContainer.SystemStringUnescapeCsv m = new MethodContainer.SystemStringUnescapeCsv();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringUnescapeEcmaScriptTest() {
		MethodContainer.SystemStringUnescapeEcmaScript m = new MethodContainer.SystemStringUnescapeEcmaScript();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringUnescapeHtml3Test() {
		MethodContainer.SystemStringUnescapeHtml3 m = new MethodContainer.SystemStringUnescapeHtml3();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringUnescapeHtml4Test() {
		MethodContainer.SystemStringUnescapeHtml4 m = new MethodContainer.SystemStringUnescapeHtml4();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringUnescapeJavaTest() {
		MethodContainer.SystemStringUnescapeJava m = new MethodContainer.SystemStringUnescapeJava();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringUnescapeUnicodeTest() {
		MethodContainer.SystemStringUnescapeUnicode m = new MethodContainer.SystemStringUnescapeUnicode();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringUnescapeXmlTest() {
		MethodContainer.SystemStringUnescapeXml m = new MethodContainer.SystemStringUnescapeXml();
		m.register();
		m.inputValue.stringValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringValueOfTest() {
		MethodContainer.SystemStringValueOf m = new MethodContainer.SystemStringValueOf();
		m.register();
		m.getParameter('dateToConvert').value.dateValue = Date.newInstance(2023,1,1);
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemString2ValueOfTest() {
		MethodContainer.SystemString2ValueOf m = new MethodContainer.SystemString2ValueOf();
		m.register();
		m.getParameter('datetimeToConvert').value.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemString3ValueOfTest() {
		MethodContainer.SystemString3ValueOf m = new MethodContainer.SystemString3ValueOf();
		m.register();
		m.getParameter('decimalToConvert').value.decimalValue = 1;
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemString4ValueOfTest() {
		MethodContainer.SystemString4ValueOf m = new MethodContainer.SystemString4ValueOf();
		m.register();
		m.getParameter('doubleToConvert').value.doubleValue = 1;
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemString5ValueOfTest() {
		MethodContainer.SystemString5ValueOf m = new MethodContainer.SystemString5ValueOf();
		m.register();
		m.getParameter('integerToConvert').value.integerValue = 1;
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemString6ValueOfTest() {
		MethodContainer.SystemString6ValueOf m = new MethodContainer.SystemString6ValueOf();
		m.register();
		m.getParameter('longToConvert').value.longValue = 1;
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemString7ValueOfTest() {
		MethodContainer.SystemString7ValueOf m = new MethodContainer.SystemString7ValueOf();
		m.register();
		m.getParameter('toConvert').value.objectValue = 'TEST';
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemStringValueOfGmtTest() {
		MethodContainer.SystemStringValueOfGmt m = new MethodContainer.SystemStringValueOfGmt();
		m.register();
		m.getParameter('datetimeToConvert').value.datetimeValue = DateTime.newInstance(2023,1,1);
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoGetDefaultCurrencyTest() {
		MethodContainer.SystemUserInfoGetDefaultCurrency m = new MethodContainer.SystemUserInfoGetDefaultCurrency();
		m.register();
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoGetFirstNameTest() {
		MethodContainer.SystemUserInfoGetFirstName m = new MethodContainer.SystemUserInfoGetFirstName();
		m.register();
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoGetLanguageTest() {
		MethodContainer.SystemUserInfoGetLanguage m = new MethodContainer.SystemUserInfoGetLanguage();
		m.register();
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoGetLastNameTest() {
		MethodContainer.SystemUserInfoGetLastName m = new MethodContainer.SystemUserInfoGetLastName();
		m.register();
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoGetLocaleTest() {
		MethodContainer.SystemUserInfoGetLocale m = new MethodContainer.SystemUserInfoGetLocale();
		m.register();
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoGetNameTest() {
		MethodContainer.SystemUserInfoGetName m = new MethodContainer.SystemUserInfoGetName();
		m.register();
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoGetOrganizationIdTest() {
		MethodContainer.SystemUserInfoGetOrganizationId m = new MethodContainer.SystemUserInfoGetOrganizationId();
		m.register();
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoGetOrganizationNameTest() {
		MethodContainer.SystemUserInfoGetOrganizationName m = new MethodContainer.SystemUserInfoGetOrganizationName();
		m.register();
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoGetProfileIdTest() {
		MethodContainer.SystemUserInfoGetProfileId m = new MethodContainer.SystemUserInfoGetProfileId();
		m.register();
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoGetSessionIdTest() {
		MethodContainer.SystemUserInfoGetSessionId m = new MethodContainer.SystemUserInfoGetSessionId();
		m.register();
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoGetUiThemeTest() {
		MethodContainer.SystemUserInfoGetUiTheme m = new MethodContainer.SystemUserInfoGetUiTheme();
		m.register();
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoGetUiThemeDisplayedTest() {
		MethodContainer.SystemUserInfoGetUiThemeDisplayed m = new MethodContainer.SystemUserInfoGetUiThemeDisplayed();
		m.register();
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoGetUserEmailTest() {
		MethodContainer.SystemUserInfoGetUserEmail m = new MethodContainer.SystemUserInfoGetUserEmail();
		m.register();
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoGetUserIdTest() {
		MethodContainer.SystemUserInfoGetUserId m = new MethodContainer.SystemUserInfoGetUserId();
		m.register();
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoGetUserNameTest() {
		MethodContainer.SystemUserInfoGetUserName m = new MethodContainer.SystemUserInfoGetUserName();
		m.register();
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoGetUserRoleIdTest() {
		MethodContainer.SystemUserInfoGetUserRoleId m = new MethodContainer.SystemUserInfoGetUserRoleId();
		m.register();
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoGetUserTypeTest() {
		MethodContainer.SystemUserInfoGetUserType m = new MethodContainer.SystemUserInfoGetUserType();
		m.register();
		m.execute();
		String output = (String)m.outputValue.stringValue;
	}
	@isTest public static void SystemUserInfoIsCurrentUserLicensedTest() {
		MethodContainer.SystemUserInfoIsCurrentUserLicensed m = new MethodContainer.SystemUserInfoIsCurrentUserLicensed();
		m.register();
		m.getParameter('namespace').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemUserInfoIsCurrentUserLicensedForPackageTest() {
		MethodContainer.SystemUserInfoIsCurrentUserLicensedForPackage m = new MethodContainer.SystemUserInfoIsCurrentUserLicensedForPackage();
		m.register();
		m.getParameter('packageID').value.stringValue = 'TEST';
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
	@isTest public static void SystemUserInfoIsMultiCurrencyOrganizationTest() {
		MethodContainer.SystemUserInfoIsMultiCurrencyOrganization m = new MethodContainer.SystemUserInfoIsMultiCurrencyOrganization();
		m.register();
		m.execute();
		Boolean output = (Boolean)m.outputValue.booleanValue;
	}
}