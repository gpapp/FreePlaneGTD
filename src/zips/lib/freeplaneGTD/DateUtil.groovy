//=========================================================
// Freeplane GTD
//
// Utility classes for parsing dates, etc.
//
// Version 1.0-beta
//
// Copyright (c)2014 Gergely Papp
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
//=========================================================
package freeplaneGTD

import org.freeplane.features.format.FormattedDate
import org.freeplane.plugin.script.proxy.ConvertibleDate
import org.freeplane.plugin.script.proxy.ConvertibleText

import java.text.SimpleDateFormat

import static java.util.Calendar.YEAR

class DateUtil {
    public static final SimpleDateFormat stdFormat = new SimpleDateFormat('yyyy-MM-dd')

    private static final def DATE_FORMAT_REGEXPS = [
            // System date parsing
            '^\\d{4}-\\d{1,2}-\\d{1,2}t\\d{1,2}:\\d{2}\\+\\d{4}$'       : new SimpleDateFormat('yyyy-MM-dd\'T\'HH:mmZ'),
            '^\\d{4}-\\d{1,2}-\\d{1,2}t\\d{1,2}:\\d{2}:\\d{2}\\+\\d{4}$': new SimpleDateFormat('yyyy-MM-dd\'T\'HH:mm:ssZ'),
            '^\\d{8}$'                                                  : new SimpleDateFormat('yyyyMMdd'),
            // Short date parsing
            '^\\d{1,2}\\ \\d{1,2}$'                                     : new SimpleDateFormat('MM dd'),
            '^\\d{1,2}\\/\\d{1,2}$'                                     : new SimpleDateFormat('MM/dd'),
            '^\\d{1,2}\\.\\d{1,2}$'                                     : new SimpleDateFormat('MM.dd'),
            '^\\d{1,2}\\.\\d{1,2}\\.$'                                  : new SimpleDateFormat('MM.dd.'),
            // Medium date parsing
            '^\\d{1,2}-\\d{1,2}-\\d{1,2}$'                              : new SimpleDateFormat('yy-MM-dd'),
            '^\\d{1,2}\\ \\d{1,2}\\ \\d{1,2}$'                          : new SimpleDateFormat('yy MM dd'),
            '^\\d{1,2}\\/\\d{1,2}\\/\\d{1,2}$'                          : new SimpleDateFormat('MM/dd/yy'),
            '^\\d{1,2}\\.\\d{1,2}\\.\\d{1,2}$'                          : new SimpleDateFormat('yy.MM.dd'),
            '^\\d{1,2}\\.\\d{1,2}\\.\\d{1,2}\\.$'                       : new SimpleDateFormat('yy.MM.dd.'),
            // Date parsing
            '^\\d{1,2}-\\d{1,2}-\\d{4}$'                                : new SimpleDateFormat('dd-MM-yyyy'),
            '^\\d{4}-\\d{1,2}-\\d{1,2}$': stdFormat,
            '^\\d{1,2}/\\d{1,2}/\\d{4}$'                                : new SimpleDateFormat('MM/dd/yyyy'),
            '^\\d{4}/\\d{1,2}/\\d{1,2}$'                                : new SimpleDateFormat('yyyy/MM/dd'),
            '^\\d{4}\\.\\d{1,2}\\.\\d{1,2}$'                            : new SimpleDateFormat('yyyy.MM.dd'),
            '^\\d{4}\\.\\d{1,2}\\.\\d{1,2}\\.$'                         : new SimpleDateFormat('yyyy.MM.dd.'),
            '^\\d{1,2}\\s[a-z]{3}\\s\\d{4}$'                            : new SimpleDateFormat('dd MMM yyyy'),
            '^\\d{1,2}\\s[a-z]{4,}\\s\\d{4}$'                           : new SimpleDateFormat('dd MMMM yyyy'),
            // Timestamp parsing
            '^\\d{12}$'                                                 : new SimpleDateFormat('yyyyMMddHHmm'),
            '^\\d{8}\\s\\d{4}$'                                         : new SimpleDateFormat('yyyyMMdd HHmm'),
            '^\\d{1,2}-\\d{1,2}-\\d{4}\\s\\d{1,2}:\\d{2}$'              : new SimpleDateFormat('dd-MM-yyyy HH:mm'),
            '^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{2}$'              : new SimpleDateFormat('yyyy-MM-dd HH:mm'),
            '^\\d{1,2}/\\d{1,2}/\\d{4}\\s\\d{1,2}:\\d{2}$'              : new SimpleDateFormat('MM/dd/yyyy HH:mm'),
            '^\\d{4}/\\d{1,2}/\\d{1,2}\\s\\d{1,2}:\\d{2}$'              : new SimpleDateFormat('yyyy/MM/dd HH:mm'),
            '^\\d{1,2}\\s[a-z]{3}\\s\\d{4}\\s\\d{1,2}:\\d{2}$'          : new SimpleDateFormat('dd MMM yyyy HH:mm'),
            '^\\d{1,2}\\s[a-z]{4,}\\s\\d{4}\\s\\d{1,2}:\\d{2}$'         : new SimpleDateFormat('dd MMMM yyyy HH:mm'),
            '^\\d{14}$'                                                 : new SimpleDateFormat('yyyyMMddHHmmss'),
            '^\\d{8}\\s\\d{6}$'                                         : new SimpleDateFormat('yyyyMMdd HHmmss'),
            '^\\d{1,2}-\\d{1,2}-\\d{4}\\s\\d{1,2}:\\d{2}:\\d{2}$'       : new SimpleDateFormat('dd-MM-yyyy HH:mm:ss'),
            '^\\d{4}-\\d{1,2}-\\d{1,2}\\s\\d{1,2}:\\d{2}:\\d{2}$'       : new SimpleDateFormat('yyyy-MM-dd HH:mm:ss'),
            '^\\d{1,2}/\\d{1,2}/\\d{4}\\s\\d{1,2}:\\d{2}:\\d{2}$'       : new SimpleDateFormat('MM/dd/yyyy HH:mm:ss'),
            '^\\d{4}/\\d{1,2}/\\d{1,2}\\s\\d{1,2}:\\d{2}:\\d{2}$'       : new SimpleDateFormat('yyyy/MM/dd HH:mm:ss'),
            '^\\d{1,2}\\s[a-z]{3}\\s\\d{4}\\s\\d{1,2}:\\d{2}:\\d{2}$'   : new SimpleDateFormat('dd MMM yyyy HH:mm:ss'),
            '^\\d{1,2}\\s[a-z]{4,}\\s\\d{4}\\s\\d{1,2}:\\d{2}:\\d{2}$'  : new SimpleDateFormat('dd MMMM yyyy HH:mm:ss'),
    ];

