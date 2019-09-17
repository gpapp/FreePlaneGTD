package freeplaneGTD

import org.junit.Test

import java.text.SimpleDateFormat

class DateUtilTest {

    int currentYear = Calendar.instance.get(Calendar.YEAR)
    Map goodresults = [
            ['v1.1', 'v1.1']                  : null,
            ['11 23', currentYear+'-11-23'] : 'MM dd',
            ['11/23', currentYear+'-11-23'] : 'MM/dd',
            ['11.23', currentYear+'-11-23'] : 'MM.dd',
            ['11.23.', currentYear+'-11-23']: 'MM.dd.',

            ['14-11-23', '2014-11-23']        : 'yy-MM-dd',
            ['14 11 23', '2014-11-23']        : 'yy MM dd',
            ['1/2/3', '2003-01-02'] : 'MM/dd/yy',
            ['11/23/14', '2014-11-23']        : 'MM/dd/yy',
            ['14.11.23', '2014-11-23']        : 'yy.MM.dd',
            ['14.11.23.', '2014-11-23']       : 'yy.MM.dd.',

            ['23-11-2014', '2014-11-23']      : 'dd-MM-yyyy',
            ['2014-11-23', '2014-11-23']      : 'yyyy-MM-dd',
            ['11/23/2014', '2014-11-23']      : 'MM/dd/yyyy',
            ['2014/11/23', '2014-11-23']      : 'yyyy/MM/dd',
            ['2014.11.23', '2014-11-23']      : 'yyyy.MM.dd',
            ['2014.11.23.', '2014-11-23']     : 'yyyy.MM.dd.',
            //		'23 NOV 2014':	'dd MMM yyyy',
            ['23 November 2014', '2014-11-23']: 'dd MMMM yyyy',
    ]

    @Test
    void testDetermineDateFormat() {
        goodresults.each { value, result ->
            if (result == null) {
                assert (result == DateUtil.determineDateFormat(value[0]))
            } else {
                SimpleDateFormat determineDateFormat = DateUtil.determineDateFormat(value[0])
                assert (null != determineDateFormat): 'Error parsing: ' + value[0]
                assert (result == determineDateFormat.toPattern())
            }
        }
    }

    @Test
    void testNormalizeDate() {

        goodresults.each { value, result ->
            if (result == null) {
                assert (value[1] == DateUtil.normalizeDate(value[0]))
            } else {
                Date tocheck = DateUtil.stdFormat.parse(value[1])
                assert (tocheck.equals(DateUtil.normalizeDate(value[0]))): 'Error parsing: ' + value[1] + ' normalizedDate: ' + DateUtil.normalizeDate(value[0])
            }
        }
    }
}
