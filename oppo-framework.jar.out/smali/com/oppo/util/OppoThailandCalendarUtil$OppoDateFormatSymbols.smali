.class Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;
.super Ljava/lang/Object;
.source "OppoThailandCalendarUtil.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/util/OppoThailandCalendarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OppoDateFormatSymbols"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x53198e36cae8e83eL


# instance fields
.field ampms:[Ljava/lang/String;

.field transient customZoneStrings:Z

.field eras:[Ljava/lang/String;

.field private localPatternChars:Ljava/lang/String;

.field final transient locale:Ljava/util/Locale;

.field transient longStandAloneMonths:[Ljava/lang/String;

.field transient longStandAloneWeekdays:[Ljava/lang/String;

.field months:[Ljava/lang/String;

.field shortMonths:[Ljava/lang/String;

.field transient shortStandAloneMonths:[Ljava/lang/String;

.field transient shortStandAloneWeekdays:[Ljava/lang/String;

.field shortWeekdays:[Ljava/lang/String;

.field weekdays:[Ljava/lang/String;

.field zoneStrings:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2765
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 2766
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 4
    .parameter "locale"

    .prologue
    .line 2774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2775
    iput-object p1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->locale:Ljava/util/Locale;

    .line 2776
    const-string v2, "GyMdkHmsSEDFwWahKzZLc"

    iput-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 2777
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 2779
    .local v1, localeData:Llibcore/icu/LocaleData;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc07040e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2781
    .local v0, ampm:[Ljava/lang/String;
    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 2783
    iget-object v2, v1, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    .line 2784
    iget-object v2, v1, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    .line 2785
    iget-object v2, v1, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 2786
    iget-object v2, v1, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 2787
    iget-object v2, v1, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 2790
    iget-object v2, v1, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->longStandAloneMonths:[Ljava/lang/String;

    .line 2791
    iget-object v2, v1, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    .line 2792
    iget-object v2, v1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->longStandAloneWeekdays:[Ljava/lang/String;

    .line 2793
    iget-object v2, v1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v2, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    .line 2794
    return-void
.end method

.method private static clone2dStringArray([[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 3
    .parameter "array"

    .prologue
    .line 3006
    array-length v2, p0

    new-array v1, v2, [[Ljava/lang/String;

    .line 3007
    .local v1, result:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 3008
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aput-object v2, v1, v0

    .line 3007
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3010
    :cond_0
    return-object v1
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 2831
    invoke-static {}, Llibcore/icu/ICU;->getAvailableDateFormatSymbolsLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;
    .locals 1

    .prologue
    .line 2804
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->getInstance(Ljava/util/Locale;)Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;
    .locals 1
    .parameter "locale"

    .prologue
    .line 2816
    if-nez p0, :cond_0

    .line 2817
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2819
    :cond_0
    new-instance v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    invoke-direct {v0, p0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "ois"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2835
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2839
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->longStandAloneMonths:[Ljava/lang/String;

    .line 2840
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    .line 2841
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->longStandAloneWeekdays:[Ljava/lang/String;

    .line 2842
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    .line 2843
    return-void
.end method

.method private static timeZoneStringsEqual(Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;)Z
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 2890
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->locale:Ljava/util/Locale;

    iget-object v1, p1, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2891
    const/4 v0, 0x1

    .line 2894
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "oos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2846
    invoke-virtual {p0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    .line 2847
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2848
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2853
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2854
    :catch_0
    move-exception v0

    .line 2855
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2869
    if-ne p0, p1, :cond_1

    .line 2876
    :cond_0
    :goto_0
    return v1

    .line 2872
    :cond_1
    instance-of v3, p1, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    if-nez v3, :cond_2

    move v1, v2

    .line 2873
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2875
    check-cast v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;

    .line 2876
    .local v0, rhs:Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;
    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v4, v0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0, v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->timeZoneStringsEqual(Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAmPmStrings()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2918
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getEras()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2929
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPatternChars()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localPatternChars:Ljava/lang/String;

    return-object v0
.end method

.method public getMonths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2950
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getShortMonths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2961
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getShortWeekdays()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2972
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getWeekdays()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2983
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getZoneStrings()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3002
    invoke-virtual {p0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->clone2dStringArray([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 3015
    invoke-virtual {p0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v6

    .line 3017
    .local v6, zoneStrings:[[Ljava/lang/String;
    iget-object v7, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 3018
    .local v2, hashCode:I
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 3019
    .local v1, element:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 3018
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3021
    .end local v1           #element:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 3022
    .restart local v1       #element:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 3021
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3024
    .end local v1           #element:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 3025
    .restart local v1       #element:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 3024
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3027
    .end local v1           #element:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 3028
    .restart local v1       #element:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 3027
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3030
    .end local v1           #element:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_4

    aget-object v1, v0, v3

    .line 3031
    .restart local v1       #element:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 3030
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3033
    .end local v1           #element:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v5, :cond_5

    aget-object v1, v0, v3

    .line 3034
    .restart local v1       #element:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 3033
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3036
    .end local v1           #element:Ljava/lang/String;
    :cond_5
    move-object v0, v6

    .local v0, arr$:[[Ljava/lang/String;
    array-length v5, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v5, :cond_8

    aget-object v1, v0, v3

    .line 3037
    .local v1, element:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_7
    array-length v7, v1

    if-ge v4, v7, :cond_7

    .line 3038
    aget-object v7, v1, v4

    if-eqz v7, :cond_6

    .line 3039
    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    .line 3037
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 3036
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 3043
    .end local v1           #element:[Ljava/lang/String;
    .end local v4           #j:I
    :cond_8
    return v2
.end method

.method declared-synchronized internalZoneStrings()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2753
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2754
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/TimeZones;->getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 2756
    :cond_0
    iget-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->zoneStrings:[[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2753
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAmPmStrings([Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 3053
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 3054
    return-void
.end method

.method public setEras([Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 3064
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    .line 3065
    return-void
.end method

.method public setLocalPatternChars(Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 3075
    if-nez p1, :cond_0

    .line 3076
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3078
    :cond_0
    iput-object p1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 3079
    return-void
.end method

.method public setMonths([Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 3089
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    .line 3090
    return-void
.end method

.method public setShortMonths([Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 3100
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 3101
    return-void
.end method

.method public setShortWeekdays([Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 3111
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 3112
    return-void
.end method

.method public setWeekdays([Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 3122
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 3123
    return-void
.end method

.method public setZoneStrings([[Ljava/lang/String;)V
    .locals 7
    .parameter "zoneStrings"

    .prologue
    .line 3133
    if-nez p1, :cond_0

    .line 3134
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 3136
    :cond_0
    move-object v0, p1

    .local v0, arr$:[[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 3137
    .local v3, row:[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 3138
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".length < 5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3136
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3141
    .end local v3           #row:[Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->clone2dStringArray([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 3142
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->customZoneStrings:Z

    .line 3143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[amPmStrings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",customZoneStrings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->customZoneStrings:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",eras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localPatternChars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",months="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->months:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shortMonths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shortWeekdays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",weekdays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",zoneStrings=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/util/OppoThailandCalendarUtil$OppoDateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
