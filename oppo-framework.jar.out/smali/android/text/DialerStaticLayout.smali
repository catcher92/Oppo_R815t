.class Landroid/text/DialerStaticLayout;
.super Landroid/text/Layout;
.source "OppoDialerLayout.java"


# static fields
.field private static final CHAR_COLON:C = ':'

.field private static final CHAR_COMMA:C = ','

.field private static final CHAR_DOT:C = '.'

.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SEMICOLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field private static final ELLIPSIS_START:I = 0x3

.field private static final ELLIPSIS_TWO_DOTS:Ljava/lang/String; = "\u2025"

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "DialerStaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 586
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1414
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/DialerStaticLayout;->mMaximumVisibleLineCount:I

    .line 1446
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/DialerStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 588
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/DialerStaticLayout;->mColumns:I

    .line 589
    iget v0, p0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DialerStaticLayout;->mLines:[I

    .line 590
    iget v0, p0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/DialerStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 591
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DialerStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 592
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 517
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/DialerStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 519
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 534
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/DialerStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 537
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 527
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/DialerStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 529
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"
    .parameter "maxLines"

    .prologue
    .line 546
    if-nez p11, :cond_0

    move-object/from16 v2, p1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1414
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/DialerStaticLayout;->mMaximumVisibleLineCount:I

    .line 1446
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/DialerStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 558
    if-eqz p11, :cond_2

    .line 559
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 561
    .local v14, e:Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 562
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 563
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 564
    move/from16 v0, p12

    iput v0, p0, Landroid/text/DialerStaticLayout;->mEllipsizedWidth:I

    .line 566
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/DialerStaticLayout;->mColumns:I

    .line 572
    .end local v14           #e:Landroid/text/Layout$Ellipsizer;
    :goto_1
    iget v1, p0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/DialerStaticLayout;->mLines:[I

    .line 573
    iget v1, p0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/DialerStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 574
    move/from16 v0, p13

    iput v0, p0, Landroid/text/DialerStaticLayout;->mMaximumVisibleLineCount:I

    .line 576
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/DialerStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 578
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/DialerStaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 581
    iget-object v1, p0, Landroid/text/DialerStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/DialerStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 582
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/DialerStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 583
    return-void

    .line 546
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 568
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/DialerStaticLayout;->mColumns:I

    .line 569
    move/from16 v0, p5

    iput v0, p0, Landroid/text/DialerStaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 503
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/DialerStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 504
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 511
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/DialerStaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 513
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 17
    .parameter "lineStart"
    .parameter "lineEnd"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "avail"
    .parameter "where"
    .parameter "line"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "forceEllipsis"

    .prologue
    .line 1188
    cmpg-float v14, p8, p5

    if-gtz v14, :cond_0

    if-nez p10, :cond_0

    .line 1190
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/DialerStaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x3

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 1191
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/DialerStaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x4

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 1285
    :goto_0
    return-void

    .line 1195
    :cond_0
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_3

    const-string v14, "\u2025"

    :goto_1
    move-object/from16 v0, p9

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1198
    .local v3, ellipsisWidth:F
    const/4 v2, 0x0

    .line 1199
    .local v2, ellipsisStart:I
    const/4 v1, 0x0

    .line 1200
    .local v1, ellipsisCount:I
    sub-int v7, p2, p1

    .line 1203
    .local v7, len:I
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_6

    .line 1204
    move-object/from16 v0, p0

    iget v14, v0, Landroid/text/DialerStaticLayout;->mMaximumVisibleLineCount:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 1205
    const/4 v12, 0x0

    .line 1208
    .local v12, sum:F
    move v4, v7

    .local v4, i:I
    :goto_2
    if-ltz v4, :cond_1

    .line 1209
    add-int/lit8 v14, v4, -0x1

    add-int v14, v14, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 1211
    .local v13, w:F
    add-float v14, v13, v12

    add-float/2addr v14, v3

    cmpl-float v14, v14, p5

    if-lez v14, :cond_4

    .line 1218
    .end local v13           #w:F
    :cond_1
    const/4 v2, 0x0

    .line 1219
    move v1, v4

    .line 1283
    .end local v4           #i:I
    .end local v12           #sum:F
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/DialerStaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x3

    aput v2, v14, v15

    .line 1284
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/DialerStaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x4

    aput v1, v14, v15

    goto :goto_0

    .line 1195
    .end local v1           #ellipsisCount:I
    .end local v2           #ellipsisStart:I
    .end local v3           #ellipsisWidth:F
    .end local v7           #len:I
    :cond_3
    const-string v14, "\u2026"

    goto :goto_1

    .line 1215
    .restart local v1       #ellipsisCount:I
    .restart local v2       #ellipsisStart:I
    .restart local v3       #ellipsisWidth:F
    .restart local v4       #i:I
    .restart local v7       #len:I
    .restart local v12       #sum:F
    .restart local v13       #w:F
    :cond_4
    add-float/2addr v12, v13

    .line 1208
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1221
    .end local v4           #i:I
    .end local v12           #sum:F
    .end local v13           #w:F
    :cond_5
    const-string v14, "DialerStaticLayout"

    const/4 v15, 0x5

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1222
    const-string v14, "DialerStaticLayout"

    const-string v15, "Start Ellipsis only supported with one line"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1225
    :cond_6
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-eq v0, v14, :cond_7

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-eq v0, v14, :cond_7

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_a

    .line 1227
    :cond_7
    const/4 v12, 0x0

    .line 1230
    .restart local v12       #sum:F
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    if-ge v4, v7, :cond_8

    .line 1231
    add-int v14, v4, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 1233
    .restart local v13       #w:F
    add-float v14, v13, v12

    add-float/2addr v14, v3

    cmpl-float v14, v14, p5

    if-lez v14, :cond_9

    .line 1240
    .end local v13           #w:F
    :cond_8
    move v2, v4

    .line 1241
    sub-int v1, v7, v4

    .line 1242
    if-eqz p10, :cond_2

    if-nez v1, :cond_2

    if-lez v7, :cond_2

    .line 1243
    add-int/lit8 v2, v7, -0x1

    .line 1244
    const/4 v1, 0x1

    goto :goto_3

    .line 1237
    .restart local v13       #w:F
    :cond_9
    add-float/2addr v12, v13

    .line 1230
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1248
    .end local v4           #i:I
    .end local v12           #sum:F
    .end local v13           #w:F
    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Landroid/text/DialerStaticLayout;->mMaximumVisibleLineCount:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    .line 1249
    const/4 v8, 0x0

    .local v8, lsum:F
    const/4 v11, 0x0

    .line 1250
    .local v11, rsum:F
    const/4 v6, 0x0

    .local v6, left:I
    move v10, v7

    .line 1252
    .local v10, right:I
    sub-float v14, p5, v3

    const/high16 v15, 0x4000

    div-float v9, v14, v15

    .line 1253
    .local v9, ravail:F
    move v10, v7

    :goto_5
    if-ltz v10, :cond_b

    .line 1254
    add-int/lit8 v14, v10, -0x1

    add-int v14, v14, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 1256
    .restart local v13       #w:F
    add-float v14, v13, v11

    cmpl-float v14, v14, v9

    if-lez v14, :cond_d

    .line 1263
    .end local v13           #w:F
    :cond_b
    sub-float v14, p5, v3

    sub-float v5, v14, v11

    .line 1264
    .local v5, lavail:F
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v10, :cond_c

    .line 1265
    add-int v14, v6, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    .line 1267
    .restart local v13       #w:F
    add-float v14, v13, v8

    cmpl-float v14, v14, v5

    if-lez v14, :cond_e

    .line 1274
    .end local v13           #w:F
    :cond_c
    move v2, v6

    .line 1275
    sub-int v1, v10, v6

    .line 1276
    goto/16 :goto_3

    .line 1260
    .end local v5           #lavail:F
    .restart local v13       #w:F
    :cond_d
    add-float/2addr v11, v13

    .line 1253
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 1271
    .restart local v5       #lavail:F
    :cond_e
    add-float/2addr v8, v13

    .line 1264
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1277
    .end local v5           #lavail:F
    .end local v6           #left:I
    .end local v8           #lsum:F
    .end local v9           #ravail:F
    .end local v10           #right:I
    .end local v11           #rsum:F
    .end local v13           #w:F
    :cond_f
    const-string v14, "DialerStaticLayout"

    const/4 v15, 0x5

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1278
    const-string v14, "DialerStaticLayout"

    const-string v15, "Middle Ellipsis only supported with one line"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 986
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return v0

    .line 989
    :cond_1
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_0

    .line 992
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_2

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_2

    .line 993
    if-nez p1, :cond_0

    .line 994
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 1011
    goto :goto_0

    .line 1016
    :cond_2
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_3

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_3

    .line 1017
    if-nez p1, :cond_0

    .line 1018
    sparse-switch p0, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 1036
    goto :goto_0

    .line 1041
    :cond_3
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_4

    const/16 v2, 0x4db5

    if-le p0, v2, :cond_0

    .line 1044
    :cond_4
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_5

    const v2, 0x9fbb

    if-le p0, v2, :cond_0

    .line 1047
    :cond_5
    const v2, 0xf900

    if-lt p0, v2, :cond_6

    const v2, 0xfad9

    if-le p0, v2, :cond_0

    .line 1050
    :cond_6
    const v2, 0xa000

    if-lt p0, v2, :cond_7

    const v2, 0xa48f

    if-le p0, v2, :cond_0

    .line 1053
    :cond_7
    const v2, 0xa490

    if-lt p0, v2, :cond_8

    const v2, 0xa4cf

    if-le p0, v2, :cond_0

    .line 1056
    :cond_8
    const v2, 0xfe62

    if-lt p0, v2, :cond_9

    const v2, 0xfe66

    if-le p0, v2, :cond_0

    .line 1059
    :cond_9
    const v2, 0xff10

    if-lt p0, v2, :cond_a

    const v2, 0xff19

    if-le p0, v2, :cond_0

    :cond_a
    move v0, v1

    .line 1063
    goto :goto_0

    .line 994
    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 1018
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "above"
    .parameter "below"
    .parameter "top"
    .parameter "bottom"
    .parameter "v"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "chooseHt"
    .parameter "chooseHtv"
    .parameter "fm"
    .parameter "hasTabOrEmoji"
    .parameter "needMultiply"
    .parameter "chdirs"
    .parameter "dir"
    .parameter "easy"
    .parameter "bufEnd"
    .parameter "includePad"
    .parameter "trackPad"
    .parameter "chs"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "ellipsize"
    .parameter "ellipsisWidth"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "moreChars"

    .prologue
    .line 1072
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DialerStaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 1073
    .local v22, j:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int v26, v22, v2

    .line 1074
    .local v26, off:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/DialerStaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 1075
    .local v27, want:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DialerStaticLayout;->mLines:[I

    move-object/from16 v24, v0

    .line 1077
    .local v24, lines:[I
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 1078
    add-int/lit8 v2, v27, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v25

    .line 1079
    .local v25, nlen:I
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 1080
    .local v19, grow:[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1081
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DialerStaticLayout;->mLines:[I

    .line 1082
    move-object/from16 v24, v19

    .line 1084
    move/from16 v0, v25

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v20, v0

    .line 1085
    .local v20, grow2:[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DialerStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DialerStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1086
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DialerStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 1089
    .end local v19           #grow:[I
    .end local v20           #grow2:[Landroid/text/Layout$Directions;
    .end local v25           #nlen:I
    :cond_0
    if-eqz p11, :cond_3

    .line 1090
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1091
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1092
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1093
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1095
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 1096
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 1097
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1095
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 1100
    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 1104
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 1105
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 1106
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 1107
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 1110
    .end local v21           #i:I
    :cond_3
    if-nez v22, :cond_5

    .line 1111
    if-eqz p21, :cond_4

    .line 1112
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/DialerStaticLayout;->mTopPadding:I

    .line 1115
    :cond_4
    if-eqz p20, :cond_5

    .line 1116
    move/from16 p4, p6

    .line 1119
    :cond_5
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_7

    .line 1120
    if-eqz p21, :cond_6

    .line 1121
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/DialerStaticLayout;->mBottomPadding:I

    .line 1124
    :cond_6
    if-eqz p20, :cond_7

    .line 1125
    move/from16 p5, p7

    .line 1131
    :cond_7
    if-eqz p15, :cond_e

    .line 1132
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v15, v2

    .line 1133
    .local v15, ex:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v15, v2

    if-ltz v2, :cond_d

    .line 1134
    const-wide/high16 v2, 0x3fe0

    add-double/2addr v2, v15

    double-to-int v0, v2

    move/from16 v17, v0

    .line 1142
    .end local v15           #ex:D
    .local v17, extra:I
    :goto_2
    add-int/lit8 v2, v26, 0x0

    aput p2, v24, v2

    .line 1143
    add-int/lit8 v2, v26, 0x1

    aput p8, v24, v2

    .line 1144
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v17

    aput v3, v24, v2

    .line 1146
    sub-int v2, p5, p4

    add-int v2, v2, v17

    add-int p8, p8, v2

    .line 1147
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/DialerStaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v24, v2

    .line 1148
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/DialerStaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v24, v2

    .line 1150
    if-eqz p14, :cond_8

    .line 1151
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 1154
    :cond_8
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 1155
    sget-object v23, Landroid/text/DialerStaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1159
    .local v23, linedirs:Landroid/text/Layout$Directions;
    if-eqz p18, :cond_f

    .line 1160
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DialerStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v23, v2, v22

    .line 1166
    :goto_3
    if-eqz p25, :cond_c

    .line 1169
    if-nez v22, :cond_10

    const/16 v18, 0x1

    .line 1170
    .local v18, firstLine:Z
    :goto_4
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/DialerStaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_11

    const/4 v13, 0x1

    .line 1171
    .local v13, currentLineIsTheLastVisibleOne:Z
    :goto_5
    if-eqz p29, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/DialerStaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/DialerStaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_12

    const/4 v12, 0x1

    .line 1173
    .local v12, forceEllipsis:Z
    :goto_6
    if-eqz v18, :cond_9

    if-nez p29, :cond_9

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_b

    :cond_9
    if-nez v18, :cond_13

    if-nez v13, :cond_a

    if-nez p29, :cond_13

    :cond_a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_13

    :cond_b
    const/4 v14, 0x1

    .line 1175
    .local v14, doEllipsis:Z
    :goto_7
    if-eqz v14, :cond_c

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 1176
    invoke-direct/range {v2 .. v12}, Landroid/text/DialerStaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 1181
    .end local v12           #forceEllipsis:Z
    .end local v13           #currentLineIsTheLastVisibleOne:Z
    .end local v14           #doEllipsis:Z
    .end local v18           #firstLine:Z
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/DialerStaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/DialerStaticLayout;->mLineCount:I

    .line 1182
    return p8

    .line 1136
    .end local v17           #extra:I
    .end local v23           #linedirs:Landroid/text/Layout$Directions;
    .restart local v15       #ex:D
    :cond_d
    neg-double v2, v15

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v17, v0

    .restart local v17       #extra:I
    goto/16 :goto_2

    .line 1139
    .end local v15           #ex:D
    .end local v17           #extra:I
    :cond_e
    const/16 v17, 0x0

    .restart local v17       #extra:I
    goto/16 :goto_2

    .line 1162
    .restart local v23       #linedirs:Landroid/text/Layout$Directions;
    :cond_f
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/DialerStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto :goto_3

    .line 1169
    :cond_10
    const/16 v18, 0x0

    goto :goto_4

    .line 1170
    .restart local v18       #firstLine:Z
    :cond_11
    const/4 v13, 0x0

    goto :goto_5

    .line 1171
    .restart local v13       #currentLineIsTheLastVisibleOne:Z
    :cond_12
    const/4 v12, 0x0

    goto :goto_6

    .line 1173
    .restart local v12       #forceEllipsis:Z
    :cond_13
    const/4 v14, 0x0

    goto :goto_7
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Landroid/text/DialerStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DialerStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1395
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 134
    .parameter "source"
    .parameter "bufStart"
    .parameter "bufEnd"
    .parameter "paint"
    .parameter "outerWidth"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "ellipsizedWidth"
    .parameter "ellipsize"

    .prologue
    .line 598
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/DialerStaticLayout;->mLineCount:I

    .line 600
    const/4 v13, 0x0

    .line 601
    .local v13, v:I
    const/high16 v5, 0x3f80

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_3

    :cond_0
    const/16 v20, 0x1

    .line 603
    .local v20, needMultiply:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DialerStaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    .line 604
    .local v18, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v17, 0x0

    .line 606
    .local v17, chooseHtv:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DialerStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v112, v0

    .line 608
    .local v112, measured:Landroid/text/MeasuredText;
    const/16 v127, 0x0

    .line 609
    .local v127, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    move-object/from16 v127, p1

    .line 610
    check-cast v127, Landroid/text/Spanned;

    .line 613
    :cond_1
    const/16 v80, 0x1

    .line 616
    .local v80, DEFAULT_DIR:I
    move/from16 v29, p2

    .local v29, paraStart:I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, p3

    if-gt v0, v1, :cond_2f

    .line 617
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v38

    .line 618
    .local v38, paraEnd:I
    if-gez v38, :cond_4

    .line 619
    move/from16 v38, p3

    .line 624
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/DialerStaticLayout;->mLineCount:I

    add-int/lit8 v98, v5, 0x1

    .line 625
    .local v98, firstWidthLineLimit:I
    move/from16 v97, p5

    .line 626
    .local v97, firstWidth:I
    move/from16 v122, p5

    .line 628
    .local v122, restWidth:I
    const/16 v16, 0x0

    .line 630
    .local v16, chooseHt:[Landroid/text/style/LineHeightSpan;
    if-eqz v127, :cond_9

    .line 631
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v127

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/DialerStaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v123

    check-cast v123, [Landroid/text/style/LeadingMarginSpan;

    .line 633
    .local v123, sp:[Landroid/text/style/LeadingMarginSpan;
    const/16 v107, 0x0

    .local v107, i:I
    :goto_3
    move-object/from16 v0, v123

    array-length v5, v0

    move/from16 v0, v107

    if-ge v0, v5, :cond_5

    .line 634
    aget-object v109, v123, v107

    .line 635
    .local v109, lms:Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v123, v107

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v97, v97, v5

    .line 636
    aget-object v5, v123, v107

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v122, v122, v5

    .line 642
    move-object/from16 v0, v109

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_2

    move-object/from16 v110, v109

    .line 643
    check-cast v110, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 644
    .local v110, lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v127

    move-object/from16 v1, v110

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v111

    .line 645
    .local v111, lmsFirstLine:I
    invoke-interface/range {v110 .. v110}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v98, v111, v5

    .line 633
    .end local v110           #lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v111           #lmsFirstLine:I
    :cond_2
    add-int/lit8 v107, v107, 0x1

    goto :goto_3

    .line 601
    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v17           #chooseHtv:[I
    .end local v18           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v20           #needMultiply:Z
    .end local v29           #paraStart:I
    .end local v38           #paraEnd:I
    .end local v80           #DEFAULT_DIR:I
    .end local v97           #firstWidth:I
    .end local v98           #firstWidthLineLimit:I
    .end local v107           #i:I
    .end local v109           #lms:Landroid/text/style/LeadingMarginSpan;
    .end local v112           #measured:Landroid/text/MeasuredText;
    .end local v122           #restWidth:I
    .end local v123           #sp:[Landroid/text/style/LeadingMarginSpan;
    .end local v127           #spanned:Landroid/text/Spanned;
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 621
    .restart local v17       #chooseHtv:[I
    .restart local v18       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v20       #needMultiply:Z
    .restart local v29       #paraStart:I
    .restart local v38       #paraEnd:I
    .restart local v80       #DEFAULT_DIR:I
    .restart local v112       #measured:Landroid/text/MeasuredText;
    .restart local v127       #spanned:Landroid/text/Spanned;
    :cond_4
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    .line 649
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v97       #firstWidth:I
    .restart local v98       #firstWidthLineLimit:I
    .restart local v107       #i:I
    .restart local v122       #restWidth:I
    .restart local v123       #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_5
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v127

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/DialerStaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    check-cast v16, [Landroid/text/style/LineHeightSpan;

    .line 651
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v16

    array-length v5, v0

    if-eqz v5, :cond_9

    .line 652
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_7

    .line 653
    :cond_6
    move-object/from16 v0, v16

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 656
    :cond_7
    const/16 v107, 0x0

    :goto_4
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v107

    if-ge v0, v5, :cond_9

    .line 657
    aget-object v5, v16, v107

    move-object/from16 v0, v127

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v115

    .line 659
    .local v115, o:I
    move/from16 v0, v115

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 663
    move-object/from16 v0, p0

    move/from16 v1, v115

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/DialerStaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v17, v107

    .line 656
    :goto_5
    add-int/lit8 v107, v107, 0x1

    goto :goto_4

    .line 667
    :cond_8
    aput v13, v17, v107

    goto :goto_5

    .line 673
    .end local v107           #i:I
    .end local v115           #o:I
    .end local v123           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_9
    move-object/from16 v0, v112

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v38

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 674
    move-object/from16 v0, v112

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v27, v0

    .line 675
    .local v27, chs:[C
    move-object/from16 v0, v112

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v28, v0

    .line 676
    .local v28, widths:[F
    move-object/from16 v0, v112

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v21, v0

    .line 677
    .local v21, chdirs:[B
    move-object/from16 v0, v112

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v22, v0

    .line 678
    .local v22, dir:I
    move-object/from16 v0, v112

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v23, v0

    .line 680
    .local v23, easy:Z
    move/from16 v133, v97

    .line 682
    .local v133, width:I
    const/16 v62, 0x0

    .line 683
    .local v62, w:F
    move/from16 v7, v29

    .line 685
    .local v7, here:I
    move/from16 v116, v29

    .line 686
    .local v116, ok:I
    move/from16 v121, v62

    .line 687
    .local v121, okWidth:F
    const/16 v117, 0x0

    .local v117, okAscent:I
    const/16 v119, 0x0

    .local v119, okDescent:I
    const/16 v120, 0x0

    .local v120, okTop:I
    const/16 v118, 0x0

    .line 689
    .local v118, okBottom:I
    move/from16 v99, v29

    .line 690
    .local v99, fit:I
    move/from16 v100, v62

    .line 691
    .local v100, fitWidth:F
    const/16 v39, 0x0

    .local v39, fitAscent:I
    const/16 v40, 0x0

    .local v40, fitDescent:I
    const/16 v41, 0x0

    .local v41, fitTop:I
    const/16 v42, 0x0

    .line 693
    .local v42, fitBottom:I
    const/16 v19, 0x0

    .line 694
    .local v19, hasTabOrEmoji:Z
    const/16 v105, 0x0

    .line 695
    .local v105, hasTab:Z
    const/16 v130, 0x0

    .line 697
    .local v130, tabStops:Landroid/text/Layout$TabStops;
    move/from16 v126, v29

    .local v126, spanStart:I
    move/from16 v124, v126

    .local v124, spanEnd:I
    :goto_6
    move/from16 v0, v126

    move/from16 v1, v38

    if-ge v0, v1, :cond_2c

    .line 699
    move/from16 v0, v126

    move/from16 v1, v124

    if-ne v0, v1, :cond_a

    .line 700
    if-nez v127, :cond_1a

    .line 701
    move/from16 v124, v38

    .line 707
    :goto_7
    sub-int v125, v124, v126

    .line 708
    .local v125, spanLen:I
    if-nez v127, :cond_1b

    .line 709
    move-object/from16 v0, v112

    move-object/from16 v1, p4

    move/from16 v2, v125

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 719
    .end local v125           #spanLen:I
    :cond_a
    :goto_8
    move/from16 v114, v124

    .line 721
    .local v114, nextSpanStart:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v104, v0

    .line 722
    .local v104, fmTop:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v102, v0

    .line 723
    .local v102, fmBottom:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v101, v0

    .line 724
    .local v101, fmAscent:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v103, v0

    .line 726
    .local v103, fmDescent:I
    move/from16 v108, v126

    .local v108, j:I
    :goto_9
    move/from16 v0, v108

    move/from16 v1, v114

    if-ge v0, v1, :cond_19

    .line 727
    sub-int v5, v108, v29

    aget-char v95, v27, v5

    .line 729
    .local v95, c:C
    const/16 v5, 0xa

    move/from16 v0, v95

    if-ne v0, v5, :cond_1c

    .line 783
    :goto_a
    move/from16 v0, v133

    int-to-float v5, v0

    cmpg-float v5, v62, v5

    if-gtz v5, :cond_24

    .line 784
    move/from16 v100, v62

    .line 785
    add-int/lit8 v99, v108, 0x1

    .line 787
    move/from16 v0, v104

    move/from16 v1, v41

    if-ge v0, v1, :cond_b

    .line 788
    move/from16 v41, v104

    .line 790
    :cond_b
    move/from16 v0, v101

    move/from16 v1, v39

    if-ge v0, v1, :cond_c

    .line 791
    move/from16 v39, v101

    .line 793
    :cond_c
    move/from16 v0, v103

    move/from16 v1, v40

    if-le v0, v1, :cond_d

    .line 794
    move/from16 v40, v103

    .line 796
    :cond_d
    move/from16 v0, v102

    move/from16 v1, v42

    if-le v0, v1, :cond_e

    .line 797
    move/from16 v42, v102

    .line 816
    :cond_e
    const/16 v5, 0x20

    move/from16 v0, v95

    if-eq v0, v5, :cond_14

    const/16 v5, 0x9

    move/from16 v0, v95

    if-eq v0, v5, :cond_14

    const/16 v5, 0x2e

    move/from16 v0, v95

    if-eq v0, v5, :cond_f

    const/16 v5, 0x2c

    move/from16 v0, v95

    if-eq v0, v5, :cond_f

    const/16 v5, 0x3a

    move/from16 v0, v95

    if-eq v0, v5, :cond_f

    const/16 v5, 0x3b

    move/from16 v0, v95

    if-ne v0, v5, :cond_11

    :cond_f
    add-int/lit8 v5, v108, -0x1

    if-lt v5, v7, :cond_10

    add-int/lit8 v5, v108, -0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_11

    :cond_10
    add-int/lit8 v5, v108, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_14

    add-int/lit8 v5, v108, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_11
    const/16 v5, 0x2f

    move/from16 v0, v95

    if-eq v0, v5, :cond_12

    const/16 v5, 0x2d

    move/from16 v0, v95

    if-ne v0, v5, :cond_13

    :cond_12
    add-int/lit8 v5, v108, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_14

    add-int/lit8 v5, v108, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_13
    const/16 v5, 0x2e80

    move/from16 v0, v95

    if-lt v0, v5, :cond_18

    const/4 v5, 0x1

    move/from16 v0, v95

    invoke-static {v0, v5}, Landroid/text/DialerStaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_18

    add-int/lit8 v5, v108, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_18

    add-int/lit8 v5, v108, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/DialerStaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 827
    :cond_14
    move/from16 v121, v62

    .line 828
    add-int/lit8 v116, v108, 0x1

    .line 830
    move/from16 v0, v41

    move/from16 v1, v120

    if-ge v0, v1, :cond_15

    .line 831
    move/from16 v120, v41

    .line 833
    :cond_15
    move/from16 v0, v39

    move/from16 v1, v117

    if-ge v0, v1, :cond_16

    .line 834
    move/from16 v117, v39

    .line 836
    :cond_16
    move/from16 v0, v40

    move/from16 v1, v119

    if-le v0, v1, :cond_17

    .line 837
    move/from16 v119, v40

    .line 839
    :cond_17
    move/from16 v0, v42

    move/from16 v1, v118

    if-le v0, v1, :cond_18

    .line 840
    move/from16 v118, v42

    .line 906
    :cond_18
    :goto_b
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/DialerStaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/DialerStaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_2b

    .line 697
    .end local v95           #c:C
    :cond_19
    move/from16 v126, v114

    goto/16 :goto_6

    .line 703
    .end local v101           #fmAscent:I
    .end local v102           #fmBottom:I
    .end local v103           #fmDescent:I
    .end local v104           #fmTop:I
    .end local v108           #j:I
    .end local v114           #nextSpanStart:I
    :cond_1a
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v127

    move/from16 v1, v126

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v124

    goto/16 :goto_7

    .line 711
    .restart local v125       #spanLen:I
    :cond_1b
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v127

    move/from16 v1, v126

    move/from16 v2, v124

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v128

    check-cast v128, [Landroid/text/style/MetricAffectingSpan;

    .line 713
    .local v128, spans:[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v128

    move-object/from16 v1, v127

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v128

    .end local v128           #spans:[Landroid/text/style/MetricAffectingSpan;
    check-cast v128, [Landroid/text/style/MetricAffectingSpan;

    .line 715
    .restart local v128       #spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v112

    move-object/from16 v1, p4

    move-object/from16 v2, v128

    move/from16 v3, v125

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_8

    .line 731
    .end local v125           #spanLen:I
    .end local v128           #spans:[Landroid/text/style/MetricAffectingSpan;
    .restart local v95       #c:C
    .restart local v101       #fmAscent:I
    .restart local v102       #fmBottom:I
    .restart local v103       #fmDescent:I
    .restart local v104       #fmTop:I
    .restart local v108       #j:I
    .restart local v114       #nextSpanStart:I
    :cond_1c
    const/16 v5, 0x9

    move/from16 v0, v95

    if-ne v0, v5, :cond_1f

    .line 732
    if-nez v105, :cond_1d

    .line 733
    const/16 v105, 0x1

    .line 734
    const/16 v19, 0x1

    .line 735
    if-eqz v127, :cond_1d

    .line 737
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v127

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/DialerStaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v128

    check-cast v128, [Landroid/text/style/TabStopSpan;

    .line 739
    .local v128, spans:[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v128

    array-length v5, v0

    if-lez v5, :cond_1d

    .line 740
    new-instance v130, Landroid/text/Layout$TabStops;

    .end local v130           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v130

    move-object/from16 v1, v128

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 744
    .end local v128           #spans:[Landroid/text/style/TabStopSpan;
    .restart local v130       #tabStops:Landroid/text/Layout$TabStops;
    :cond_1d
    if-eqz v130, :cond_1e

    .line 745
    move-object/from16 v0, v130

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v62

    goto/16 :goto_a

    .line 747
    :cond_1e
    const/16 v5, 0x14

    move/from16 v0, v62

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v62

    goto/16 :goto_a

    .line 749
    :cond_1f
    const v5, 0xd800

    move/from16 v0, v95

    if-lt v0, v5, :cond_23

    const v5, 0xdfff

    move/from16 v0, v95

    if-gt v0, v5, :cond_23

    add-int/lit8 v5, v108, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_23

    .line 751
    sub-int v5, v108, v29

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v96

    .line 753
    .local v96, emoji:I
    sget v5, Landroid/text/DialerStaticLayout;->MIN_EMOJI:I

    move/from16 v0, v96

    if-lt v0, v5, :cond_22

    sget v5, Landroid/text/DialerStaticLayout;->MAX_EMOJI:I

    move/from16 v0, v96

    if-gt v0, v5, :cond_22

    .line 754
    sget-object v5, Landroid/text/DialerStaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v94

    .line 756
    .local v94, bm:Landroid/graphics/Bitmap;
    if-eqz v94, :cond_21

    .line 759
    if-nez v127, :cond_20

    .line 760
    move-object/from16 v131, p4

    .line 765
    .local v131, whichPaint:Landroid/graphics/Paint;
    :goto_c
    invoke-virtual/range {v94 .. v94}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v131 .. v131}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v94 .. v94}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v132, v5, v6

    .line 767
    .local v132, wid:F
    add-float v62, v62, v132

    .line 768
    const/16 v19, 0x1

    .line 769
    add-int/lit8 v108, v108, 0x1

    .line 770
    goto/16 :goto_a

    .line 762
    .end local v131           #whichPaint:Landroid/graphics/Paint;
    .end local v132           #wid:F
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v131, v0

    .restart local v131       #whichPaint:Landroid/graphics/Paint;
    goto :goto_c

    .line 771
    .end local v131           #whichPaint:Landroid/graphics/Paint;
    :cond_21
    sub-int v5, v108, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_a

    .line 774
    .end local v94           #bm:Landroid/graphics/Bitmap;
    :cond_22
    sub-int v5, v108, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_a

    .line 777
    .end local v96           #emoji:I
    :cond_23
    sub-int v5, v108, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_a

    .line 844
    :cond_24
    add-int/lit8 v5, v108, 0x1

    move/from16 v0, v124

    if-ge v5, v0, :cond_26

    const/16 v34, 0x1

    .line 849
    .local v34, moreChars:Z
    :goto_d
    move/from16 v0, v116

    if-eq v0, v7, :cond_28

    .line 851
    const/16 v5, 0x20

    move/from16 v0, v95

    if-ne v0, v5, :cond_25

    .line 852
    add-int/lit8 v116, v108, 0x1

    .line 855
    :cond_25
    :goto_e
    move/from16 v0, v116

    move/from16 v1, v124

    if-ge v0, v1, :cond_27

    sub-int v5, v116, v29

    aget-char v5, v27, v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_27

    .line 856
    add-int/lit8 v116, v116, 0x1

    goto :goto_e

    .line 844
    .end local v34           #moreChars:Z
    :cond_26
    const/16 v34, 0x0

    goto :goto_d

    .line 859
    .restart local v34       #moreChars:Z
    :cond_27
    move/from16 v8, v116

    .line 860
    .local v8, endPos:I
    move/from16 v9, v117

    .line 861
    .local v9, above:I
    move/from16 v10, v119

    .line 862
    .local v10, below:I
    move/from16 v11, v120

    .line 863
    .local v11, top:I
    move/from16 v12, v118

    .line 864
    .local v12, bottom:I
    move/from16 v32, v121

    .local v32, currentTextWidth:F
    :goto_f
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v24, p3

    move/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v30, p12

    move/from16 v31, p11

    move-object/from16 v33, p4

    .line 881
    invoke-direct/range {v5 .. v34}, Landroid/text/DialerStaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 886
    move v7, v8

    .line 888
    move/from16 v0, v126

    if-ge v7, v0, :cond_2a

    .line 892
    move/from16 v114, v7

    move/from16 v108, v7

    .line 897
    :goto_10
    move/from16 v99, v7

    move/from16 v116, v7

    .line 898
    const/16 v62, 0x0

    .line 899
    const/16 v42, 0x0

    move/from16 v41, v42

    move/from16 v40, v42

    move/from16 v39, v42

    .line 900
    const/16 v118, 0x0

    move/from16 v120, v118

    move/from16 v119, v118

    move/from16 v117, v118

    .line 902
    add-int/lit8 v98, v98, -0x1

    if-gtz v98, :cond_18

    .line 903
    move/from16 v133, v122

    goto/16 :goto_b

    .line 865
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    :cond_28
    move/from16 v0, v99

    if-eq v0, v7, :cond_29

    .line 866
    move/from16 v8, v99

    .line 867
    .restart local v8       #endPos:I
    move/from16 v9, v39

    .line 868
    .restart local v9       #above:I
    move/from16 v10, v40

    .line 869
    .restart local v10       #below:I
    move/from16 v11, v41

    .line 870
    .restart local v11       #top:I
    move/from16 v12, v42

    .line 871
    .restart local v12       #bottom:I
    move/from16 v32, v100

    .restart local v32       #currentTextWidth:F
    goto :goto_f

    .line 873
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    :cond_29
    add-int/lit8 v8, v7, 0x1

    .line 874
    .restart local v8       #endPos:I
    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 875
    .restart local v9       #above:I
    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 876
    .restart local v10       #below:I
    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 877
    .restart local v11       #top:I
    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 878
    .restart local v12       #bottom:I
    sub-int v5, v7, v29

    aget v32, v28, v5

    .restart local v32       #currentTextWidth:F
    goto :goto_f

    .line 894
    :cond_2a
    add-int/lit8 v108, v7, -0x1

    goto :goto_10

    .line 726
    .end local v8           #endPos:I
    .end local v9           #above:I
    .end local v10           #below:I
    .end local v11           #top:I
    .end local v12           #bottom:I
    .end local v32           #currentTextWidth:F
    .end local v34           #moreChars:Z
    :cond_2b
    add-int/lit8 v108, v108, 0x1

    goto/16 :goto_9

    .line 912
    .end local v95           #c:C
    .end local v101           #fmAscent:I
    .end local v102           #fmBottom:I
    .end local v103           #fmDescent:I
    .end local v104           #fmTop:I
    .end local v108           #j:I
    .end local v114           #nextSpanStart:I
    :cond_2c
    move/from16 v0, v38

    if-eq v0, v7, :cond_2e

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/DialerStaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/DialerStaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_2e

    .line 913
    or-int v5, v41, v42

    or-int v5, v5, v40

    or-int v5, v5, v39

    if-nez v5, :cond_2d

    .line 914
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 916
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v41, v0

    .line 917
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v42, v0

    .line 918
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v39, v0

    .line 919
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v40, v0

    .line 924
    :cond_2d
    move/from16 v0, v38

    move/from16 v1, p3

    if-eq v0, v1, :cond_32

    const/16 v64, 0x1

    :goto_11
    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move/from16 v37, v7

    move/from16 v43, v13

    move/from16 v44, p7

    move/from16 v45, p8

    move-object/from16 v46, v16

    move-object/from16 v47, v17

    move-object/from16 v48, v18

    move/from16 v49, v19

    move/from16 v50, v20

    move-object/from16 v51, v21

    move/from16 v52, v22

    move/from16 v53, v23

    move/from16 v54, p3

    move/from16 v55, p9

    move/from16 v56, p10

    move-object/from16 v57, v27

    move-object/from16 v58, v28

    move/from16 v59, v29

    move-object/from16 v60, p12

    move/from16 v61, p11

    move-object/from16 v63, p4

    invoke-direct/range {v35 .. v64}, Landroid/text/DialerStaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 930
    :cond_2e
    move/from16 v29, v38

    .line 932
    move/from16 v0, v38

    move/from16 v1, p3

    if-ne v0, v1, :cond_33

    .line 937
    .end local v7           #here:I
    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v19           #hasTabOrEmoji:Z
    .end local v21           #chdirs:[B
    .end local v22           #dir:I
    .end local v23           #easy:Z
    .end local v27           #chs:[C
    .end local v28           #widths:[F
    .end local v38           #paraEnd:I
    .end local v39           #fitAscent:I
    .end local v40           #fitDescent:I
    .end local v41           #fitTop:I
    .end local v42           #fitBottom:I
    .end local v62           #w:F
    .end local v97           #firstWidth:I
    .end local v98           #firstWidthLineLimit:I
    .end local v99           #fit:I
    .end local v100           #fitWidth:F
    .end local v105           #hasTab:Z
    .end local v116           #ok:I
    .end local v117           #okAscent:I
    .end local v118           #okBottom:I
    .end local v119           #okDescent:I
    .end local v120           #okTop:I
    .end local v121           #okWidth:F
    .end local v122           #restWidth:I
    .end local v124           #spanEnd:I
    .end local v126           #spanStart:I
    .end local v130           #tabStops:Landroid/text/Layout$TabStops;
    .end local v133           #width:I
    :cond_2f
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_30

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_31

    :cond_30
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/DialerStaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/DialerStaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_31

    .line 941
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 943
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v68, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v69, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v70, v0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v81, 0x1

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v90, 0x0

    const/16 v92, 0x0

    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move/from16 v65, p3

    move/from16 v66, p3

    move/from16 v71, v13

    move/from16 v72, p7

    move/from16 v73, p8

    move-object/from16 v76, v18

    move/from16 v78, v20

    move/from16 v82, p3

    move/from16 v83, p9

    move/from16 v84, p10

    move/from16 v87, p2

    move-object/from16 v88, p12

    move/from16 v89, p11

    move-object/from16 v91, p4

    invoke-direct/range {v63 .. v92}, Landroid/text/DialerStaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    .line 949
    :cond_31
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/DialerStaticLayout;->mLineCount:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_38

    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_38

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_38

    .line 950
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/DialerStaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/DialerStaticLayout;->getLineStart(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/DialerStaticLayout;->mLineCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/text/DialerStaticLayout;->getLineStart(I)I

    move-result v6

    sub-int v93, v5, v6

    .line 951
    .local v93, a:I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/DialerStaticLayout;->mLineCount:I

    new-array v0, v5, [I

    move-object/from16 v113, v0

    .line 952
    .local v113, minus:[I
    const/16 v108, 0x0

    .restart local v108       #j:I
    :goto_12
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/DialerStaticLayout;->mLineCount:I

    move/from16 v0, v108

    if-ge v0, v5, :cond_34

    .line 953
    add-int/lit8 v5, v108, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/DialerStaticLayout;->getLineStart(I)I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/text/DialerStaticLayout;->getLineStart(I)I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v113, v108

    .line 952
    add-int/lit8 v108, v108, 0x1

    goto :goto_12

    .line 924
    .end local v93           #a:I
    .end local v108           #j:I
    .end local v113           #minus:[I
    .restart local v7       #here:I
    .restart local v16       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v19       #hasTabOrEmoji:Z
    .restart local v21       #chdirs:[B
    .restart local v22       #dir:I
    .restart local v23       #easy:Z
    .restart local v27       #chs:[C
    .restart local v28       #widths:[F
    .restart local v38       #paraEnd:I
    .restart local v39       #fitAscent:I
    .restart local v40       #fitDescent:I
    .restart local v41       #fitTop:I
    .restart local v42       #fitBottom:I
    .restart local v62       #w:F
    .restart local v97       #firstWidth:I
    .restart local v98       #firstWidthLineLimit:I
    .restart local v99       #fit:I
    .restart local v100       #fitWidth:F
    .restart local v105       #hasTab:Z
    .restart local v116       #ok:I
    .restart local v117       #okAscent:I
    .restart local v118       #okBottom:I
    .restart local v119       #okDescent:I
    .restart local v120       #okTop:I
    .restart local v121       #okWidth:F
    .restart local v122       #restWidth:I
    .restart local v124       #spanEnd:I
    .restart local v126       #spanStart:I
    .restart local v130       #tabStops:Landroid/text/Layout$TabStops;
    .restart local v133       #width:I
    :cond_32
    const/16 v64, 0x0

    goto/16 :goto_11

    .line 616
    :cond_33
    move/from16 v29, v38

    goto/16 :goto_1

    .line 956
    .end local v7           #here:I
    .end local v16           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v19           #hasTabOrEmoji:Z
    .end local v21           #chdirs:[B
    .end local v22           #dir:I
    .end local v23           #easy:Z
    .end local v27           #chs:[C
    .end local v28           #widths:[F
    .end local v38           #paraEnd:I
    .end local v39           #fitAscent:I
    .end local v40           #fitDescent:I
    .end local v41           #fitTop:I
    .end local v42           #fitBottom:I
    .end local v62           #w:F
    .end local v97           #firstWidth:I
    .end local v98           #firstWidthLineLimit:I
    .end local v99           #fit:I
    .end local v100           #fitWidth:F
    .end local v105           #hasTab:Z
    .end local v116           #ok:I
    .end local v117           #okAscent:I
    .end local v118           #okBottom:I
    .end local v119           #okDescent:I
    .end local v120           #okTop:I
    .end local v121           #okWidth:F
    .end local v122           #restWidth:I
    .end local v124           #spanEnd:I
    .end local v126           #spanStart:I
    .end local v130           #tabStops:Landroid/text/Layout$TabStops;
    .end local v133           #width:I
    .restart local v93       #a:I
    .restart local v108       #j:I
    .restart local v113       #minus:[I
    :cond_34
    const/16 v107, 0x0

    .restart local v107       #i:I
    :goto_13
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/DialerStaticLayout;->mLineCount:I

    move/from16 v0, v107

    if-gt v0, v5, :cond_38

    .line 957
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DialerStaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int v6, v6, v107

    add-int/lit8 v6, v6, 0x0

    aget v5, v5, v6

    const/high16 v6, -0x2000

    and-int v106, v5, v6

    .line 958
    .local v106, head:I
    if-nez v107, :cond_35

    .line 959
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DialerStaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int v6, v6, v107

    add-int/lit8 v6, v6, 0x0

    const/4 v14, 0x0

    aput v14, v5, v6

    .line 971
    :goto_14
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DialerStaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int v6, v6, v107

    add-int/lit8 v6, v6, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/DialerStaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int v15, v15, v107

    add-int/lit8 v15, v15, 0x0

    aget v14, v14, v15

    const v15, 0x1fffffff

    and-int/2addr v14, v15

    or-int v14, v14, v106

    aput v14, v5, v6

    .line 956
    add-int/lit8 v107, v107, 0x1

    goto :goto_13

    .line 961
    :cond_35
    const/16 v129, 0x0

    .line 962
    .local v129, sum:I
    const/16 v108, 0x0

    :goto_15
    move/from16 v0, v108

    move/from16 v1, v107

    if-ge v0, v1, :cond_37

    .line 963
    if-nez v108, :cond_36

    .line 964
    add-int v129, v129, v93

    .line 962
    :goto_16
    add-int/lit8 v108, v108, 0x1

    goto :goto_15

    .line 966
    :cond_36
    aget v5, v113, v108

    add-int v129, v129, v5

    goto :goto_16

    .line 969
    :cond_37
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/DialerStaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int v6, v6, v107

    add-int/lit8 v6, v6, 0x0

    aput v129, v5, v6

    goto :goto_14

    .line 975
    .end local v93           #a:I
    .end local v106           #head:I
    .end local v107           #i:I
    .end local v108           #j:I
    .end local v113           #minus:[I
    .end local v129           #sum:I
    :cond_38
    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 1363
    iget v0, p0, Landroid/text/DialerStaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1368
    iget v0, p0, Landroid/text/DialerStaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1369
    const/4 v0, 0x0

    .line 1372
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/DialerStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1377
    iget v0, p0, Landroid/text/DialerStaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1378
    const/4 v0, 0x0

    .line 1381
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/DialerStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1386
    iget v0, p0, Landroid/text/DialerStaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .parameter "line"

    .prologue
    .line 1348
    iget-object v0, p0, Landroid/text/DialerStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 1314
    iget v0, p0, Landroid/text/DialerStaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1328
    iget-object v1, p0, Landroid/text/DialerStaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 1329
    .local v0, descent:I
    iget v1, p0, Landroid/text/DialerStaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/DialerStaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/DialerStaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1331
    invoke-virtual {p0}, Landroid/text/DialerStaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1333
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    .line 1353
    iget-object v0, p0, Landroid/text/DialerStaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .parameter "vertical"

    .prologue
    .line 1293
    iget v1, p0, Landroid/text/DialerStaticLayout;->mLineCount:I

    .line 1294
    .local v1, high:I
    const/4 v3, -0x1

    .line 1296
    .local v3, low:I
    iget-object v2, p0, Landroid/text/DialerStaticLayout;->mLines:[I

    .line 1297
    .local v2, lines:[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 1298
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 1299
    .local v0, guess:I
    iget v4, p0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 1300
    move v1, v0

    goto :goto_0

    .line 1302
    :cond_0
    move v3, v0

    goto :goto_0

    .line 1305
    .end local v0           #guess:I
    :cond_1
    if-gez v3, :cond_2

    .line 1306
    const/4 v3, 0x0

    .line 1308
    .end local v3           #low:I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1338
    iget-object v0, p0, Landroid/text/DialerStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1319
    iget-object v1, p0, Landroid/text/DialerStaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 1320
    .local v0, top:I
    iget v1, p0, Landroid/text/DialerStaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/DialerStaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/DialerStaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1321
    invoke-virtual {p0}, Landroid/text/DialerStaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1323
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1343
    iget-object v0, p0, Landroid/text/DialerStaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/DialerStaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 1358
    iget v0, p0, Landroid/text/DialerStaticLayout;->mTopPadding:I

    return v0
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 1390
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/DialerStaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1391
    return-void
.end method
