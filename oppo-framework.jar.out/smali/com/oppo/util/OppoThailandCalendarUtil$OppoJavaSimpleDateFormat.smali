.class public Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;
.super Ljava/text/DateFormat;
.source "OppoThailandCalendarUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/util/OppoThailandCalendarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OppoJavaSimpleDateFormat"
.end annotation


# static fields
.field private static final FILE_FULL_PATH_NAME_FOR_THAI_CALENDAR_DIR:Ljava/lang/String; = "/data/thaicalendar/"

.field private static final FILE_FULL_PATH_NAME_FOR_THAI_CALENDAR_FILE:Ljava/lang/String; = "enable_state.properties"

.field private static final KEY_THAI_CALENDAR_ENABLE_STATE:Ljava/lang/String; = "key_thai_calendar_enable_state"

.field static final PATTERN_CHARS:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzZLc"

.field private static final RFC_822_TIMEZONE_FIELD:I = 0x12

.field private static final STAND_ALONE_DAY_OF_WEEK_FIELD:I = 0x14

.field private static final STAND_ALONE_MONTH_FIELD:I = 0x13

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x4243c9daa7c5e310L


# instance fields
.field private transient creationYear:I

.field private defaultCenturyStart:Ljava/util/Date;

.field private formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 2669
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "defaultCenturyStart"

    const-class v4, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "formatData"

    const-class v4, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "pattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1614
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 1615
    invoke-static {}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->defaultPattern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    .line 1616
    new-instance v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    .line 1617
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "pattern"

    .prologue
    .line 1630
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1631
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;)V
    .locals 1
    .parameter "template"
    .parameter "value"

    .prologue
    .line 1714
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 1715
    invoke-direct {p0, p1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 1716
    iput-object p1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    .line 1717
    invoke-virtual {p2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    .line 1718
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 3
    .parameter "template"
    .parameter "locale"

    .prologue
    .line 1730
    invoke-direct {p0, p2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 1731
    invoke-direct {p0, p1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 1732
    iput-object p1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    .line 1733
    new-instance v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-direct {v0, p2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    .line 1734
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc07040e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->setAmPmStrings([Ljava/lang/String;)V

    .line 1736
    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    const/4 v2, 0x1

    .line 1738
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 1739
    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 1740
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 1741
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 1742
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 1743
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, -0x50

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 1744
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->creationYear:I

    .line 1745
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1746
    return-void
.end method

.method private append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V
    .locals 10
    .parameter "buffer"
    .parameter "position"
    .parameter
    .parameter "format"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;CI)V"
        }
    .end annotation

    .prologue
    .line 1935
    .local p3, fields:Ljava/util/List;,"Ljava/util/List<Ljava/text/FieldPosition;>;"
    const/4 v2, -0x1

    .line 1936
    .local v2, field:I
    const-string v7, "GyMdkHmsSEDFwWahKzZLc"

    invoke-virtual {v7, p4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1937
    .local v4, index:I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    .line 1938
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown pattern character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1941
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 1942
    .local v0, beginPosition:I
    const/4 v1, 0x0

    .line 1943
    .local v1, dateFormatField:Ljava/text/DateFormat$Field;
    packed-switch v4, :pswitch_data_0

    .line 2049
    :goto_0
    const/4 v7, -0x1

    if-eq v2, v7, :cond_1

    .line 2050
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct {p0, p1, p5, v7}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 2053
    :cond_1
    if-eqz p3, :cond_7

    .line 2054
    new-instance p2, Ljava/text/FieldPosition;

    .end local p2
    invoke-direct {p2, v1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 2055
    .restart local p2
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2056
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 2057
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2067
    :cond_2
    :goto_1
    return-void

    .line 1945
    :pswitch_0
    sget-object v1, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    .line 1946
    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v7, v7, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1949
    :pswitch_1
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    .line 1950
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1957
    .local v6, year:I
    invoke-direct {p0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->isThaiCalendarEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x98b

    if-ge v6, v7, :cond_3

    .line 1958
    add-int/lit16 v6, v6, 0x21f

    .line 1961
    :cond_3
    const/4 v7, 0x2

    if-ne p5, v7, :cond_4

    .line 1962
    const/4 v7, 0x2

    rem-int/lit8 v8, v6, 0x64

    invoke-direct {p0, p1, v7, v8}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    .line 1964
    :cond_4
    invoke-direct {p0, p1, p5, v6}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    .line 1968
    .end local v6           #year:I
    :pswitch_2
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 1969
    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v7, v7, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->longStandAloneMonths:[Ljava/lang/String;

    iget-object v8, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v8, v8, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    invoke-direct {p0, p1, p5, v7, v8}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1973
    :pswitch_3
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 1974
    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v7, v7, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v8, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v8, v8, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-direct {p0, p1, p5, v7, v8}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1977
    :pswitch_4
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 1978
    const/4 v2, 0x5

    .line 1979
    goto :goto_0

    .line 1981
    :pswitch_5
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    .line 1982
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1983
    .local v3, hour:I
    if-nez v3, :cond_5

    const/16 v3, 0x18

    .end local v3           #hour:I
    :cond_5
    invoke-direct {p0, p1, p5, v3}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    .line 1986
    :pswitch_6
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    .line 1987
    const/16 v2, 0xb

    .line 1988
    goto/16 :goto_0

    .line 1990
    :pswitch_7
    sget-object v1, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    .line 1991
    const/16 v2, 0xc

    .line 1992
    goto/16 :goto_0

    .line 1994
    :pswitch_8
    sget-object v1, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    .line 1995
    const/16 v2, 0xd

    .line 1996
    goto/16 :goto_0

    .line 1998
    :pswitch_9
    sget-object v1, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    .line 1999
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2000
    .local v5, value:I
    invoke-direct {p0, p1, p5, v5}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    .line 2003
    .end local v5           #value:I
    :pswitch_a
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 2004
    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v7, v7, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->longStandAloneWeekdays:[Ljava/lang/String;

    iget-object v8, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v8, v8, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    invoke-direct {p0, p1, p5, v7, v8}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2008
    :pswitch_b
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 2009
    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v7, v7, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v8, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v8, v8, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-direct {p0, p1, p5, v7, v8}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2012
    :pswitch_c
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 2013
    const/4 v2, 0x6

    .line 2014
    goto/16 :goto_0

    .line 2016
    :pswitch_d
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    .line 2017
    const/16 v2, 0x8

    .line 2018
    goto/16 :goto_0

    .line 2020
    :pswitch_e
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 2021
    const/4 v2, 0x3

    .line 2022
    goto/16 :goto_0

    .line 2024
    :pswitch_f
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 2025
    const/4 v2, 0x4

    .line 2026
    goto/16 :goto_0

    .line 2028
    :pswitch_10
    sget-object v1, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    .line 2029
    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v7, v7, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 2032
    :pswitch_11
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    .line 2033
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2034
    .restart local v3       #hour:I
    if-nez v3, :cond_6

    const/16 v3, 0xc

    .end local v3           #hour:I
    :cond_6
    invoke-direct {p0, p1, p5, v3}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    .line 2037
    :pswitch_12
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    .line 2038
    const/16 v2, 0xa

    .line 2039
    goto/16 :goto_0

    .line 2041
    :pswitch_13
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 2042
    const/4 v7, 0x1

    invoke-direct {p0, p1, p5, v7}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendTimeZone(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_0

    .line 2045
    :pswitch_14
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 2046
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;Z)V

    goto/16 :goto_0

    .line 2060
    :cond_7
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    if-eq v7, v1, :cond_8

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getField()I

    move-result v7

    if-ne v7, v4, :cond_2

    :cond_8
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    if-nez v7, :cond_2

    .line 2063
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2064
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_1

    .line 1943
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method

.method private appendDayOfWeek(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "buffer"
    .parameter "count"
    .parameter "longs"
    .parameter "shorts"

    .prologue
    .line 2095
    const/4 v2, 0x3

    if-le p2, v2, :cond_0

    const/4 v1, 0x1

    .line 2096
    .local v1, isLong:Z
    :goto_0
    if-eqz v1, :cond_1

    move-object v0, p3

    .line 2097
    .local v0, days:[Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2098
    return-void

    .line 2095
    .end local v0           #days:[Ljava/lang/String;
    .end local v1           #isLong:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1       #isLong:Z
    :cond_1
    move-object v0, p4

    .line 2096
    goto :goto_1
.end method

.method private appendMonth(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "buffer"
    .parameter "count"
    .parameter "longs"
    .parameter "shorts"

    .prologue
    const/4 v4, 0x2

    .line 2101
    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2102
    .local v1, month:I
    if-gt p2, v4, :cond_0

    .line 2103
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 2110
    :goto_0
    return-void

    .line 2107
    :cond_0
    const/4 v3, 0x3

    if-le p2, v3, :cond_1

    const/4 v0, 0x1

    .line 2108
    .local v0, isLong:Z
    :goto_1
    if-eqz v0, :cond_2

    move-object v2, p3

    .line 2109
    .local v2, months:[Ljava/lang/String;
    :goto_2
    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2107
    .end local v0           #isLong:Z
    .end local v2           #months:[Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0       #isLong:Z
    :cond_2
    move-object v2, p4

    .line 2108
    goto :goto_2
.end method

.method private appendNumber(Ljava/lang/StringBuffer;II)V
    .locals 5
    .parameter "buffer"
    .parameter "count"
    .parameter "value"

    .prologue
    .line 2173
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v0

    .line 2174
    .local v0, minimumIntegerDigits:I
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 2175
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v1, v2, p1, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 2176
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 2177
    return-void
.end method

.method private appendNumericTimeZone(Ljava/lang/StringBuffer;Z)V
    .locals 7
    .parameter "buffer"
    .parameter "generalTimeZone"

    .prologue
    const v6, 0x36ee80

    const/4 v5, 0x2

    .line 2150
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int v0, v2, v3

    .line 2151
    .local v0, offset:I
    const/16 v1, 0x2b

    .line 2152
    .local v1, sign:C
    if-gez v0, :cond_0

    .line 2153
    const/16 v1, 0x2d

    .line 2154
    neg-int v0, v0

    .line 2156
    :cond_0
    if-eqz p2, :cond_1

    .line 2157
    const-string v2, "GMT"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2159
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2160
    div-int v2, v0, v6

    invoke-direct {p0, p1, v5, v2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 2161
    if-eqz p2, :cond_2

    .line 2162
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2164
    :cond_2
    rem-int v2, v0, v6

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-direct {p0, p1, v5, v2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 2165
    return-void
.end method

.method private appendTimeZone(Ljava/lang/StringBuffer;IZ)V
    .locals 7
    .parameter "buffer"
    .parameter "count"
    .parameter "generalTimeZone"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2122
    if-eqz p3, :cond_3

    .line 2123
    iget-object v5, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 2124
    .local v3, tz:Ljava/util/TimeZone;
    iget-object v5, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 2125
    .local v1, daylight:Z
    :goto_0
    const/4 v5, 0x4

    if-ge p2, v5, :cond_1

    .line 2126
    .local v2, style:I
    :goto_1
    iget-object v4, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-boolean v4, v4, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->customZoneStrings:Z

    if-nez v4, :cond_2

    .line 2127
    iget-object v4, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v4, v4, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v1, v2, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2144
    .end local v1           #daylight:Z
    .end local v2           #style:I
    .end local v3           #tz:Ljava/util/TimeZone;
    :goto_2
    return-void

    .restart local v3       #tz:Ljava/util/TimeZone;
    :cond_0
    move v1, v2

    .line 2124
    goto :goto_0

    .restart local v1       #daylight:Z
    :cond_1
    move v2, v4

    .line 2125
    goto :goto_1

    .line 2134
    .restart local v2       #style:I
    :cond_2
    iget-object v4, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v4, v4, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1, v2}, Llibcore/icu/TimeZones;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 2136
    .local v0, custom:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 2137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 2143
    .end local v0           #custom:Ljava/lang/String;
    .end local v1           #daylight:Z
    .end local v2           #style:I
    .end local v3           #tz:Ljava/util/TimeZone;
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;Z)V

    goto :goto_2
.end method

.method private static convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .parameter "template"
    .parameter "fromChars"
    .parameter "toChars"
    .parameter "check"

    .prologue
    .line 2632
    if-nez p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2657
    .end local p0
    :goto_0
    return-object p0

    .line 2635
    .restart local p0
    :cond_0
    const/4 v5, 0x0

    .line 2636
    .local v5, quote:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2637
    .local v4, output:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2638
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_7

    .line 2640
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2641
    .local v3, next:C
    const/16 v6, 0x27

    if-ne v3, v6, :cond_1

    .line 2642
    if-nez v5, :cond_2

    const/4 v5, 0x1

    .line 2644
    :cond_1
    :goto_2
    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, index:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_3

    .line 2645
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2638
    .end local v1           #index:I
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2642
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 2646
    :cond_3
    if-eqz p3, :cond_6

    if-nez v5, :cond_6

    const/16 v6, 0x61

    if-lt v3, v6, :cond_4

    const/16 v6, 0x7a

    if-le v3, v6, :cond_5

    :cond_4
    const/16 v6, 0x41

    if-lt v3, v6, :cond_6

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_6

    .line 2648
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid pattern character \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2651
    :cond_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2654
    .end local v3           #next:C
    :cond_7
    if-eqz v5, :cond_8

    .line 2655
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unterminated quote"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2657
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private static defaultPattern()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 1788
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 1789
    .local v0, localeData:Llibcore/icu/LocaleData;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;
    .locals 1
    .parameter "position"
    .parameter "offset"
    .parameter "zone"

    .prologue
    .line 2180
    invoke-virtual {p1, p2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2181
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2182
    const/4 v0, 0x0

    return-object v0
.end method

.method private formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 11
    .parameter "date"
    .parameter "buffer"
    .parameter "field"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 1882
    .local p4, fields:Ljava/util/List;,"Ljava/util/List<Ljava/text/FieldPosition;>;"
    const/4 v10, 0x0

    .line 1883
    .local v10, quote:Z
    const/4 v7, -0x1

    .local v7, last:I
    const/4 v5, 0x0

    .line 1884
    .local v5, count:I
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1885
    if-eqz p3, :cond_0

    .line 1886
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1887
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1890
    :cond_0
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    .line 1891
    .local v9, patternLength:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v9, :cond_b

    .line 1892
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1893
    .local v8, next:I
    const/16 v0, 0x27

    if-ne v8, v0, :cond_4

    .line 1894
    if-lez v5, :cond_1

    .line 1895
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 1896
    const/4 v5, 0x0

    .line 1898
    :cond_1
    if-ne v7, v8, :cond_2

    .line 1899
    const/16 v0, 0x27

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1900
    const/4 v7, -0x1

    .line 1904
    :goto_1
    if-nez v10, :cond_3

    const/4 v10, 0x1

    .line 1891
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1902
    :cond_2
    move v7, v8

    goto :goto_1

    .line 1904
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 1907
    :cond_4
    if-nez v10, :cond_9

    if-eq v7, v8, :cond_6

    const/16 v0, 0x61

    if-lt v8, v0, :cond_5

    const/16 v0, 0x7a

    if-le v8, v0, :cond_6

    :cond_5
    const/16 v0, 0x41

    if-lt v8, v0, :cond_9

    const/16 v0, 0x5a

    if-gt v8, v0, :cond_9

    .line 1909
    :cond_6
    if-ne v7, v8, :cond_7

    .line 1910
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1912
    :cond_7
    if-lez v5, :cond_8

    .line 1913
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 1915
    :cond_8
    move v7, v8

    .line 1916
    const/4 v5, 0x1

    goto :goto_2

    .line 1919
    :cond_9
    if-lez v5, :cond_a

    .line 1920
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 1921
    const/4 v5, 0x0

    .line 1923
    :cond_a
    const/4 v7, -0x1

    .line 1924
    int-to-char v0, v8

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1927
    .end local v8           #next:I
    :cond_b
    if-lez v5, :cond_c

    .line 1928
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 1930
    :cond_c
    return-object p2
.end method

.method private formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;
    .locals 8
    .parameter "date"

    .prologue
    .line 1842
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1843
    .local v2, buffer:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1846
    .local v3, fields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/text/FieldPosition;>;"
    const/4 v6, 0x0

    invoke-direct {p0, p1, v2, v6, v3}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 1849
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 1852
    .local v0, as:Ljava/text/AttributedString;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/FieldPosition;

    .line 1853
    .local v5, pos:Ljava/text/FieldPosition;
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    .line 1854
    .local v1, attribute:Ljava/text/Format$Field;
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v6

    invoke-virtual {v5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    invoke-virtual {v0, v1, v1, v6, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    .line 1858
    .end local v1           #attribute:Ljava/text/Format$Field;
    .end local v5           #pos:Ljava/text/FieldPosition;
    :cond_0
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v6

    return-object v6
.end method

.method private isThaiCalendarEnabled()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 2071
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 2072
    .local v3, prop:Ljava/util/Properties;
    const/4 v1, 0x0

    .line 2073
    .local v1, fis:Ljava/io/FileInputStream;
    const-string v4, "false"

    .line 2075
    .local v4, state:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/thaicalendar/enable_state.properties"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2077
    .local v0, file:Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2078
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 2079
    const-string v6, "key_thai_calendar_enable_state"

    invoke-virtual {v3, v6, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 2082
    if-eqz v2, :cond_4

    .line 2084
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 2089
    .end local v0           #file:Ljava/io/File;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    if-nez v4, :cond_3

    :cond_1
    :goto_1
    return v5

    .line 2085
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #file:Ljava/io/File;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    move-object v1, v2

    .line 2086
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 2080
    .end local v0           #file:Ljava/io/File;
    :catch_1
    move-exception v6

    .line 2082
    :goto_2
    if-eqz v1, :cond_0

    .line 2084
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2085
    :catch_2
    move-exception v6

    goto :goto_0

    .line 2082
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v1, :cond_2

    .line 2084
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2086
    :cond_2
    :goto_4
    throw v5

    .line 2089
    :cond_3
    const-string v6, "true"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    .line 2085
    :catch_3
    move-exception v6

    goto :goto_4

    .line 2082
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #file:Ljava/io/File;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 2080
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_4
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private parse(Ljava/lang/String;ICI)I
    .locals 17
    .parameter "string"
    .parameter "offset"
    .parameter "format"
    .parameter "count"

    .prologue
    .line 2230
    const-string v3, "GyMdkHmsSEDFwWahKzZLc"

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 2231
    .local v13, index:I
    const/4 v3, -0x1

    if-ne v13, v3, :cond_0

    .line 2232
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown pattern character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2234
    :cond_0
    const/4 v10, -0x1

    .line 2236
    .local v10, field:I
    const/4 v7, 0x0

    .line 2237
    .local v7, absolute:I
    if-gez p4, :cond_1

    .line 2238
    move/from16 v0, p4

    neg-int v0, v0

    move/from16 p4, v0

    .line 2239
    move/from16 v7, p4

    .line 2241
    :cond_1
    packed-switch v13, :pswitch_data_0

    .line 2337
    :goto_0
    const/4 v3, -0x1

    if-eq v10, v3, :cond_2

    .line 2338
    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v6 .. v11}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result p2

    .line 2340
    .end local p2
    :cond_2
    :goto_1
    return p2

    .line 2243
    .restart local p2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v3, v3, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p2

    goto :goto_1

    .line 2245
    :pswitch_1
    const/4 v3, 0x3

    move/from16 v0, p4

    if-lt v0, v3, :cond_3

    .line 2246
    const/4 v10, 0x1

    goto :goto_0

    .line 2248
    :cond_3
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2249
    .local v14, position:Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 2250
    .local v15, result:Ljava/lang/Number;
    if-nez v15, :cond_4

    .line 2251
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto :goto_1

    .line 2253
    :cond_4
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v16

    .line 2255
    .local v16, year:I
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    sub-int v3, v3, p2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    if-ltz v16, :cond_5

    .line 2256
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->creationYear:I

    div-int/lit8 v3, v3, 0x64

    mul-int/lit8 v3, v3, 0x64

    add-int v16, v16, v3

    .line 2257
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->creationYear:I

    move/from16 v0, v16

    if-ge v0, v3, :cond_5

    .line 2258
    add-int/lit8 v16, v16, 0x64

    .line 2261
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 2262
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto :goto_1

    .line 2266
    .end local v14           #position:Ljava/text/ParsePosition;
    .end local v15           #result:Ljava/lang/Number;
    .end local v16           #year:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v8, v3, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->longStandAloneMonths:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v9, v3, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v3 .. v9}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseMonth(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 2269
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v8, v3, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v9, v3, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v3 .. v9}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseMonth(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_1

    .line 2272
    :pswitch_4
    const/4 v10, 0x5

    .line 2273
    goto/16 :goto_0

    .line 2275
    :pswitch_5
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2276
    .restart local v14       #position:Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 2277
    .restart local v15       #result:Ljava/lang/Number;
    if-nez v15, :cond_6

    .line 2278
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto/16 :goto_1

    .line 2280
    :cond_6
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 2281
    .local v12, hour:I
    const/16 v3, 0x18

    if-ne v12, v3, :cond_7

    .line 2282
    const/4 v12, 0x0

    .line 2284
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 2285
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto/16 :goto_1

    .line 2287
    .end local v12           #hour:I
    .end local v14           #position:Ljava/text/ParsePosition;
    .end local v15           #result:Ljava/lang/Number;
    :pswitch_6
    const/16 v10, 0xb

    .line 2288
    goto/16 :goto_0

    .line 2290
    :pswitch_7
    const/16 v10, 0xc

    .line 2291
    goto/16 :goto_0

    .line 2293
    :pswitch_8
    const/16 v10, 0xd

    .line 2294
    goto/16 :goto_0

    .line 2296
    :pswitch_9
    const/16 v10, 0xe

    .line 2297
    goto/16 :goto_0

    .line 2299
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v3, v3, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->longStandAloneWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v4, v4, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_1

    .line 2302
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v3, v3, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v4, v4, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_1

    .line 2304
    :pswitch_c
    const/4 v10, 0x6

    .line 2305
    goto/16 :goto_0

    .line 2307
    :pswitch_d
    const/16 v10, 0x8

    .line 2308
    goto/16 :goto_0

    .line 2310
    :pswitch_e
    const/4 v10, 0x3

    .line 2311
    goto/16 :goto_0

    .line 2313
    :pswitch_f
    const/4 v10, 0x4

    .line 2314
    goto/16 :goto_0

    .line 2316
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v3, v3, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    const/16 v4, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_1

    .line 2318
    :pswitch_11
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2319
    .restart local v14       #position:Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 2320
    .restart local v15       #result:Ljava/lang/Number;
    if-nez v15, :cond_8

    .line 2321
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto/16 :goto_1

    .line 2323
    :cond_8
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 2324
    .restart local v12       #hour:I
    const/16 v3, 0xc

    if-ne v12, v3, :cond_9

    .line 2325
    const/4 v12, 0x0

    .line 2327
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 2328
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto/16 :goto_1

    .line 2330
    .end local v12           #hour:I
    .end local v14           #position:Ljava/text/ParsePosition;
    .end local v15           #result:Ljava/lang/Number;
    :pswitch_12
    const/16 v10, 0xa

    .line 2331
    goto/16 :goto_0

    .line 2333
    :pswitch_13
    invoke-direct/range {p0 .. p2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_1

    .line 2335
    :pswitch_14
    invoke-direct/range {p0 .. p2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_1

    .line 2241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method

.method private parseDayOfWeek(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "string"
    .parameter "offset"
    .parameter "longs"
    .parameter "shorts"

    .prologue
    const/4 v1, 0x7

    .line 2344
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v0

    .line 2345
    .local v0, index:I
    if-gez v0, :cond_0

    .line 2346
    invoke-direct {p0, p1, p2, p4, v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v0

    .line 2348
    :cond_0
    return v0
.end method

.method private parseMonth(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "string"
    .parameter "offset"
    .parameter "count"
    .parameter "absolute"
    .parameter "longs"
    .parameter "shorts"

    .prologue
    const/4 v4, 0x2

    .line 2353
    if-gt p3, v4, :cond_1

    .line 2354
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p4

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result v6

    .line 2360
    :cond_0
    :goto_0
    return v6

    .line 2356
    :cond_1
    invoke-direct {p0, p1, p2, p5, v4}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v6

    .line 2357
    .local v6, index:I
    if-gez v6, :cond_0

    .line 2358
    invoke-direct {p0, p1, p2, p6, v4}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v6

    goto :goto_0
.end method

.method private parseNumber(ILjava/lang/String;III)I
    .locals 4
    .parameter "max"
    .parameter "string"
    .parameter "offset"
    .parameter "field"
    .parameter "skew"

    .prologue
    .line 2488
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, p3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2489
    .local v0, position:Ljava/text/ParsePosition;
    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 2490
    .local v1, result:Ljava/lang/Number;
    if-nez v1, :cond_0

    .line 2491
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 2494
    :goto_0
    return v2

    .line 2493
    :cond_0
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {v2, p4, v3}, Ljava/util/Calendar;->set(II)V

    .line 2494
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    goto :goto_0
.end method

.method private parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 6
    .parameter "max"
    .parameter "string"
    .parameter "position"

    .prologue
    .line 2462
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, length:I
    const/4 v3, 0x0

    .line 2463
    .local v3, result:I
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 2464
    .local v1, index:I
    if-lez p1, :cond_0

    sub-int v4, v2, v1

    if-ge p1, v4, :cond_0

    .line 2465
    add-int v2, v1, p1

    .line 2467
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    .line 2468
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2470
    :cond_2
    if-nez p1, :cond_3

    .line 2471
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2472
    iget-object v4, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v4, p2, p3}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v4

    .line 2484
    :goto_1
    return-object v4

    .line 2475
    :cond_3
    :goto_2
    if-ge v1, v2, :cond_4

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .local v0, digit:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    .line 2476
    add-int/lit8 v1, v1, 0x1

    .line 2477
    mul-int/lit8 v4, v3, 0xa

    add-int v3, v4, v0

    goto :goto_2

    .line 2479
    .end local v0           #digit:I
    :cond_4
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-ne v1, v4, :cond_5

    .line 2480
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2481
    const/4 v4, 0x0

    goto :goto_1

    .line 2483
    :cond_5
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2484
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1
.end method

.method private parseText(Ljava/lang/String;I[Ljava/lang/String;I)I
    .locals 9
    .parameter "string"
    .parameter "offset"
    .parameter "text"
    .parameter "field"

    .prologue
    const/4 v8, -0x1

    .line 2498
    const/4 v6, -0x1

    .line 2499
    .local v6, found:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, p3

    if-ge v7, v0, :cond_3

    .line 2500
    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2499
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2503
    :cond_1
    const/4 v1, 0x1

    aget-object v3, p3, v7

    const/4 v4, 0x0

    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2506
    if-eq v6, v8, :cond_2

    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aget-object v1, p3, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 2507
    :cond_2
    move v6, v7

    goto :goto_1

    .line 2511
    :cond_3
    if-eq v6, v8, :cond_4

    .line 2512
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p4, v6}, Ljava/util/Calendar;->set(II)V

    .line 2513
    aget-object v0, p3, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    .line 2515
    :goto_2
    return v0

    :cond_4
    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private parseTimeZone(Ljava/lang/String;I)I
    .locals 23
    .parameter "string"
    .parameter "offset"

    .prologue
    .line 2519
    const-string v2, "GMT"

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    .line 2520
    .local v10, foundGMT:Z
    if-eqz v10, :cond_0

    .line 2521
    add-int/lit8 p2, p2, 0x3

    .line 2524
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, p2

    if-ge v0, v2, :cond_7

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v20

    .local v20, sign:C
    const/16 v2, 0x2b

    move/from16 v0, v20

    if-eq v0, v2, :cond_1

    const/16 v2, 0x2d

    move/from16 v0, v20

    if-ne v0, v2, :cond_7

    .line 2525
    :cond_1
    new-instance v17, Ljava/text/ParsePosition;

    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2526
    .local v17, position:Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v19

    .line 2527
    .local v19, result:Ljava/lang/Number;
    if-nez v19, :cond_2

    .line 2528
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 p2, v2, -0x1

    .line 2579
    .end local v17           #position:Ljava/text/ParsePosition;
    .end local v19           #result:Ljava/lang/Number;
    .end local v20           #sign:C
    .end local p2
    :goto_0
    return p2

    .line 2530
    .restart local v17       #position:Ljava/text/ParsePosition;
    .restart local v19       #result:Ljava/lang/Number;
    .restart local v20       #sign:C
    .restart local p2
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 2531
    .local v11, hour:I
    const v2, 0x36ee80

    mul-int v18, v11, v2

    .line 2532
    .local v18, raw:I
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result v13

    .line 2533
    .local v13, index:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v13, v2, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_6

    .line 2534
    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2535
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v19

    .line 2536
    if-nez v19, :cond_3

    .line 2537
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 p2, v2, -0x1

    goto :goto_0

    .line 2539
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v16

    .line 2540
    .local v16, minute:I
    const v2, 0xea60

    mul-int v2, v2, v16

    add-int v18, v18, v2

    .line 2544
    .end local v16           #minute:I
    :cond_4
    :goto_1
    const/16 v2, 0x2d

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    .line 2545
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    .line 2547
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    new-instance v3, Ljava/util/SimpleTimeZone;

    const-string v4, ""

    move/from16 v0, v18

    invoke-direct {v3, v0, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2548
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto :goto_0

    .line 2541
    :cond_6
    const/16 v2, 0x18

    if-lt v11, v2, :cond_4

    .line 2542
    div-int/lit8 v2, v11, 0x64

    const v3, 0x36ee80

    mul-int/2addr v2, v3

    rem-int/lit8 v3, v11, 0x64

    const v4, 0xea60

    mul-int/2addr v3, v4

    add-int v18, v2, v3

    goto :goto_1

    .line 2550
    .end local v11           #hour:I
    .end local v13           #index:I
    .end local v17           #position:Ljava/text/ParsePosition;
    .end local v18           #raw:I
    .end local v19           #result:Ljava/lang/Number;
    .end local v20           #sign:C
    :cond_7
    if-eqz v10, :cond_8

    .line 2551
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_0

    .line 2554
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-virtual {v2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v22

    .line 2555
    .local v22, zones:[[Ljava/lang/String;
    move-object/from16 v8, v22

    .local v8, arr$:[[Ljava/lang/String;
    array-length v15, v8

    .local v15, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_2
    if-ge v12, v15, :cond_e

    aget-object v9, v8, v12

    .line 2556
    .local v9, element:[Ljava/lang/String;
    const/4 v14, 0x1

    .local v14, j:I
    :goto_3
    const/4 v2, 0x5

    if-ge v14, v2, :cond_d

    .line 2557
    const/4 v3, 0x1

    aget-object v5, v9, v14

    const/4 v6, 0x0

    aget-object v2, v9, v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2558
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v21

    .line 2559
    .local v21, zone:Ljava/util/TimeZone;
    if-nez v21, :cond_9

    .line 2560
    move/from16 v0, p2

    neg-int v2, v0

    add-int/lit8 p2, v2, -0x1

    goto/16 :goto_0

    .line 2562
    :cond_9
    invoke-virtual/range {v21 .. v21}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    .line 2563
    .restart local v18       #raw:I
    const/4 v2, 0x3

    if-eq v14, v2, :cond_a

    const/4 v2, 0x4

    if-ne v14, v2, :cond_b

    .line 2572
    :cond_a
    const v2, 0x36ee80

    add-int v18, v18, v2

    .line 2574
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    new-instance v3, Ljava/util/SimpleTimeZone;

    const-string v4, ""

    move/from16 v0, v18

    invoke-direct {v3, v0, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2575
    aget-object v2, v9, v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int p2, p2, v2

    goto/16 :goto_0

    .line 2556
    .end local v18           #raw:I
    .end local v21           #zone:Ljava/util/TimeZone;
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 2555
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2579
    .end local v9           #element:[Ljava/lang/String;
    .end local v14           #j:I
    :cond_e
    move/from16 v0, p2

    neg-int v2, v0

    add-int/lit8 p2, v2, -0x1

    goto/16 :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2686
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 2687
    .local v1, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v3, "serialVersionOnStream"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    .line 2689
    .local v2, version:I
    if-lez v2, :cond_0

    .line 2690
    const-string v3, "defaultCenturyStart"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 2694
    .local v0, date:Ljava/util/Date;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 2695
    const-string v3, "formatData"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iput-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    .line 2696
    const-string v3, "pattern"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    .line 2697
    return-void

    .line 2692
    .end local v0           #date:Ljava/util/Date;
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .restart local v0       #date:Ljava/util/Date;
    goto :goto_0
.end method

.method private validateFormat(C)V
    .locals 4
    .parameter "format"

    .prologue
    .line 1641
    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1642
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1643
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown pattern character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1645
    :cond_0
    return-void
.end method

.method private validatePattern(Ljava/lang/String;)V
    .locals 8
    .parameter "template"

    .prologue
    .line 1656
    const/4 v5, 0x0

    .line 1657
    .local v5, quote:Z
    const/4 v2, -0x1

    .local v2, last:I
    const/4 v0, 0x0

    .line 1659
    .local v0, count:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1660
    .local v4, patternLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_a

    .line 1661
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1662
    .local v3, next:I
    const/16 v6, 0x27

    if-ne v3, v6, :cond_3

    .line 1663
    if-lez v0, :cond_0

    .line 1664
    int-to-char v6, v2

    invoke-direct {p0, v6}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->validateFormat(C)V

    .line 1665
    const/4 v0, 0x0

    .line 1667
    :cond_0
    if-ne v2, v3, :cond_1

    .line 1668
    const/4 v2, -0x1

    .line 1672
    :goto_1
    if-nez v5, :cond_2

    const/4 v5, 0x1

    .line 1660
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1670
    :cond_1
    move v2, v3

    goto :goto_1

    .line 1672
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 1675
    :cond_3
    if-nez v5, :cond_8

    if-eq v2, v3, :cond_5

    const/16 v6, 0x61

    if-lt v3, v6, :cond_4

    const/16 v6, 0x7a

    if-le v3, v6, :cond_5

    :cond_4
    const/16 v6, 0x41

    if-lt v3, v6, :cond_8

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_8

    .line 1677
    :cond_5
    if-ne v2, v3, :cond_6

    .line 1678
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1680
    :cond_6
    if-lez v0, :cond_7

    .line 1681
    int-to-char v6, v2

    invoke-direct {p0, v6}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->validateFormat(C)V

    .line 1683
    :cond_7
    move v2, v3

    .line 1684
    const/4 v0, 0x1

    goto :goto_2

    .line 1687
    :cond_8
    if-lez v0, :cond_9

    .line 1688
    int-to-char v6, v2

    invoke-direct {p0, v6}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->validateFormat(C)V

    .line 1689
    const/4 v0, 0x0

    .line 1691
    :cond_9
    const/4 v2, -0x1

    goto :goto_2

    .line 1694
    .end local v3           #next:I
    :cond_a
    if-lez v0, :cond_b

    .line 1695
    int-to-char v6, v2

    invoke-direct {p0, v6}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->validateFormat(C)V

    .line 1698
    :cond_b
    if-eqz v5, :cond_c

    .line 1699
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unterminated quote"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1701
    :cond_c
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2676
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 2677
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "defaultCenturyStart"

    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2678
    const-string v1, "formatData"

    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2679
    const-string v1, "pattern"

    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2680
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 2681
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 2682
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 3
    .parameter "template"

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-virtual {v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    .line 1757
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 0
    .parameter "template"

    .prologue
    .line 1768
    invoke-direct {p0, p1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 1769
    iput-object p1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    .line 1770
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1781
    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;

    .line 1782
    .local v0, clone:Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;
    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-virtual {v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iput-object v1, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    .line 1783
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1784
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1805
    if-ne p0, p1, :cond_1

    .line 1812
    :cond_0
    :goto_0
    return v1

    .line 1808
    :cond_1
    instance-of v3, p1, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;

    if-nez v3, :cond_2

    move v1, v2

    .line 1809
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1811
    check-cast v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;

    .line 1812
    .local v0, simple:Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;
    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-virtual {v3, v4}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "date"
    .parameter "buffer"
    .parameter "fieldPos"

    .prologue
    .line 2204
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 3
    .parameter "object"

    .prologue
    .line 1828
    if-nez p1, :cond_0

    .line 1829
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1831
    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 1832
    check-cast p1, Ljava/util/Date;

    .end local p1
    invoke-direct {p0, p1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    .line 1835
    :goto_0
    return-object v0

    .line 1834
    .restart local p1
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 1835
    new-instance v0, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    goto :goto_0

    .line 1837
    .restart local p1
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .locals 1

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDateFormatSymbols()Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-virtual {v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2226
    invoke-super {p0}, Ljava/text/DateFormat;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-virtual {v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->creationYear:I

    add-int/2addr v0, v1

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 15
    .parameter "string"
    .parameter "position"

    .prologue
    .line 2382
    const/4 v10, 0x0

    .line 2383
    .local v10, quote:Z
    const/4 v5, -0x1

    .local v5, last:I
    const/4 v1, 0x0

    .local v1, count:I
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    .line 2384
    .local v8, offset:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 2385
    .local v6, length:I
    iget-object v13, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    .line 2386
    iget-object v13, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v12

    .line 2387
    .local v12, zone:Ljava/util/TimeZone;
    iget-object v13, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v9

    .line 2388
    .local v9, patternLength:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v9, :cond_10

    .line 2389
    iget-object v13, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 2390
    .local v7, next:I
    const/16 v13, 0x27

    if-ne v7, v13, :cond_6

    .line 2391
    if-lez v1, :cond_1

    .line 2392
    int-to-char v13, v5

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v8, v13, v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v8

    if-gez v8, :cond_0

    .line 2393
    neg-int v13, v8

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v13, v12}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v2

    .line 2458
    .end local v7           #next:I
    :goto_1
    return-object v2

    .line 2395
    .restart local v7       #next:I
    :cond_0
    const/4 v1, 0x0

    .line 2397
    :cond_1
    if-ne v5, v7, :cond_4

    .line 2398
    if-ge v8, v6, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x27

    if-eq v13, v14, :cond_3

    .line 2399
    :cond_2
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v8, v12}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v2

    goto :goto_1

    .line 2401
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 2402
    const/4 v5, -0x1

    .line 2406
    :goto_2
    if-nez v10, :cond_5

    const/4 v10, 0x1

    .line 2388
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2404
    :cond_4
    move v5, v7

    goto :goto_2

    .line 2406
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 2409
    :cond_6
    if-nez v10, :cond_b

    if-eq v5, v7, :cond_8

    const/16 v13, 0x61

    if-lt v7, v13, :cond_7

    const/16 v13, 0x7a

    if-le v7, v13, :cond_8

    :cond_7
    const/16 v13, 0x41

    if-lt v7, v13, :cond_b

    const/16 v13, 0x5a

    if-gt v7, v13, :cond_b

    .line 2411
    :cond_8
    if-ne v5, v7, :cond_9

    .line 2412
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2414
    :cond_9
    if-lez v1, :cond_a

    .line 2415
    int-to-char v13, v5

    neg-int v14, v1

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v8, v13, v14}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v8

    if-gez v8, :cond_a

    .line 2416
    neg-int v13, v8

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v13, v12}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v2

    goto :goto_1

    .line 2419
    :cond_a
    move v5, v7

    .line 2420
    const/4 v1, 0x1

    goto :goto_3

    .line 2423
    :cond_b
    if-lez v1, :cond_d

    .line 2424
    int-to-char v13, v5

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v8, v13, v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v8

    if-gez v8, :cond_c

    .line 2425
    neg-int v13, v8

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v13, v12}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v2

    goto :goto_1

    .line 2427
    :cond_c
    const/4 v1, 0x0

    .line 2429
    :cond_d
    const/4 v5, -0x1

    .line 2430
    if-ge v8, v6, :cond_e

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v7, :cond_f

    .line 2431
    :cond_e
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v8, v12}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v2

    goto :goto_1

    .line 2433
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2436
    .end local v7           #next:I
    :cond_10
    if-lez v1, :cond_11

    .line 2437
    int-to-char v13, v5

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v8, v13, v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v8

    if-gez v8, :cond_11

    .line 2438
    neg-int v13, v8

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v13, v12}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v2

    goto/16 :goto_1

    .line 2445
    :cond_11
    :try_start_0
    iget-object v13, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 2446
    .local v11, year:I
    const/16 v13, 0x98b

    if-le v11, v13, :cond_12

    .line 2447
    add-int/lit16 v11, v11, -0x21f

    .line 2448
    iget-object v13, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14, v11}, Ljava/util/Calendar;->set(II)V

    .line 2452
    :cond_12
    iget-object v13, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2456
    .local v2, date:Ljava/util/Date;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2457
    iget-object v13, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v13, v12}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_1

    .line 2453
    .end local v2           #date:Ljava/util/Date;
    .end local v11           #year:I
    :catch_0
    move-exception v3

    .line 2454
    .local v3, e:Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v8, v12}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v2

    goto/16 :goto_1
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .locals 2
    .parameter "date"

    .prologue
    .line 2606
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 2607
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 2608
    .local v0, cal:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2609
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->creationYear:I

    .line 2610
    return-void
.end method

.method public setDateFormatSymbols(Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 2618
    invoke-virtual {p1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    .line 2619
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    iget-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->formatData:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-virtual {v2}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2666
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoJavaSimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method