    /**
     * Determine SimpleDateFormat pattern matching with the given date string. Returns null if
     * format is unknown. You can simply extend DateUtil with more formats if needed.
     * @param dateString The date string to determine the SimpleDateFormat pattern for.
     * @return The matching SimpleDateFormat pattern, or null if format is unknown.
     * @see SimpleDateFormat
     */
    public static SimpleDateFormat determineDateFormat(String dateString) {
        for (key in DATE_FORMAT_REGEXPS.keySet()) {
            if (dateString.toLowerCase().matches(key)) {
                return DATE_FORMAT_REGEXPS[key];
            }
        }
        return null; // Unknown format.
    }


    static Object normalizeDate(Date date) {
        return date
    }

    static Object normalizeDate(String dateString) {
        String field = dateString.trim();
        SimpleDateFormat fmt = determineDateFormat(field);
        if (fmt != null) {
            Date date = fmt.parse(dateString);
            if (fmt.toPattern().indexOf('y') < 0) {
                Date now = new Date();
                date[YEAR] = now[YEAR];
            }
            if (date[YEAR] < 100) {
                date[YEAR] += 2000;
            }
            return new FormattedDate(date.getTime(), stdFormat)
        } else {
            return field
        }
    }

    static Object normalizeDate(ConvertibleDate date) {
        return date.date
    }

    static Object normalizeDate(ConvertibleText date) {
        return normalizeDate(date.text)
    }
}