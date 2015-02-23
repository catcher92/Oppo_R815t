.class public Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;
.super Ljava/lang/Object;
.source "OppoThailandCalendarUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/util/OppoThailandCalendarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OppoAndroidDateUtils"
.end annotation


# static fields
.field private static final DMY:I = 0x3

.field private static final MDY:I = 0x2

.field private static final YMD:I = 0x1

.field private static final sameMonthTable_dmy:[I

.field private static final sameMonthTable_mdy:[I

.field private static final sameMonthTable_ymd:[I

.field private static final sameYearTable_dmy:[I

.field private static final sameYearTable_mdy:[I

.field private static final sameYearTable_ymd:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 130
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->sameYearTable_ymd:[I

    .line 146
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->sameYearTable_mdy:[I

    .line 162
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->sameYearTable_dmy:[I

    .line 179
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->sameMonthTable_ymd:[I

    .line 195
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->sameMonthTable_mdy:[I

    .line 211
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->sameMonthTable_dmy:[I

    return-void

    .line 130
    nop

    :array_0
    .array-data 0x4
        0xd4t 0x4t 0x4t 0xct
        0xd7t 0x4t 0x4t 0xct
        0xdat 0x4t 0x4t 0xct
        0xddt 0x4t 0x4t 0xct
        0xe0t 0x4t 0x4t 0xct
        0xe3t 0x4t 0x4t 0xct
        0xe6t 0x4t 0x4t 0xct
        0xe9t 0x4t 0x4t 0xct
        0xect 0x4t 0x4t 0xct
        0xeft 0x4t 0x4t 0xct
        0xf2t 0x4t 0x4t 0xct
        0xf5t 0x4t 0x4t 0xct
        0xf8t 0x4t 0x4t 0xct
        0xfbt 0x4t 0x4t 0xct
        0xfet 0x4t 0x4t 0xct
        0x1t 0x5t 0x4t 0xct
    .end array-data

    .line 146
    :array_1
    .array-data 0x4
        0xd5t 0x4t 0x4t 0xct
        0xd8t 0x4t 0x4t 0xct
        0xdbt 0x4t 0x4t 0xct
        0xdet 0x4t 0x4t 0xct
        0xe1t 0x4t 0x4t 0xct
        0xe4t 0x4t 0x4t 0xct
        0xe7t 0x4t 0x4t 0xct
        0xeat 0x4t 0x4t 0xct
        0xedt 0x4t 0x4t 0xct
        0xf0t 0x4t 0x4t 0xct
        0xf3t 0x4t 0x4t 0xct
        0xf6t 0x4t 0x4t 0xct
        0xf9t 0x4t 0x4t 0xct
        0xfct 0x4t 0x4t 0xct
        0xfft 0x4t 0x4t 0xct
        0x2t 0x5t 0x4t 0xct
    .end array-data

    .line 162
    :array_2
    .array-data 0x4
        0xd6t 0x4t 0x4t 0xct
        0xd9t 0x4t 0x4t 0xct
        0xdct 0x4t 0x4t 0xct
        0xdft 0x4t 0x4t 0xct
        0xe2t 0x4t 0x4t 0xct
        0xe5t 0x4t 0x4t 0xct
        0xe8t 0x4t 0x4t 0xct
        0xebt 0x4t 0x4t 0xct
        0xeet 0x4t 0x4t 0xct
        0xf1t 0x4t 0x4t 0xct
        0xf4t 0x4t 0x4t 0xct
        0xf7t 0x4t 0x4t 0xct
        0xfat 0x4t 0x4t 0xct
        0xfdt 0x4t 0x4t 0xct
        0x0t 0x5t 0x4t 0xct
        0x3t 0x5t 0x4t 0xct
    .end array-data

    .line 179
    :array_3
    .array-data 0x4
        0x4t 0x5t 0x4t 0xct
        0x7t 0x5t 0x4t 0xct
        0xat 0x5t 0x4t 0xct
        0xdt 0x5t 0x4t 0xct
        0x10t 0x5t 0x4t 0xct
        0x13t 0x5t 0x4t 0xct
        0x16t 0x5t 0x4t 0xct
        0x19t 0x5t 0x4t 0xct
        0xect 0x4t 0x4t 0xct
        0xeft 0x4t 0x4t 0xct
        0xf2t 0x4t 0x4t 0xct
        0xf5t 0x4t 0x4t 0xct
        0xf8t 0x4t 0x4t 0xct
        0xfbt 0x4t 0x4t 0xct
        0xfet 0x4t 0x4t 0xct
        0x1t 0x5t 0x4t 0xct
    .end array-data

    .line 195
    :array_4
    .array-data 0x4
        0x5t 0x5t 0x4t 0xct
        0x8t 0x5t 0x4t 0xct
        0xbt 0x5t 0x4t 0xct
        0xet 0x5t 0x4t 0xct
        0x11t 0x5t 0x4t 0xct
        0x14t 0x5t 0x4t 0xct
        0x17t 0x5t 0x4t 0xct
        0x1at 0x5t 0x4t 0xct
        0xedt 0x4t 0x4t 0xct
        0xf0t 0x4t 0x4t 0xct
        0xf3t 0x4t 0x4t 0xct
        0xf6t 0x4t 0x4t 0xct
        0xf9t 0x4t 0x4t 0xct
        0xfct 0x4t 0x4t 0xct
        0xfft 0x4t 0x4t 0xct
        0x2t 0x5t 0x4t 0xct
    .end array-data

    .line 211
    :array_5
    .array-data 0x4
        0x6t 0x5t 0x4t 0xct
        0x9t 0x5t 0x4t 0xct
        0xct 0x5t 0x4t 0xct
        0xft 0x5t 0x4t 0xct
        0x12t 0x5t 0x4t 0xct
        0x15t 0x5t 0x4t 0xct
        0x18t 0x5t 0x4t 0xct
        0x1bt 0x5t 0x4t 0xct
        0xeet 0x4t 0x4t 0xct
        0xf1t 0x4t 0x4t 0xct
        0xf4t 0x4t 0x4t 0xct
        0xf7t 0x4t 0x4t 0xct
        0xfat 0x4t 0x4t 0xct
        0xfdt 0x4t 0x4t 0xct
        0x0t 0x5t 0x4t 0xct
        0x3t 0x5t 0x4t 0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDateRangeForSetting(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 293
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v1, f:Ljava/util/Formatter;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 294
    invoke-static/range {v0 .. v6}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->formatDateRangeForSetting(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRangeForSetting(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 8
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 441
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->formatDateRangeForSetting(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRangeForSetting(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .locals 70
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"
    .parameter "timeZone"

    .prologue
    .line 592
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v41

    .line 594
    .local v41, res:Landroid/content/res/Resources;
    and-int/lit8 v66, p6, 0x1

    if-eqz v66, :cond_7

    const/16 v44, 0x1

    .line 595
    .local v44, showTime:Z
    :goto_0
    and-int/lit8 v66, p6, 0x2

    if-eqz v66, :cond_8

    const/16 v45, 0x1

    .line 596
    .local v45, showWeekDay:Z
    :goto_1
    and-int/lit8 v66, p6, 0x4

    if-eqz v66, :cond_9

    const/16 v46, 0x1

    .line 597
    .local v46, showYear:Z
    :goto_2
    and-int/lit8 v66, p6, 0x8

    if-eqz v66, :cond_a

    const/16 v38, 0x1

    .line 598
    .local v38, noYear:Z
    :goto_3
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x2000

    move/from16 v66, v0

    if-eqz v66, :cond_b

    const/16 v64, 0x1

    .line 599
    .local v64, useUTC:Z
    :goto_4
    const v66, 0x88000

    and-int v66, v66, p6

    if-eqz v66, :cond_c

    const/4 v6, 0x1

    .line 600
    .local v6, abbrevWeekDay:Z
    :goto_5
    const/high16 v66, 0x9

    and-int v66, v66, p6

    if-eqz v66, :cond_d

    const/4 v4, 0x1

    .line 601
    .local v4, abbrevMonth:Z
    :goto_6
    and-int/lit8 v66, p6, 0x20

    if-eqz v66, :cond_e

    const/16 v36, 0x1

    .line 602
    .local v36, noMonthDay:Z
    :goto_7
    const/high16 v66, 0x2

    and-int v66, v66, p6

    if-eqz v66, :cond_f

    const/16 v39, 0x1

    .line 604
    .local v39, numericDate:Z
    :goto_8
    cmp-long v66, p2, p4

    if-nez v66, :cond_10

    const/16 v32, 0x1

    .line 607
    .local v32, isInstant:Z
    :goto_9
    if-eqz p7, :cond_11

    .line 608
    new-instance v47, Landroid/text/format/Time;

    move-object/from16 v0, v47

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 614
    .local v47, startDate:Landroid/text/format/Time;
    :goto_a
    move-object/from16 v0, v47

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 618
    if-eqz v32, :cond_13

    .line 619
    move-object/from16 v15, v47

    .line 620
    .local v15, endDate:Landroid/text/format/Time;
    const/4 v13, 0x0

    .line 635
    .local v13, dayDistance:I
    :goto_b
    if-nez v32, :cond_1

    iget v0, v15, Landroid/text/format/Time;->hour:I

    move/from16 v66, v0

    iget v0, v15, Landroid/text/format/Time;->minute:I

    move/from16 v67, v0

    or-int v66, v66, v67

    iget v0, v15, Landroid/text/format/Time;->second:I

    move/from16 v67, v0

    or-int v66, v66, v67

    if-nez v66, :cond_1

    if-eqz v44, :cond_0

    const/16 v66, 0x1

    move/from16 v0, v66

    if-gt v13, v0, :cond_1

    .line 637
    :cond_0
    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v66, v0

    add-int/lit8 v66, v66, -0x1

    move/from16 v0, v66

    iput v0, v15, Landroid/text/format/Time;->monthDay:I

    .line 638
    const/16 v66, 0x1

    move/from16 v0, v66

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 641
    :cond_1
    move-object/from16 v0, v47

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v49, v0

    .line 642
    .local v49, startDay:I
    move-object/from16 v0, v47

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v52, v0

    .line 643
    .local v52, startMonthNum:I
    move-object/from16 v0, v47

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v58, v0

    .line 645
    .local v58, startYear:I
    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v17, v0

    .line 646
    .local v17, endDay:I
    iget v0, v15, Landroid/text/format/Time;->month:I

    move/from16 v20, v0

    .line 647
    .local v20, endMonthNum:I
    iget v0, v15, Landroid/text/format/Time;->year:I

    move/from16 v26, v0

    .line 649
    .local v26, endYear:I
    const-string v57, ""

    .line 650
    .local v57, startWeekDayString:Ljava/lang/String;
    const-string v25, ""

    .line 651
    .local v25, endWeekDayString:Ljava/lang/String;
    if-eqz v45, :cond_2

    .line 652
    const-string v65, ""

    .line 653
    .local v65, weekDayFormat:Ljava/lang/String;
    if-eqz v6, :cond_16

    .line 654
    const-string v65, "%a"

    .line 658
    :goto_c
    move-object/from16 v0, v47

    move-object/from16 v1, v65

    invoke-static {v0, v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->thailandTimeFormat(Landroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 659
    if-eqz v32, :cond_17

    move-object/from16 v25, v57

    .line 663
    .end local v65           #weekDayFormat:Ljava/lang/String;
    :cond_2
    :goto_d
    const-string v56, ""

    .line 664
    .local v56, startTimeString:Ljava/lang/String;
    const-string v24, ""

    .line 665
    .local v24, endTimeString:Ljava/lang/String;
    if-eqz v44, :cond_4

    .line 666
    const-string v55, ""

    .line 667
    .local v55, startTimeFormat:Ljava/lang/String;
    const-string v23, ""

    .line 668
    .local v23, endTimeFormat:Ljava/lang/String;
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x80

    move/from16 v66, v0

    if-eqz v66, :cond_18

    const/16 v29, 0x1

    .line 669
    .local v29, force24Hour:Z
    :goto_e
    and-int/lit8 v66, p6, 0x40

    if-eqz v66, :cond_19

    const/16 v28, 0x1

    .line 671
    .local v28, force12Hour:Z
    :goto_f
    if-eqz v29, :cond_1a

    .line 672
    const/16 v63, 0x1

    .line 678
    .local v63, use24Hour:Z
    :goto_10
    if-eqz v63, :cond_1c

    .line 679
    const v66, 0xc04049f

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v55, v23

    .line 746
    :cond_3
    :goto_11
    move-object/from16 v0, v47

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->thailandTimeFormat(Landroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 747
    if-eqz v32, :cond_30

    move-object/from16 v24, v56

    .line 751
    .end local v23           #endTimeFormat:Ljava/lang/String;
    .end local v28           #force12Hour:Z
    .end local v29           #force24Hour:Z
    .end local v55           #startTimeFormat:Ljava/lang/String;
    .end local v63           #use24Hour:Z
    :cond_4
    :goto_12
    if-eqz v46, :cond_31

    .line 765
    :goto_13
    const/16 v40, -0x1

    .line 766
    .local v40, order:I
    if-eqz p0, :cond_6

    .line 767
    new-instance v11, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v66

    move-object/from16 v0, v66

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([C)V

    .line 769
    .local v11, dateFormatInSetting:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v33

    .line 771
    .local v33, language:Ljava/lang/String;
    new-instance v60, Ljava/util/ArrayList;

    invoke-direct/range {v60 .. v60}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .local v60, supportLanguages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v66, "en"

    move-object/from16 v0, v60

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    const-string v66, "zh"

    move-object/from16 v0, v60

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    const-string v66, "th"

    move-object/from16 v0, v60

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    const-string v66, "vi"

    move-object/from16 v0, v60

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    const-string v66, "in"

    move-object/from16 v0, v60

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    const-string v66, "ru"

    move-object/from16 v0, v60

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    const-string v66, "yMd"

    move-object/from16 v0, v66

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v66

    if-eqz v66, :cond_35

    .line 780
    const/16 v40, 0x1

    .line 787
    :cond_5
    :goto_14
    move-object/from16 v0, v60

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v66

    if-nez v66, :cond_6

    .line 788
    const/16 v40, -0x1

    .line 794
    .end local v11           #dateFormatInSetting:Ljava/lang/String;
    .end local v33           #language:Ljava/lang/String;
    .end local v60           #supportLanguages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    if-eqz v39, :cond_37

    .line 797
    packed-switch v40, :pswitch_data_0

    .line 799
    const v66, 0xc0404a8

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 939
    .local v14, defaultDateFormat:Ljava/lang/String;
    :goto_15
    if-eqz v45, :cond_40

    .line 940
    if-eqz v44, :cond_3f

    .line 941
    const v66, 0xc0404b1

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 954
    .local v30, fullFormat:Ljava/lang/String;
    :goto_16
    if-eqz v36, :cond_42

    move/from16 v0, v52

    move/from16 v1, v20

    if-ne v0, v1, :cond_42

    .line 956
    const-string v66, "%s"

    const/16 v67, 0x1

    move/from16 v0, v67

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move-object/from16 v0, v47

    invoke-static {v0, v14}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->thailandTimeFormat(Landroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    aput-object v69, v67, v68

    move-object/from16 v0, p1

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v66

    .line 1091
    :goto_17
    return-object v66

    .line 594
    .end local v4           #abbrevMonth:Z
    .end local v6           #abbrevWeekDay:Z
    .end local v13           #dayDistance:I
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    .end local v15           #endDate:Landroid/text/format/Time;
    .end local v17           #endDay:I
    .end local v20           #endMonthNum:I
    .end local v24           #endTimeString:Ljava/lang/String;
    .end local v25           #endWeekDayString:Ljava/lang/String;
    .end local v26           #endYear:I
    .end local v30           #fullFormat:Ljava/lang/String;
    .end local v32           #isInstant:Z
    .end local v36           #noMonthDay:Z
    .end local v38           #noYear:Z
    .end local v39           #numericDate:Z
    .end local v40           #order:I
    .end local v44           #showTime:Z
    .end local v45           #showWeekDay:Z
    .end local v46           #showYear:Z
    .end local v47           #startDate:Landroid/text/format/Time;
    .end local v49           #startDay:I
    .end local v52           #startMonthNum:I
    .end local v56           #startTimeString:Ljava/lang/String;
    .end local v57           #startWeekDayString:Ljava/lang/String;
    .end local v58           #startYear:I
    .end local v64           #useUTC:Z
    :cond_7
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 595
    .restart local v44       #showTime:Z
    :cond_8
    const/16 v45, 0x0

    goto/16 :goto_1

    .line 596
    .restart local v45       #showWeekDay:Z
    :cond_9
    const/16 v46, 0x0

    goto/16 :goto_2

    .line 597
    .restart local v46       #showYear:Z
    :cond_a
    const/16 v38, 0x0

    goto/16 :goto_3

    .line 598
    .restart local v38       #noYear:Z
    :cond_b
    const/16 v64, 0x0

    goto/16 :goto_4

    .line 599
    .restart local v64       #useUTC:Z
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 600
    .restart local v6       #abbrevWeekDay:Z
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 601
    .restart local v4       #abbrevMonth:Z
    :cond_e
    const/16 v36, 0x0

    goto/16 :goto_7

    .line 602
    .restart local v36       #noMonthDay:Z
    :cond_f
    const/16 v39, 0x0

    goto/16 :goto_8

    .line 604
    .restart local v39       #numericDate:Z
    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_9

    .line 609
    .restart local v32       #isInstant:Z
    :cond_11
    if-eqz v64, :cond_12

    .line 610
    new-instance v47, Landroid/text/format/Time;

    const-string v66, "UTC"

    move-object/from16 v0, v47

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v47       #startDate:Landroid/text/format/Time;
    goto/16 :goto_a

    .line 612
    .end local v47           #startDate:Landroid/text/format/Time;
    :cond_12
    new-instance v47, Landroid/text/format/Time;

    invoke-direct/range {v47 .. v47}, Landroid/text/format/Time;-><init>()V

    .restart local v47       #startDate:Landroid/text/format/Time;
    goto/16 :goto_a

    .line 622
    :cond_13
    if-eqz p7, :cond_14

    .line 623
    new-instance v15, Landroid/text/format/Time;

    move-object/from16 v0, p7

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 629
    .restart local v15       #endDate:Landroid/text/format/Time;
    :goto_18
    move-wide/from16 v0, p4

    invoke-virtual {v15, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 630
    move-object/from16 v0, v47

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v66, v0

    move-wide/from16 v0, p2

    move-wide/from16 v2, v66

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v50

    .line 631
    .local v50, startJulianDay:I
    iget-wide v0, v15, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v66, v0

    move-wide/from16 v0, p4

    move-wide/from16 v2, v66

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v18

    .line 632
    .local v18, endJulianDay:I
    sub-int v13, v18, v50

    .restart local v13       #dayDistance:I
    goto/16 :goto_b

    .line 624
    .end local v13           #dayDistance:I
    .end local v15           #endDate:Landroid/text/format/Time;
    .end local v18           #endJulianDay:I
    .end local v50           #startJulianDay:I
    :cond_14
    if-eqz v64, :cond_15

    .line 625
    new-instance v15, Landroid/text/format/Time;

    const-string v66, "UTC"

    move-object/from16 v0, v66

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v15       #endDate:Landroid/text/format/Time;
    goto :goto_18

    .line 627
    .end local v15           #endDate:Landroid/text/format/Time;
    :cond_15
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .restart local v15       #endDate:Landroid/text/format/Time;
    goto :goto_18

    .line 656
    .restart local v13       #dayDistance:I
    .restart local v17       #endDay:I
    .restart local v20       #endMonthNum:I
    .restart local v25       #endWeekDayString:Ljava/lang/String;
    .restart local v26       #endYear:I
    .restart local v49       #startDay:I
    .restart local v52       #startMonthNum:I
    .restart local v57       #startWeekDayString:Ljava/lang/String;
    .restart local v58       #startYear:I
    .restart local v65       #weekDayFormat:Ljava/lang/String;
    :cond_16
    const-string v65, "%A"

    goto/16 :goto_c

    .line 659
    :cond_17
    move-object/from16 v0, v65

    invoke-static {v15, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->thailandTimeFormat(Landroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_d

    .line 668
    .end local v65           #weekDayFormat:Ljava/lang/String;
    .restart local v23       #endTimeFormat:Ljava/lang/String;
    .restart local v24       #endTimeString:Ljava/lang/String;
    .restart local v55       #startTimeFormat:Ljava/lang/String;
    .restart local v56       #startTimeString:Ljava/lang/String;
    :cond_18
    const/16 v29, 0x0

    goto/16 :goto_e

    .line 669
    .restart local v29       #force24Hour:Z
    :cond_19
    const/16 v28, 0x0

    goto/16 :goto_f

    .line 673
    .restart local v28       #force12Hour:Z
    :cond_1a
    if-eqz v28, :cond_1b

    .line 674
    const/16 v63, 0x0

    .restart local v63       #use24Hour:Z
    goto/16 :goto_10

    .line 676
    .end local v63           #use24Hour:Z
    :cond_1b
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v63

    .restart local v63       #use24Hour:Z
    goto/16 :goto_10

    .line 682
    :cond_1c
    const v66, 0x84000

    and-int v66, v66, p6

    if-eqz v66, :cond_1e

    const/4 v5, 0x1

    .line 683
    .local v5, abbrevTime:Z
    :goto_19
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x100

    move/from16 v66, v0

    if-eqz v66, :cond_1f

    const/4 v7, 0x1

    .line 684
    .local v7, capAMPM:Z
    :goto_1a
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x200

    move/from16 v66, v0

    if-eqz v66, :cond_20

    const/16 v37, 0x1

    .line 685
    .local v37, noNoon:Z
    :goto_1b
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x400

    move/from16 v66, v0

    if-eqz v66, :cond_21

    const/4 v9, 0x1

    .line 686
    .local v9, capNoon:Z
    :goto_1c
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x800

    move/from16 v66, v0

    if-eqz v66, :cond_22

    const/16 v35, 0x1

    .line 687
    .local v35, noMidnight:Z
    :goto_1d
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x1000

    move/from16 v66, v0

    if-eqz v66, :cond_23

    const/4 v8, 0x1

    .line 689
    .local v8, capMidnight:Z
    :goto_1e
    move-object/from16 v0, v47

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v66, v0

    if-nez v66, :cond_24

    move-object/from16 v0, v47

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v66, v0

    if-nez v66, :cond_24

    const/16 v54, 0x1

    .line 690
    .local v54, startOnTheHour:Z
    :goto_1f
    iget v0, v15, Landroid/text/format/Time;->minute:I

    move/from16 v66, v0

    if-nez v66, :cond_25

    iget v0, v15, Landroid/text/format/Time;->second:I

    move/from16 v66, v0

    if-nez v66, :cond_25

    const/16 v22, 0x1

    .line 691
    .local v22, endOnTheHour:Z
    :goto_20
    if-eqz v5, :cond_27

    if-eqz v54, :cond_27

    .line 692
    if-eqz v7, :cond_26

    .line 693
    const v66, 0xc0404a0

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    .line 705
    :goto_21
    if-nez v32, :cond_1d

    .line 706
    if-eqz v5, :cond_2a

    if-eqz v22, :cond_2a

    .line 707
    if-eqz v7, :cond_29

    .line 708
    const v66, 0xc0404a0

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 721
    :goto_22
    iget v0, v15, Landroid/text/format/Time;->hour:I

    move/from16 v66, v0

    const/16 v67, 0xc

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_2d

    if-eqz v22, :cond_2d

    if-nez v37, :cond_2d

    .line 722
    if-eqz v9, :cond_2c

    .line 723
    const v66, 0xc0404a4

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 736
    :cond_1d
    :goto_23
    move-object/from16 v0, v47

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v66, v0

    const/16 v67, 0xc

    move/from16 v0, v66

    move/from16 v1, v67

    if-ne v0, v1, :cond_3

    if-eqz v54, :cond_3

    if-nez v37, :cond_3

    .line 737
    if-eqz v9, :cond_2f

    .line 738
    const v66, 0xc0404a4

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    goto/16 :goto_11

    .line 682
    .end local v5           #abbrevTime:Z
    .end local v7           #capAMPM:Z
    .end local v8           #capMidnight:Z
    .end local v9           #capNoon:Z
    .end local v22           #endOnTheHour:Z
    .end local v35           #noMidnight:Z
    .end local v37           #noNoon:Z
    .end local v54           #startOnTheHour:Z
    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_19

    .line 683
    .restart local v5       #abbrevTime:Z
    :cond_1f
    const/4 v7, 0x0

    goto/16 :goto_1a

    .line 684
    .restart local v7       #capAMPM:Z
    :cond_20
    const/16 v37, 0x0

    goto/16 :goto_1b

    .line 685
    .restart local v37       #noNoon:Z
    :cond_21
    const/4 v9, 0x0

    goto/16 :goto_1c

    .line 686
    .restart local v9       #capNoon:Z
    :cond_22
    const/16 v35, 0x0

    goto/16 :goto_1d

    .line 687
    .restart local v35       #noMidnight:Z
    :cond_23
    const/4 v8, 0x0

    goto/16 :goto_1e

    .line 689
    .restart local v8       #capMidnight:Z
    :cond_24
    const/16 v54, 0x0

    goto/16 :goto_1f

    .line 690
    .restart local v54       #startOnTheHour:Z
    :cond_25
    const/16 v22, 0x0

    goto :goto_20

    .line 695
    .restart local v22       #endOnTheHour:Z
    :cond_26
    const v66, 0xc0404a1

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    goto :goto_21

    .line 698
    :cond_27
    if-eqz v7, :cond_28

    .line 699
    const v66, 0xc0404a2

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    goto/16 :goto_21

    .line 701
    :cond_28
    const v66, 0xc0404a3

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    goto/16 :goto_21

    .line 710
    :cond_29
    const v66, 0xc0404a1

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_22

    .line 713
    :cond_2a
    if-eqz v7, :cond_2b

    .line 714
    const v66, 0xc0404a2

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_22

    .line 717
    :cond_2b
    const v66, 0xc0404a3

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_22

    .line 725
    :cond_2c
    const v66, 0xc0404a5

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_23

    .line 727
    :cond_2d
    iget v0, v15, Landroid/text/format/Time;->hour:I

    move/from16 v66, v0

    if-nez v66, :cond_1d

    if-eqz v22, :cond_1d

    if-nez v35, :cond_1d

    .line 728
    if-eqz v8, :cond_2e

    .line 729
    const v66, 0xc0404a6

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_23

    .line 731
    :cond_2e
    const v66, 0xc0404a7

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_23

    .line 740
    :cond_2f
    const v66, 0xc0404a5

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    goto/16 :goto_11

    .line 747
    .end local v5           #abbrevTime:Z
    .end local v7           #capAMPM:Z
    .end local v8           #capMidnight:Z
    .end local v9           #capNoon:Z
    .end local v22           #endOnTheHour:Z
    .end local v35           #noMidnight:Z
    .end local v37           #noNoon:Z
    .end local v54           #startOnTheHour:Z
    :cond_30
    move-object/from16 v0, v23

    invoke-static {v15, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->thailandTimeFormat(Landroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_12

    .line 753
    .end local v23           #endTimeFormat:Ljava/lang/String;
    .end local v28           #force12Hour:Z
    .end local v29           #force24Hour:Z
    .end local v55           #startTimeFormat:Ljava/lang/String;
    .end local v63           #use24Hour:Z
    :cond_31
    if-eqz v38, :cond_32

    .line 754
    const/16 v46, 0x0

    goto/16 :goto_13

    .line 755
    :cond_32
    move/from16 v0, v58

    move/from16 v1, v26

    if-eq v0, v1, :cond_33

    .line 756
    const/16 v46, 0x1

    goto/16 :goto_13

    .line 758
    :cond_33
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 759
    .local v10, currentTime:Landroid/text/format/Time;
    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

    .line 760
    iget v0, v10, Landroid/text/format/Time;->year:I

    move/from16 v66, v0

    move/from16 v0, v58

    move/from16 v1, v66

    if-eq v0, v1, :cond_34

    const/16 v46, 0x1

    :goto_24
    goto/16 :goto_13

    :cond_34
    const/16 v46, 0x0

    goto :goto_24

    .line 781
    .end local v10           #currentTime:Landroid/text/format/Time;
    .restart local v11       #dateFormatInSetting:Ljava/lang/String;
    .restart local v33       #language:Ljava/lang/String;
    .restart local v40       #order:I
    .restart local v60       #supportLanguages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_35
    const-string v66, "Mdy"

    move-object/from16 v0, v66

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v66

    if-eqz v66, :cond_36

    .line 782
    const/16 v40, 0x2

    goto/16 :goto_14

    .line 783
    :cond_36
    const-string v66, "dMy"

    move-object/from16 v0, v66

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v66

    if-eqz v66, :cond_5

    .line 784
    const/16 v40, 0x3

    goto/16 :goto_14

    .line 802
    .end local v11           #dateFormatInSetting:Ljava/lang/String;
    .end local v33           #language:Ljava/lang/String;
    .end local v60           #supportLanguages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    const v66, 0xc04051c

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 803
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 805
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_1
    const v66, 0xc04051d

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 806
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 808
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_2
    const v66, 0xc04051e

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 809
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 812
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :cond_37
    if-eqz v46, :cond_3b

    .line 813
    if-eqz v4, :cond_39

    .line 814
    if-eqz v36, :cond_38

    .line 817
    packed-switch v40, :pswitch_data_1

    .line 819
    const v66, 0xc0404a9

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 820
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 822
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_3
    const v66, 0xc04051f

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 823
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 825
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_4
    const v66, 0xc040520

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 826
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 828
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_5
    const v66, 0xc040521

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 829
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 835
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :cond_38
    packed-switch v40, :pswitch_data_2

    .line 837
    const v66, 0xc0404aa

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 839
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 841
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_6
    const v66, 0xc040522

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 842
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 844
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_7
    const v66, 0xc040523

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 845
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 847
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_8
    const v66, 0xc040524

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 848
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 853
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :cond_39
    if-eqz v36, :cond_3a

    .line 856
    packed-switch v40, :pswitch_data_3

    .line 858
    const v66, 0xc0404ab

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 859
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 861
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_9
    const v66, 0xc040525

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 862
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 864
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_a
    const v66, 0xc040526

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 865
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 867
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_b
    const v66, 0xc0404ca

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 868
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 874
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :cond_3a
    packed-switch v40, :pswitch_data_4

    .line 876
    const v66, 0xc0404ac

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 877
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 879
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_c
    const v66, 0xc0404cb

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 880
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 882
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_d
    const v66, 0xc0404cc

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 883
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 885
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_e
    const v66, 0xc0404cd

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 886
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 892
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :cond_3b
    if-eqz v4, :cond_3d

    .line 893
    if-eqz v36, :cond_3c

    .line 894
    const v66, 0xc0404ad

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 898
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :cond_3c
    packed-switch v40, :pswitch_data_5

    .line 900
    const v66, 0xc0404ae

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 901
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 903
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_f
    const v66, 0xc0404ce

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 904
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 906
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_10
    const v66, 0xc0404cf

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 907
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 909
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_11
    const v66, 0xc0404d0

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 910
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 915
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :cond_3d
    if-eqz v36, :cond_3e

    .line 916
    const v66, 0xc0404af

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 920
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :cond_3e
    packed-switch v40, :pswitch_data_6

    .line 922
    const v66, 0xc0404b0

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 923
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 925
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_12
    const v66, 0xc0404d1

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 926
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 928
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_13
    const v66, 0xc0404d2

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 929
    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 931
    .end local v14           #defaultDateFormat:Ljava/lang/String;
    :pswitch_14
    const v66, 0xc0404d3

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 944
    :cond_3f
    const v66, 0xc0404b2

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30       #fullFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 947
    .end local v30           #fullFormat:Ljava/lang/String;
    :cond_40
    if-eqz v44, :cond_41

    .line 948
    const v66, 0xc0404b3

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30       #fullFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 950
    .end local v30           #fullFormat:Ljava/lang/String;
    :cond_41
    const v66, 0xc0404b4

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30       #fullFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 959
    :cond_42
    move/from16 v0, v58

    move/from16 v1, v26

    if-ne v0, v1, :cond_43

    if-eqz v36, :cond_44

    .line 960
    :cond_43
    move-object/from16 v0, v47

    invoke-static {v0, v14}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->thailandTimeFormat(Landroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 961
    .local v48, startDateString:Ljava/lang/String;
    invoke-static {v15, v14}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->thailandTimeFormat(Landroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 963
    .local v16, endDateString:Ljava/lang/String;
    const/16 v66, 0x6

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    aput-object v57, v66, v67

    const/16 v67, 0x1

    aput-object v48, v66, v67

    const/16 v67, 0x2

    aput-object v56, v66, v67

    const/16 v67, 0x3

    aput-object v25, v66, v67

    const/16 v67, 0x4

    aput-object v16, v66, v67

    const/16 v67, 0x5

    aput-object v24, v66, v67

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v66

    goto/16 :goto_17

    .line 968
    .end local v16           #endDateString:Ljava/lang/String;
    .end local v48           #startDateString:Ljava/lang/String;
    :cond_44
    if-eqz v39, :cond_49

    .line 969
    const-string v34, "%m"

    .line 975
    .local v34, monthFormat:Ljava/lang/String;
    :goto_25
    move-object/from16 v0, v47

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->thailandTimeFormat(Landroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 976
    .local v53, startMonthString:Ljava/lang/String;
    const-string v66, "%-d"

    move-object/from16 v0, v47

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->thailandTimeFormat(Landroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 977
    .local v51, startMonthDayString:Ljava/lang/String;
    const-string v66, "%Y"

    move-object/from16 v0, v47

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->thailandTimeFormat(Landroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 979
    .local v59, startYearString:Ljava/lang/String;
    if-eqz v32, :cond_4b

    const/16 v21, 0x0

    .line 980
    .local v21, endMonthString:Ljava/lang/String;
    :goto_26
    if-eqz v32, :cond_4c

    const/16 v19, 0x0

    .line 982
    .local v19, endMonthDayString:Ljava/lang/String;
    :goto_27
    if-eqz v32, :cond_4d

    const/16 v27, 0x0

    .line 984
    .local v27, endYearString:Ljava/lang/String;
    :goto_28
    move/from16 v0, v52

    move/from16 v1, v20

    if-eq v0, v1, :cond_4e

    .line 986
    const/16 v31, 0x0

    .line 987
    .local v31, index:I
    if-eqz v45, :cond_45

    .line 988
    const/16 v31, 0x1

    .line 989
    :cond_45
    if-eqz v46, :cond_46

    .line 990
    add-int/lit8 v31, v31, 0x2

    .line 991
    :cond_46
    if-eqz v44, :cond_47

    .line 992
    add-int/lit8 v31, v31, 0x4

    .line 993
    :cond_47
    if-eqz v39, :cond_48

    .line 994
    add-int/lit8 v31, v31, 0x8

    .line 997
    :cond_48
    sget-object v66, Landroid/text/format/DateUtils;->sameYearTable:[I

    aget v42, v66, v31

    .line 998
    .local v42, resId:I
    packed-switch v40, :pswitch_data_7

    .line 1009
    :goto_29
    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1011
    const/16 v66, 0xa

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    aput-object v57, v66, v67

    const/16 v67, 0x1

    aput-object v53, v66, v67

    const/16 v67, 0x2

    aput-object v51, v66, v67

    const/16 v67, 0x3

    aput-object v59, v66, v67

    const/16 v67, 0x4

    aput-object v56, v66, v67

    const/16 v67, 0x5

    aput-object v25, v66, v67

    const/16 v67, 0x6

    aput-object v21, v66, v67

    const/16 v67, 0x7

    aput-object v19, v66, v67

    const/16 v67, 0x8

    aput-object v27, v66, v67

    const/16 v67, 0x9

    aput-object v24, v66, v67

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v66

    goto/16 :goto_17

    .line 970
    .end local v19           #endMonthDayString:Ljava/lang/String;
    .end local v21           #endMonthString:Ljava/lang/String;
    .end local v27           #endYearString:Ljava/lang/String;
    .end local v31           #index:I
    .end local v34           #monthFormat:Ljava/lang/String;
    .end local v42           #resId:I
    .end local v51           #startMonthDayString:Ljava/lang/String;
    .end local v53           #startMonthString:Ljava/lang/String;
    .end local v59           #startYearString:Ljava/lang/String;
    :cond_49
    if-eqz v4, :cond_4a

    .line 971
    const v66, 0xc0404b5

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    .restart local v34       #monthFormat:Ljava/lang/String;
    goto/16 :goto_25

    .line 973
    .end local v34           #monthFormat:Ljava/lang/String;
    :cond_4a
    const-string v34, "%B"

    .restart local v34       #monthFormat:Ljava/lang/String;
    goto/16 :goto_25

    .line 979
    .restart local v51       #startMonthDayString:Ljava/lang/String;
    .restart local v53       #startMonthString:Ljava/lang/String;
    .restart local v59       #startYearString:Ljava/lang/String;
    :cond_4b
    move-object/from16 v0, v34

    invoke-static {v15, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->thailandTimeFormat(Landroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto :goto_26

    .line 980
    .restart local v21       #endMonthString:Ljava/lang/String;
    :cond_4c
    const-string v66, "%-d"

    move-object/from16 v0, v66

    invoke-static {v15, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->thailandTimeFormat(Landroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_27

    .line 982
    .restart local v19       #endMonthDayString:Ljava/lang/String;
    :cond_4d
    const-string v66, "%Y"

    move-object/from16 v0, v66

    invoke-static {v15, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->thailandTimeFormat(Landroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_28

    .line 1000
    .restart local v27       #endYearString:Ljava/lang/String;
    .restart local v31       #index:I
    .restart local v42       #resId:I
    :pswitch_15
    sget-object v66, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->sameYearTable_ymd:[I

    aget v42, v66, v31

    .line 1001
    goto :goto_29

    .line 1003
    :pswitch_16
    sget-object v66, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->sameYearTable_mdy:[I

    aget v42, v66, v31

    .line 1004
    goto :goto_29

    .line 1006
    :pswitch_17
    sget-object v66, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->sameYearTable_dmy:[I

    aget v42, v66, v31

    goto :goto_29

    .line 1016
    .end local v31           #index:I
    .end local v42           #resId:I
    :cond_4e
    move/from16 v0, v49

    move/from16 v1, v17

    if-eq v0, v1, :cond_53

    .line 1018
    const/16 v31, 0x0

    .line 1019
    .restart local v31       #index:I
    if-eqz v45, :cond_4f

    .line 1020
    const/16 v31, 0x1

    .line 1021
    :cond_4f
    if-eqz v46, :cond_50

    .line 1022
    add-int/lit8 v31, v31, 0x2

    .line 1023
    :cond_50
    if-eqz v44, :cond_51

    .line 1024
    add-int/lit8 v31, v31, 0x4

    .line 1025
    :cond_51
    if-eqz v39, :cond_52

    .line 1026
    add-int/lit8 v31, v31, 0x8

    .line 1029
    :cond_52
    sget-object v66, Landroid/text/format/DateUtils;->sameMonthTable:[I

    aget v42, v66, v31

    .line 1030
    .restart local v42       #resId:I
    packed-switch v40, :pswitch_data_8

    .line 1041
    :goto_2a
    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1043
    const/16 v66, 0xa

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    aput-object v57, v66, v67

    const/16 v67, 0x1

    aput-object v53, v66, v67

    const/16 v67, 0x2

    aput-object v51, v66, v67

    const/16 v67, 0x3

    aput-object v59, v66, v67

    const/16 v67, 0x4

    aput-object v56, v66, v67

    const/16 v67, 0x5

    aput-object v25, v66, v67

    const/16 v67, 0x6

    aput-object v21, v66, v67

    const/16 v67, 0x7

    aput-object v19, v66, v67

    const/16 v67, 0x8

    aput-object v27, v66, v67

    const/16 v67, 0x9

    aput-object v24, v66, v67

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v66

    goto/16 :goto_17

    .line 1032
    :pswitch_18
    sget-object v66, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->sameMonthTable_ymd:[I

    aget v42, v66, v31

    .line 1033
    goto :goto_2a

    .line 1035
    :pswitch_19
    sget-object v66, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->sameMonthTable_mdy:[I

    aget v42, v66, v31

    .line 1036
    goto :goto_2a

    .line 1038
    :pswitch_1a
    sget-object v66, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->sameMonthTable_dmy:[I

    aget v42, v66, v31

    goto :goto_2a

    .line 1048
    .end local v31           #index:I
    .end local v42           #resId:I
    :cond_53
    and-int/lit8 v66, p6, 0x10

    if-eqz v66, :cond_57

    const/16 v43, 0x1

    .line 1050
    .local v43, showDate:Z
    :goto_2b
    if-nez v44, :cond_54

    if-nez v43, :cond_54

    if-nez v45, :cond_54

    .line 1051
    const/16 v43, 0x1

    .line 1053
    :cond_54
    const-string v62, ""

    .line 1054
    .local v62, timeString:Ljava/lang/String;
    if-eqz v44, :cond_55

    .line 1055
    if-eqz v32, :cond_58

    .line 1056
    move-object/from16 v62, v56

    .line 1064
    :cond_55
    :goto_2c
    const-string v30, ""

    .line 1065
    const-string v12, ""

    .line 1066
    .local v12, dateString:Ljava/lang/String;
    if-eqz v43, :cond_5c

    .line 1067
    move-object/from16 v0, v47

    invoke-static {v0, v14}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->thailandTimeFormat(Landroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1068
    if-eqz v45, :cond_5a

    .line 1069
    if-eqz v44, :cond_59

    .line 1070
    const v66, 0xc0404b7

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1091
    :cond_56
    :goto_2d
    const/16 v66, 0x3

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    aput-object v62, v66, v67

    const/16 v67, 0x1

    aput-object v57, v66, v67

    const/16 v67, 0x2

    aput-object v12, v66, v67

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v66

    goto/16 :goto_17

    .line 1048
    .end local v12           #dateString:Ljava/lang/String;
    .end local v43           #showDate:Z
    .end local v62           #timeString:Ljava/lang/String;
    :cond_57
    const/16 v43, 0x0

    goto :goto_2b

    .line 1058
    .restart local v43       #showDate:Z
    .restart local v62       #timeString:Ljava/lang/String;
    :cond_58
    const v66, 0xc0404b6

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v61

    .line 1059
    .local v61, timeFormat:Ljava/lang/String;
    const/16 v66, 0x2

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    aput-object v56, v66, v67

    const/16 v67, 0x1

    aput-object v24, v66, v67

    move-object/from16 v0, v61

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v62

    goto :goto_2c

    .line 1072
    .end local v61           #timeFormat:Ljava/lang/String;
    .restart local v12       #dateString:Ljava/lang/String;
    :cond_59
    const v66, 0xc0404b8

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto :goto_2d

    .line 1075
    :cond_5a
    if-eqz v44, :cond_5b

    .line 1076
    const v66, 0xc0404b9

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto :goto_2d

    .line 1078
    :cond_5b
    const-string v66, "%s"

    const/16 v67, 0x1

    move/from16 v0, v67

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    aput-object v12, v67, v68

    move-object/from16 v0, p1

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v66

    goto/16 :goto_17

    .line 1081
    :cond_5c
    if-eqz v45, :cond_5e

    .line 1082
    if-eqz v44, :cond_5d

    .line 1083
    const v66, 0xc0404ba

    move-object/from16 v0, v41

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_2d

    .line 1085
    :cond_5d
    const-string v66, "%s"

    const/16 v67, 0x1

    move/from16 v0, v67

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    aput-object v57, v67, v68

    move-object/from16 v0, p1

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v66

    goto/16 :goto_17

    .line 1087
    :cond_5e
    if-eqz v44, :cond_56

    .line 1088
    const-string v66, "%s"

    const/16 v67, 0x1

    move/from16 v0, v67

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    aput-object v62, v67, v68

    move-object/from16 v0, p1

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v66

    goto/16 :goto_17

    .line 797
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 817
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 835
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 856
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 874
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 898
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 920
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 998
    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    .line 1030
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method public static formatDateTimeForSetting(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "millis"
    .parameter "flags"

    .prologue
    .line 270
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoAndroidDateUtils;->formatDateRangeForSetting(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static thailandTimeFormat(Landroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "startDate"
    .parameter "defaultDateFormat"

    .prologue
    const/4 v8, -0x1

    .line 1097
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, dateStringReturn:Ljava/lang/String;
    #calls: Lcom/oppo/util/OppoThailandCalendarUtil;->isThaiCalendarEnabled()Z
    invoke-static {}, Lcom/oppo/util/OppoThailandCalendarUtil;->access$000()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1100
    const/16 v7, 0x79

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v8, v7, :cond_0

    const/16 v7, 0x59

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v8, v7, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1103
    .local v1, isThereYear:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1104
    const-string v7, "\\d{4}"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1105
    .local v3, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1106
    .local v2, matcher:Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1107
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    .line 1108
    .local v5, result:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1109
    .local v6, year:I
    add-int/lit16 v6, v6, 0x21f

    .line 1110
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1111
    .local v4, replaceStr:Ljava/lang/String;
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    goto :goto_1

    .line 1100
    .end local v1           #isThereYear:Z
    .end local v2           #matcher:Ljava/util/regex/Matcher;
    .end local v3           #pattern:Ljava/util/regex/Pattern;
    .end local v4           #replaceStr:Ljava/lang/String;
    .end local v5           #result:Ljava/lang/String;
    .end local v6           #year:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1119
    :cond_2
    return-object v0
.end method
