package com.apkfuns.logutils.pattern;

import com.apkfuns.logutils.utils.Utils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public abstract class LogPattern {
    private final int count;
    private final int length;

    protected abstract String doApply(StackTraceElement stackTraceElement);

    protected boolean isCallerNeeded() {
        return false;
    }

    public static class PlainLogPattern extends LogPattern {
        private final String string;

        public PlainLogPattern(int i, int i2, String str) {
            super(i, i2);
            this.string = str;
        }

        @Override // com.apkfuns.logutils.pattern.LogPattern
        protected String doApply(StackTraceElement stackTraceElement) {
            return this.string;
        }
    }

    public static class DateLogPattern extends LogPattern {
        private final SimpleDateFormat dateFormat;

        public DateLogPattern(int i, int i2, String str) {
            super(i, i2);
            if (str != null) {
                this.dateFormat = new SimpleDateFormat(str);
            } else {
                this.dateFormat = new SimpleDateFormat("HH:mm:ss.SSS");
            }
        }

        @Override // com.apkfuns.logutils.pattern.LogPattern
        protected String doApply(StackTraceElement stackTraceElement) {
            return this.dateFormat.format(new Date());
        }
    }

    public static class CallerLogPattern extends LogPattern {
        private int callerCount;
        private int callerLength;

        @Override // com.apkfuns.logutils.pattern.LogPattern
        protected boolean isCallerNeeded() {
            return true;
        }

        public CallerLogPattern(int i, int i2, int i3, int i4) {
            super(i, i2);
            this.callerCount = i3;
            this.callerLength = i4;
        }

        @Override // com.apkfuns.logutils.pattern.LogPattern
        protected String doApply(StackTraceElement stackTraceElement) {
            String str;
            if (stackTraceElement == null) {
                throw new IllegalArgumentException("Caller not found");
            }
            if (stackTraceElement.getLineNumber() < 0) {
                str = String.format("%s#%s", stackTraceElement.getClassName(), stackTraceElement.getMethodName());
            } else {
                String string = stackTraceElement.toString();
                str = String.format("%s.%s%s", stackTraceElement.getClassName(), stackTraceElement.getMethodName(), string.substring(string.lastIndexOf(40), string.length()));
            }
            try {
                return Utils.shortenClassName(str, this.callerCount, this.callerLength);
            } catch (Exception e) {
                return e.getMessage();
            }
        }
    }

    public static class ConcatenateLogPattern extends LogPattern {
        private final List<LogPattern> patternList;

        public ConcatenateLogPattern(int i, int i2, List<LogPattern> list) {
            super(i, i2);
            this.patternList = new ArrayList(list);
        }

        public void addPattern(LogPattern logPattern) {
            this.patternList.add(logPattern);
        }

        @Override // com.apkfuns.logutils.pattern.LogPattern
        protected String doApply(StackTraceElement stackTraceElement) {
            StringBuilder sb = new StringBuilder();
            Iterator<LogPattern> it = this.patternList.iterator();
            while (it.hasNext()) {
                sb.append(it.next().apply(stackTraceElement));
            }
            return sb.toString();
        }

        @Override // com.apkfuns.logutils.pattern.LogPattern
        protected boolean isCallerNeeded() {
            Iterator<LogPattern> it = this.patternList.iterator();
            while (it.hasNext()) {
                if (it.next().isCallerNeeded()) {
                    return true;
                }
            }
            return false;
        }
    }

    public static class ThreadNameLogPattern extends LogPattern {
        public ThreadNameLogPattern(int i, int i2) {
            super(i, i2);
        }

        @Override // com.apkfuns.logutils.pattern.LogPattern
        protected String doApply(StackTraceElement stackTraceElement) {
            return Thread.currentThread().getName();
        }
    }

    private LogPattern(int i, int i2) {
        this.count = i;
        this.length = i2;
    }

    public final String apply(StackTraceElement stackTraceElement) {
        return Utils.shorten(doApply(stackTraceElement), this.count, this.length);
    }

    public static LogPattern compile(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new Compiler().compile(str);
        } catch (Exception unused) {
            return new PlainLogPattern(0, 0, str);
        }
    }

    public static class Compiler {
        private String patternString;
        private int position;
        private List<ConcatenateLogPattern> queue;
        public static final Pattern PERCENT_PATTERN = Pattern.compile("%%");
        public static final Pattern NEWLINE_PATTERN = Pattern.compile("%n");
        public static final Pattern CALLER_PATTERN = Pattern.compile("%([+-]?\\d+)?(\\.([+-]?\\d+))?caller(\\{([+-]?\\d+)?(\\.([+-]?\\d+))?\\})?");
        public static final Pattern DATE_PATTERN = Pattern.compile("%date(\\{(.*?)\\})?");
        public static final Pattern CONCATENATE_PATTERN = Pattern.compile("%([+-]?\\d+)?(\\.([+-]?\\d+))?\\(");
        public static final Pattern DATE_PATTERN_SHORT = Pattern.compile("%d(\\{(.*?)\\})?");
        public static final Pattern CALLER_PATTERN_SHORT = Pattern.compile("%([+-]?\\d+)?(\\.([+-]?\\d+))?c(\\{([+-]?\\d+)?(\\.([+-]?\\d+))?\\})?");
        public static final Pattern THREAD_NAME_PATTERN = Pattern.compile("%([+-]?\\d+)?(\\.([+-]?\\d+))?thread");
        public static final Pattern THREAD_NAME_PATTERN_SHORT = Pattern.compile("%([+-]?\\d+)?(\\.([+-]?\\d+))?t");

        public LogPattern compile(String str) throws NumberFormatException {
            if (str == null) {
                return null;
            }
            this.position = 0;
            this.patternString = str;
            this.queue = new ArrayList();
            this.queue.add(new ConcatenateLogPattern(0, 0, new ArrayList()));
            while (true) {
                int length = str.length();
                int i = this.position;
                if (length <= i) {
                    break;
                }
                int iIndexOf = str.indexOf("%", i);
                int iIndexOf2 = str.indexOf(")", this.position);
                if (this.queue.size() > 1 && iIndexOf2 < iIndexOf) {
                    List<ConcatenateLogPattern> list = this.queue;
                    list.get(list.size() - 1).addPattern(new PlainLogPattern(0, 0, str.substring(this.position, iIndexOf2)));
                    ConcatenateLogPattern concatenateLogPattern = this.queue.get(r3.size() - 2);
                    List<ConcatenateLogPattern> list2 = this.queue;
                    concatenateLogPattern.addPattern(list2.remove(list2.size() - 1));
                    this.position = iIndexOf2 + 1;
                }
                if (iIndexOf == -1) {
                    List<ConcatenateLogPattern> list3 = this.queue;
                    list3.get(list3.size() - 1).addPattern(new PlainLogPattern(0, 0, str.substring(this.position)));
                    break;
                }
                List<ConcatenateLogPattern> list4 = this.queue;
                list4.get(list4.size() - 1).addPattern(new PlainLogPattern(0, 0, str.substring(this.position, iIndexOf)));
                this.position = iIndexOf;
                parse();
            }
            return this.queue.get(0);
        }

        private void parse() throws NumberFormatException {
            Matcher matcherFindPattern = findPattern(PERCENT_PATTERN);
            if (matcherFindPattern != null) {
                List<ConcatenateLogPattern> list = this.queue;
                list.get(list.size() - 1).addPattern(new PlainLogPattern(0, 0, "%"));
                this.position = matcherFindPattern.end();
                return;
            }
            Matcher matcherFindPattern2 = findPattern(NEWLINE_PATTERN);
            if (matcherFindPattern2 != null) {
                List<ConcatenateLogPattern> list2 = this.queue;
                list2.get(list2.size() - 1).addPattern(new PlainLogPattern(0, 0, "\n"));
                this.position = matcherFindPattern2.end();
                return;
            }
            Matcher matcherFindPattern3 = findPattern(CALLER_PATTERN);
            if (matcherFindPattern3 != null || (matcherFindPattern3 = findPattern(CALLER_PATTERN_SHORT)) != null) {
                int i = Integer.parseInt(matcherFindPattern3.group(1) == null ? "0" : matcherFindPattern3.group(1));
                int i2 = Integer.parseInt(matcherFindPattern3.group(3) == null ? "0" : matcherFindPattern3.group(3));
                int i3 = Integer.parseInt(matcherFindPattern3.group(5) == null ? "0" : matcherFindPattern3.group(5));
                int i4 = Integer.parseInt(matcherFindPattern3.group(7) != null ? matcherFindPattern3.group(7) : "0");
                List<ConcatenateLogPattern> list3 = this.queue;
                list3.get(list3.size() - 1).addPattern(new CallerLogPattern(i, i2, i3, i4));
                this.position = matcherFindPattern3.end();
                return;
            }
            Matcher matcherFindPattern4 = findPattern(DATE_PATTERN);
            if (matcherFindPattern4 != null || (matcherFindPattern4 = findPattern(DATE_PATTERN_SHORT)) != null) {
                String strGroup = matcherFindPattern4.group(2);
                List<ConcatenateLogPattern> list4 = this.queue;
                list4.get(list4.size() - 1).addPattern(new DateLogPattern(0, 0, strGroup));
                this.position = matcherFindPattern4.end();
                return;
            }
            Matcher matcherFindPattern5 = findPattern(THREAD_NAME_PATTERN);
            if (matcherFindPattern5 != null || (matcherFindPattern5 = findPattern(THREAD_NAME_PATTERN_SHORT)) != null) {
                int i5 = Integer.parseInt(matcherFindPattern5.group(1) == null ? "0" : matcherFindPattern5.group(1));
                int i6 = Integer.parseInt(matcherFindPattern5.group(3) != null ? matcherFindPattern5.group(3) : "0");
                List<ConcatenateLogPattern> list5 = this.queue;
                list5.get(list5.size() - 1).addPattern(new ThreadNameLogPattern(i5, i6));
                this.position = matcherFindPattern5.end();
                return;
            }
            Matcher matcherFindPattern6 = findPattern(CONCATENATE_PATTERN);
            if (matcherFindPattern6 != null) {
                this.queue.add(new ConcatenateLogPattern(Integer.parseInt(matcherFindPattern6.group(1) == null ? "0" : matcherFindPattern6.group(1)), Integer.parseInt(matcherFindPattern6.group(3) != null ? matcherFindPattern6.group(3) : "0"), new ArrayList()));
                this.position = matcherFindPattern6.end();
                return;
            }
            throw new IllegalArgumentException();
        }

        private Matcher findPattern(Pattern pattern) {
            Matcher matcher = pattern.matcher(this.patternString);
            if (matcher.find(this.position) && matcher.start() == this.position) {
                return matcher;
            }
            return null;
        }
    }

    public static class Log2FileNamePattern {
        private Date date = new Date();
        private String patternString;

        public Log2FileNamePattern(String str) {
            this.patternString = str;
        }

        public String doApply() {
            String strReplace = this.patternString;
            if (strReplace == null) {
                return null;
            }
            Matcher matcher = Compiler.DATE_PATTERN_SHORT.matcher(this.patternString);
            while (matcher.find()) {
                strReplace = strReplace.replace(matcher.group(0), new SimpleDateFormat(matcher.group(2)).format(this.date));
            }
            return strReplace;
        }
    }
}
