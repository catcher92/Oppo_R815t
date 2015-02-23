.class public Lcom/oppo/widget/OppoTabWidget;
.super Landroid/view/View;
.source "OppoTabWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;,
        Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_STATE_SET:[I = null

.field private static final SUSPENSION:Ljava/lang/String; = ".."

.field private static final TAG:Ljava/lang/String; = "OppoTabWidget"


# instance fields
.field private mClickRequestFocus:Z

.field private mContentHeight:I

.field private mContentWidth:I

.field private mCurFocusTabIndex:I

.field private mCurIsLandMode:Z

.field private mDefaultTextSize:I

.field private mDefaultTextSizeLandscape:I

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mHeightRatioLand:F

.field private mHeightRatioPor:F

.field private mHlTabIconOffsetToNonHlTabIconInYDir:I

.field private mIconHeight:I

.field private mIconHeightLandRatio:F

.field private mIconHeightPortRatio:F

.field private mIconMarginToTop:I

.field private mInitTabsAreaDone:Z

.field private mLabelFocusColor:I

.field private mLabelMarginToBottom:I

.field private mLabelNorColor:I

.field private mLabelTextSize:I

.field private mMultiTouch:Z

.field private mOldFocusTabIndex:I

.field private mOnlyTextSize:I

.field private mOppoTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

.field private mOppoTabSpecsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mTabBgLeft:Landroid/graphics/drawable/Drawable;

.field private mTabBgMiddle:Landroid/graphics/drawable/Drawable;

.field private mTabBgRight:Landroid/graphics/drawable/Drawable;

.field private mTabHlBgLeft:Landroid/graphics/drawable/Drawable;

.field private mTabHlBgMiddle:Landroid/graphics/drawable/Drawable;

.field private mTabHlBgRight:Landroid/graphics/drawable/Drawable;

.field private mTabHlBgTransparentAreaWidth:I

.field private mTabMaxCount:I

.field private mTabSideMargin:I

.field private mTabSideMarginRation:F

.field private mTabTopShadowHeight:I

.field private mTabWidgetBg:Landroid/graphics/drawable/Drawable;

.field private mWaitTouchUpFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/oppo/widget/OppoTabWidget;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 145
    const v0, 0xc010004

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    .line 76
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mContentWidth:I

    .line 77
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    .line 78
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    .line 80
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    .line 81
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 83
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelNorColor:I

    .line 84
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelFocusColor:I

    .line 85
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSize:I

    .line 86
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSizeLandscape:I

    .line 87
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioPor:F

    .line 88
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioLand:F

    .line 89
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightPortRatio:F

    .line 90
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightLandRatio:F

    .line 91
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    .line 92
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelMarginToBottom:I

    .line 93
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgTransparentAreaWidth:I

    .line 94
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mHlTabIconOffsetToNonHlTabIconInYDir:I

    .line 96
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    .line 98
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    .line 100
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMarginRation:F

    .line 101
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    .line 103
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    .line 105
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    .line 107
    const/4 v8, -0x1

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 108
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    .line 111
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabMaxCount:I

    .line 117
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabBgLeft:Landroid/graphics/drawable/Drawable;

    .line 118
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabBgMiddle:Landroid/graphics/drawable/Drawable;

    .line 119
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabBgRight:Landroid/graphics/drawable/Drawable;

    .line 120
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgLeft:Landroid/graphics/drawable/Drawable;

    .line 121
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgMiddle:Landroid/graphics/drawable/Drawable;

    .line 122
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgRight:Landroid/graphics/drawable/Drawable;

    .line 123
    const/4 v8, 0x0

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelTextSize:I

    .line 125
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoTabWidget;->mClickRequestFocus:Z

    .line 134
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoTabWidget;->mMultiTouch:Z

    .line 136
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    .line 138
    const/4 v8, -0x1

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    .line 153
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->getDrawables()V

    .line 156
    sget-object v8, Loppo/R$styleable;->OppoTabWidget:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 159
    .local v0, a:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 161
    .local v5, n:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 162
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 163
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 161
    :goto_1
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 165
    :pswitch_1
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelNorColor:I

    goto :goto_1

    .line 169
    :pswitch_2
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelFocusColor:I

    goto :goto_1

    .line 173
    :pswitch_3
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioPor:F

    goto :goto_1

    .line 177
    :pswitch_4
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioLand:F

    goto :goto_1

    .line 181
    :pswitch_5
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightPortRatio:F

    goto :goto_1

    .line 185
    :pswitch_6
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightLandRatio:F

    goto :goto_1

    .line 189
    :pswitch_7
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    goto :goto_1

    .line 193
    :pswitch_8
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelMarginToBottom:I

    goto :goto_1

    .line 201
    :pswitch_9
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgTransparentAreaWidth:I

    goto :goto_1

    .line 205
    :pswitch_a
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mHlTabIconOffsetToNonHlTabIconInYDir:I

    goto :goto_1

    .line 209
    :pswitch_b
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMarginRation:F

    goto :goto_1

    .line 213
    :pswitch_c
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelTextSize:I

    goto :goto_1

    .line 219
    .end local v1           #attr:I
    .end local v4           #i:I
    .end local v5           #n:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    iget-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc050405

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 231
    .local v2, defaultTextSize:I
    if-lez v2, :cond_1

    .line 232
    iput v2, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSize:I

    .line 234
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc050409

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 236
    .local v3, defaultTextSizeLandscape:I
    if-lez v3, :cond_2

    .line 237
    iput v3, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSizeLandscape:I

    .line 240
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc05040a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 242
    .local v7, topShadowHeight:I
    if-lez v7, :cond_3

    .line 243
    iput v7, p0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    .line 246
    :cond_3
    iget v6, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelTextSize:I

    .line 247
    .local v6, textSize:I
    if-nez v6, :cond_4

    .line 248
    iget v6, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSize:I

    .line 251
    :cond_4
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    .line 252
    iget-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 253
    iget-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    int-to-float v9, v6

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 254
    iget-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelNorColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    iget-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    iput-object v8, p0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 257
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 260
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0xc05040b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/oppo/widget/OppoTabWidget;->mOnlyTextSize:I

    .line 262
    return-void

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private drawFocusTabContent(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 595
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-nez v13, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 601
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-gez v13, :cond_2

    .line 602
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 604
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v13, v14, :cond_3

    .line 605
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 608
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 622
    .local v10, tabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-nez v13, :cond_7

    .line 623
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgLeft:Landroid/graphics/drawable/Drawable;

    .line 629
    .local v8, tabHlBg:Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v8, :cond_4

    .line 630
    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/RectF;->left:F

    float-to-int v13, v13

    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/RectF;->right:F

    float-to-int v15, v15

    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 632
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 637
    :cond_4
    const/4 v5, 0x0

    .line 638
    .local v5, iconLeft:I
    const/4 v7, 0x0

    .line 639
    .local v7, iconTop:I
    const/4 v6, 0x0

    .line 640
    .local v6, iconRight:I
    const/4 v4, 0x0

    .line 642
    .local v4, iconBottom:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-nez v13, :cond_9

    .line 643
    const/4 v12, 0x0

    .line 644
    .local v12, x:I
    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/RectF;->left:F

    float-to-int v13, v13

    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->right:F

    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/RectF;->left:F

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    float-to-int v14, v14

    add-int v12, v13, v14

    .line 647
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    div-int/lit8 v13, v13, 0x2

    sub-int v5, v12, v13

    .line 648
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mHlTabIconOffsetToNonHlTabIconInYDir:I

    add-int v7, v13, v14

    .line 649
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    div-int/lit8 v13, v13, 0x2

    add-int v6, v12, v13

    .line 650
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    add-int v4, v13, v14

    .line 659
    .end local v12           #x:I
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1}, Lcom/oppo/widget/OppoTabWidget;->drawHlTabText(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Landroid/graphics/Canvas;)I

    move-result v2

    .line 660
    .local v2, adjustOffset:I
    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getNormalTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 661
    .local v9, tabIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_0

    .line 662
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 663
    const/4 v13, 0x1

    new-array v3, v13, [I

    const/4 v13, 0x0

    const v14, 0x10100a1

    aput v14, v3, v13

    .line 664
    .local v3, focusDrawableState:[I
    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 665
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 668
    .end local v3           #focusDrawableState:[I
    :cond_5
    if-gez v2, :cond_6

    .line 669
    add-int/2addr v5, v2

    .line 670
    add-int/2addr v6, v2

    .line 673
    :cond_6
    invoke-virtual {v9, v5, v7, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 674
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 624
    .end local v2           #adjustOffset:I
    .end local v4           #iconBottom:I
    .end local v5           #iconLeft:I
    .end local v6           #iconRight:I
    .end local v7           #iconTop:I
    .end local v8           #tabHlBg:Landroid/graphics/drawable/Drawable;
    .end local v9           #tabIcon:Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ne v13, v14, :cond_8

    .line 625
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgRight:Landroid/graphics/drawable/Drawable;

    .restart local v8       #tabHlBg:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 627
    .end local v8           #tabHlBg:Landroid/graphics/drawable/Drawable;
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgMiddle:Landroid/graphics/drawable/Drawable;

    .restart local v8       #tabHlBg:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 652
    .restart local v4       #iconBottom:I
    .restart local v5       #iconLeft:I
    .restart local v6       #iconRight:I
    .restart local v7       #iconTop:I
    :cond_9
    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->top:F

    sub-float/2addr v13, v14

    float-to-int v11, v13

    .line 653
    .local v11, tabSpecHeight:I
    invoke-virtual {v10}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v13

    iget v13, v13, Landroid/graphics/RectF;->left:F

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    add-int v5, v13, v14

    .line 654
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    sub-int v13, v11, v13

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    add-int v7, v13, v14

    .line 655
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    add-int v6, v5, v13

    .line 656
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    add-int v4, v7, v13

    goto/16 :goto_2
.end method

.method private drawHlTabText(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Landroid/graphics/Canvas;)I
    .locals 16
    .parameter "tabSpec"
    .parameter "canvas"

    .prologue
    .line 680
    if-nez p1, :cond_0

    .line 681
    const/4 v1, 0x0

    .line 754
    :goto_0
    return v1

    .line 683
    :cond_0
    const/4 v6, 0x0

    .line 684
    .local v6, tabLabel:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabLabel()Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 685
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 687
    :cond_1
    if-nez v6, :cond_2

    .line 688
    const/4 v1, 0x0

    goto :goto_0

    .line 691
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mLabelTextSize:I

    if-nez v13, :cond_3

    .line 692
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getHighlightTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-nez v13, :cond_3

    .line 693
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOnlyTextSize:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 696
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mLabelFocusColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 697
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 699
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 700
    .local v9, textWidth:I
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v5

    .line 702
    .local v5, tabArea:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-eqz v13, :cond_4

    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-int v3, v13

    .line 705
    .local v3, maxTextWidth:I
    :goto_1
    if-le v9, v3, :cond_7

    .line 706
    const-string v12, ".."

    .line 707
    .local v12, tmpTabLabel:Ljava/lang/String;
    const/4 v2, 0x0

    .line 708
    .local v2, end:I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v2, v13, :cond_6

    .line 709
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    invoke-virtual {v6, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 710
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 711
    if-ge v9, v3, :cond_5

    .line 712
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 702
    .end local v2           #end:I
    .end local v3           #maxTextWidth:I
    .end local v12           #tmpTabLabel:Ljava/lang/String;
    :cond_4
    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgTransparentAreaWidth:I

    mul-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-int v3, v13

    goto :goto_1

    .line 714
    .restart local v2       #end:I
    .restart local v3       #maxTextWidth:I
    .restart local v12       #tmpTabLabel:Ljava/lang/String;
    :cond_5
    const/4 v13, 0x1

    if-le v2, v13, :cond_6

    .line 715
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    add-int/lit8 v15, v2, -0x1

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 716
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 722
    :cond_6
    move-object v6, v12

    .line 725
    .end local v2           #end:I
    .end local v12           #tmpTabLabel:Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    .line 726
    .local v10, textX:F
    const/4 v11, 0x0

    .line 727
    .local v11, textY:I
    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    float-to-int v7, v13

    .line 728
    .local v7, tabWidth:I
    const/4 v1, 0x0

    .line 729
    .local v1, adjustOffset:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-nez v13, :cond_9

    .line 730
    iget v13, v5, Landroid/graphics/RectF;->left:F

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    add-float v10, v13, v14

    .line 731
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getHighlightTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-nez v13, :cond_8

    .line 732
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    add-int v11, v13, v14

    .line 752
    :goto_3
    int-to-float v13, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v10, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 735
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mLabelMarginToBottom:I

    sub-int v11, v13, v14

    goto :goto_3

    .line 738
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    mul-int/lit8 v13, v13, 0x2

    sub-int v13, v7, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    sub-int v4, v13, v14

    .line 739
    .local v4, remainSpace:I
    sub-int v13, v4, v9

    div-int/lit8 v8, v13, 0x2

    .line 740
    .local v8, textOffset:I
    if-gez v8, :cond_a

    .line 741
    move v1, v8

    .line 743
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getHighlightTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-nez v13, :cond_b

    .line 744
    iget v13, v5, Landroid/graphics/RectF;->left:F

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    add-float v10, v13, v14

    .line 748
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    add-int v11, v13, v14

    goto :goto_3

    .line 746
    :cond_b
    iget v13, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    int-to-float v14, v8

    add-float v10, v13, v14

    goto :goto_4
.end method

.method private drawTabDivider(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 758
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 763
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_0

    .line 764
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 765
    .local v4, tabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-virtual {v4}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    const/high16 v6, 0x3f80

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 766
    .local v1, left:I
    add-int/lit8 v2, v1, 0x2

    .line 767
    .local v2, right:I
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    .line 768
    const-string v5, "OppoTabWidget"

    const-string v6, "drawTabDivider: there is no tab divider to draw!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 772
    :cond_2
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    invoke-virtual {v4}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v5, v1, v6, v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 775
    iget-object v5, p0, Lcom/oppo/widget/OppoTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private drawUnFocusTabContent(Landroid/graphics/Canvas;Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;)I
    .locals 16
    .parameter "canvas"
    .parameter "tabSpec"

    .prologue
    .line 523
    if-nez p2, :cond_1

    .line 524
    const/4 v1, 0x0

    .line 591
    :cond_0
    :goto_0
    return v1

    .line 526
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mLabelTextSize:I

    if-nez v13, :cond_2

    .line 527
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getNormalTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-nez v13, :cond_2

    .line 528
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOnlyTextSize:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 531
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mLabelNorColor:I

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 532
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 533
    const/4 v6, 0x0

    .line 534
    .local v6, tabLabel:Ljava/lang/String;
    const/4 v1, 0x0

    .line 535
    .local v1, adjustOffset:I
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabLabel()Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 536
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabLabel()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 538
    :cond_3
    if-eqz v6, :cond_0

    .line 539
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 540
    .local v9, textWidth:I
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v5

    .line 541
    .local v5, tabArea:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-eqz v13, :cond_4

    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-int v3, v13

    .line 544
    .local v3, maxTextWidth:I
    :goto_1
    if-le v9, v3, :cond_7

    .line 545
    const-string v12, ".."

    .line 546
    .local v12, tmpTabLabel:Ljava/lang/String;
    const/4 v2, 0x0

    .line 547
    .local v2, end:I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v2, v13, :cond_6

    .line 548
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    invoke-virtual {v6, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 549
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 550
    if-ge v9, v3, :cond_5

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 541
    .end local v2           #end:I
    .end local v3           #maxTextWidth:I
    .end local v12           #tmpTabLabel:Ljava/lang/String;
    :cond_4
    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgTransparentAreaWidth:I

    mul-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    sub-float/2addr v13, v14

    float-to-int v3, v13

    goto :goto_1

    .line 553
    .restart local v2       #end:I
    .restart local v3       #maxTextWidth:I
    .restart local v12       #tmpTabLabel:Ljava/lang/String;
    :cond_5
    const/4 v13, 0x1

    if-le v2, v13, :cond_6

    .line 554
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    add-int/lit8 v15, v2, -0x1

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 555
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v9, v13

    .line 561
    :cond_6
    move-object v6, v12

    .line 563
    .end local v2           #end:I
    .end local v12           #tmpTabLabel:Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    .line 564
    .local v10, textX:F
    const/4 v11, 0x0

    .line 565
    .local v11, textY:F
    iget v13, v5, Landroid/graphics/RectF;->right:F

    iget v14, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    float-to-int v7, v13

    .line 566
    .local v7, tabWidth:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-nez v13, :cond_9

    .line 567
    iget v13, v5, Landroid/graphics/RectF;->left:F

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    add-float v10, v13, v14

    .line 568
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getNormalTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-nez v13, :cond_8

    .line 569
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    add-int/2addr v13, v14

    int-to-float v11, v13

    .line 588
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v10, v11, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 572
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mLabelMarginToBottom:I

    sub-int/2addr v13, v14

    int-to-float v11, v13

    goto :goto_3

    .line 575
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    mul-int/lit8 v13, v13, 0x2

    sub-int v13, v7, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    sub-int v4, v13, v14

    .line 576
    .local v4, remainSpace:I
    sub-int v13, v4, v9

    div-int/lit8 v8, v13, 0x2

    .line 577
    .local v8, textOffset:I
    if-gez v8, :cond_a

    .line 578
    move v1, v8

    .line 580
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getNormalTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-nez v13, :cond_b

    .line 581
    iget v13, v5, Landroid/graphics/RectF;->left:F

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    add-float v10, v13, v14

    .line 585
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    add-int/2addr v13, v14

    int-to-float v11, v13

    goto :goto_3

    .line 583
    :cond_b
    iget v13, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    int-to-float v14, v8

    add-float v10, v13, v14

    goto :goto_4
.end method

.method private drawUnFocusTabsContent(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 453
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-nez v14, :cond_1

    .line 519
    :cond_0
    return-void

    .line 456
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 461
    .local v8, size:I
    const/4 v4, 0x0

    .line 462
    .local v4, iconLeft:I
    const/4 v6, 0x0

    .line 463
    .local v6, iconTop:I
    const/4 v5, 0x0

    .line 464
    .local v5, iconRight:I
    const/4 v3, 0x0

    .line 465
    .local v3, iconBottom:I
    const/4 v7, 0x0

    .local v7, index:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 466
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-ne v14, v7, :cond_3

    .line 465
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 469
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 473
    .local v11, tabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    if-nez v7, :cond_7

    .line 474
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oppo/widget/OppoTabWidget;->mTabBgLeft:Landroid/graphics/drawable/Drawable;

    .line 480
    .local v9, tabBg:Landroid/graphics/drawable/Drawable;
    :goto_2
    if-eqz v9, :cond_4

    .line 481
    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/RectF;->top:F

    float-to-int v15, v15

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v14, v15, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 483
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 486
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    if-nez v14, :cond_9

    .line 487
    const/4 v13, 0x0

    .line 488
    .local v13, x:I
    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/RectF;->right:F

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    float-to-int v15, v15

    add-int v13, v14, v15

    .line 490
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    div-int/lit8 v14, v14, 0x2

    sub-int v4, v13, v14

    .line 491
    move-object/from16 v0, p0

    iget v6, v0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    .line 492
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    div-int/lit8 v14, v14, 0x2

    add-int v5, v13, v14

    .line 493
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/widget/OppoTabWidget;->mIconMarginToTop:I

    add-int v3, v14, v15

    .line 501
    .end local v13           #x:I
    :goto_3
    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getNormalTabIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 502
    .local v10, tabIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/oppo/widget/OppoTabWidget;->drawUnFocusTabContent(Landroid/graphics/Canvas;Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;)I

    move-result v2

    .line 505
    .local v2, adjustOffset:I
    if-eqz v10, :cond_2

    .line 506
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 507
    sget-object v14, Lcom/oppo/widget/OppoTabWidget;->EMPTY_STATE_SET:[I

    invoke-virtual {v10, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 508
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 511
    :cond_5
    if-gez v2, :cond_6

    .line 512
    add-int/2addr v4, v2

    .line 513
    add-int/2addr v5, v2

    .line 515
    :cond_6
    invoke-virtual {v10, v4, v6, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 516
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 475
    .end local v2           #adjustOffset:I
    .end local v9           #tabBg:Landroid/graphics/drawable/Drawable;
    .end local v10           #tabIcon:Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ne v7, v14, :cond_8

    .line 476
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oppo/widget/OppoTabWidget;->mTabBgRight:Landroid/graphics/drawable/Drawable;

    .restart local v9       #tabBg:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 478
    .end local v9           #tabBg:Landroid/graphics/drawable/Drawable;
    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oppo/widget/OppoTabWidget;->mTabBgMiddle:Landroid/graphics/drawable/Drawable;

    .restart local v9       #tabBg:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 495
    :cond_9
    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v15

    float-to-int v12, v14

    .line 496
    .local v12, tabSpecHeight:I
    invoke-virtual {v11}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    add-int v4, v14, v15

    .line 497
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    sub-int v14, v12, v14

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/widget/OppoTabWidget;->mTabTopShadowHeight:I

    add-int v6, v14, v15

    .line 498
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    add-int v5, v4, v14

    .line 499
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    add-int v3, v6, v14

    goto :goto_3
.end method

.method private getClickedTabIndex(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, -0x1

    .line 950
    iget-object v4, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 966
    :cond_0
    :goto_0
    return v0

    .line 954
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 955
    .local v1, listSize:I
    if-lez v1, :cond_0

    .line 959
    const/4 v2, -0x1

    .line 960
    .local v2, nearest:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 961
    iget-object v4, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    invoke-virtual {v4}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTabArea()Landroid/graphics/RectF;

    move-result-object v3

    .line 962
    .local v3, r:Landroid/graphics/RectF;
    iget v4, v3, Landroid/graphics/RectF;->left:F

    int-to-float v5, p1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    iget v4, v3, Landroid/graphics/RectF;->right:F

    int-to-float v5, p1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    iget v4, v3, Landroid/graphics/RectF;->top:F

    int-to-float v5, p2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, p2

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 960
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3           #r:Landroid/graphics/RectF;
    :cond_3
    move v0, v2

    .line 966
    goto :goto_0
.end method

.method private getDrawables()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 359
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 377
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0xc080416

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 378
    .local v1, tabHlBg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoTabWidget;->setTabBgLeft(Landroid/graphics/drawable/Drawable;)V

    .line 379
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoTabWidget;->setTabBgMiddle(Landroid/graphics/drawable/Drawable;)V

    .line 380
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoTabWidget;->setTabBgRight(Landroid/graphics/drawable/Drawable;)V

    .line 381
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTabWidget;->setTabHlBgLeft(Landroid/graphics/drawable/Drawable;)V

    .line 382
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTabWidget;->setTabHlBgMiddle(Landroid/graphics/drawable/Drawable;)V

    .line 383
    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoTabWidget;->setTabHlBgRight(Landroid/graphics/drawable/Drawable;)V

    .line 384
    const v2, 0xc080067

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoTabWidget;->setTabWidgetBg(Landroid/graphics/drawable/Drawable;)V

    .line 386
    const v2, 0xc080415

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 387
    return-void
.end method

.method private initSizeInfo()V
    .locals 9

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 313
    .local v6, wm:Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 315
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 316
    .local v2, dWidth:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 319
    .local v1, dHeight:I
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 320
    .local v4, parent:Landroid/view/ViewParent;
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    move-object v3, v4

    .line 321
    check-cast v3, Landroid/view/ViewGroup;

    .line 322
    .local v3, group:Landroid/view/ViewGroup;
    instance-of v7, v3, Landroid/widget/HorizontalScrollView;

    if-eqz v7, :cond_2

    .line 323
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 332
    .end local v3           #group:Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    iput v2, p0, Lcom/oppo/widget/OppoTabWidget;->mContentWidth:I

    .line 333
    const/4 v5, 0x0

    .line 334
    .local v5, textSize:I
    if-lt v2, v1, :cond_3

    .line 336
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    .line 337
    int-to-float v7, v2

    iget v8, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioLand:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    .line 338
    int-to-float v7, v2

    iget v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMarginRation:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    .line 339
    iget v7, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    int-to-float v7, v7

    iget v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightLandRatio:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    .line 340
    iget v5, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSizeLandscape:I

    .line 349
    :goto_1
    iget v7, p0, Lcom/oppo/widget/OppoTabWidget;->mLabelTextSize:I

    if-nez v7, :cond_1

    .line 350
    iget-object v7, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    int-to-float v8, v5

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 352
    :cond_1
    iget-object v7, p0, Lcom/oppo/widget/OppoTabWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoTabWidget;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 356
    return-void

    .line 325
    .end local v5           #textSize:I
    .restart local v3       #group:Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v2, v7

    goto :goto_0

    .line 343
    .end local v3           #group:Landroid/view/ViewGroup;
    .restart local v5       #textSize:I
    :cond_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoTabWidget;->mCurIsLandMode:Z

    .line 344
    int-to-float v7, v1

    iget v8, p0, Lcom/oppo/widget/OppoTabWidget;->mHeightRatioPor:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    .line 345
    int-to-float v7, v1

    iget v8, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMarginRation:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/oppo/widget/OppoTabWidget;->mTabSideMargin:I

    .line 346
    iget v7, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    int-to-float v7, v7

    iget v8, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeightPortRatio:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/oppo/widget/OppoTabWidget;->mIconHeight:I

    .line 347
    iget v5, p0, Lcom/oppo/widget/OppoTabWidget;->mDefaultTextSize:I

    goto :goto_1
.end method

.method private initTabsArea()V
    .locals 14

    .prologue
    .line 411
    iget-object v10, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 412
    .local v6, size:I
    if-gtz v6, :cond_0

    .line 413
    const-string v10, "OppoTabWidget"

    const-string v11, "initTabsArea:mOppoTabSpecsList.size() <= 0, return."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_0
    return-void

    .line 416
    :cond_0
    iget v10, p0, Lcom/oppo/widget/OppoTabWidget;->mContentWidth:I

    div-int v8, v10, v6

    .line 419
    .local v8, tabWidth:I
    iget v10, p0, Lcom/oppo/widget/OppoTabWidget;->mTabMaxCount:I

    if-lez v10, :cond_1

    .line 420
    iget v10, p0, Lcom/oppo/widget/OppoTabWidget;->mContentWidth:I

    iget v11, p0, Lcom/oppo/widget/OppoTabWidget;->mTabMaxCount:I

    div-int v4, v10, v11

    .line 421
    .local v4, minWidth:I
    if-ge v8, v4, :cond_1

    .line 422
    move v8, v4

    .line 423
    mul-int v10, v8, v6

    iput v10, p0, Lcom/oppo/widget/OppoTabWidget;->mContentWidth:I

    .line 429
    .end local v4           #minWidth:I
    :cond_1
    iget v7, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    .line 430
    .local v7, tabHeight:I
    const/4 v3, 0x0

    .line 431
    .local v3, left:I
    const/4 v9, 0x0

    .line 432
    .local v9, top:I
    const/4 v5, 0x0

    .line 433
    .local v5, right:I
    move v1, v7

    .line 434
    .local v1, bottom:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 435
    add-int v5, v3, v8

    .line 440
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v10, v3

    int-to-float v11, v9

    int-to-float v12, v5

    int-to-float v13, v1

    invoke-direct {v0, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 441
    .local v0, area:Landroid/graphics/RectF;
    iget-object v10, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    invoke-virtual {v10, v0}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabArea(Landroid/graphics/RectF;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 442
    move v3, v5

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 445
    .end local v0           #area:Landroid/graphics/RectF;
    :cond_2
    iget v10, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-gez v10, :cond_3

    .line 446
    const/4 v10, 0x0

    iput v10, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 448
    :cond_3
    iget v10, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    iput v10, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    .line 449
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    goto :goto_0
.end method

.method private updateTabIcon(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "spec"
    .parameter "icon"

    .prologue
    .line 1217
    invoke-virtual {p1, p2, p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1218
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1219
    return-void
.end method

.method private updateTabLabel(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "spec"
    .parameter "label"

    .prologue
    .line 1186
    invoke-virtual {p1, p2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabLabel(Ljava/lang/CharSequence;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1187
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1188
    return-void
.end method


# virtual methods
.method public addOppoTabSpec(Lcom/oppo/widget/OppoTabHost$OppoTabSpec;)V
    .locals 7
    .parameter "tabSpec"

    .prologue
    const/4 v5, 0x0

    .line 1095
    if-nez p1, :cond_1

    .line 1096
    const-string v4, "OppoTabWidget"

    const-string v5, "addOppoOppoTabSpec: null == tabSpec, return;"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->getIndicatorStrategy()Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;

    move-result-object v0

    .line 1101
    .local v0, indicatorStrategy:Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;
    if-nez v0, :cond_2

    .line 1102
    const-string v4, "OppoTabWidget"

    const-string v5, "addOppoTabSpec: null == indicatorStrategy, return;"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1105
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/widget/OppoTabHost$OppoTabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 1107
    .local v3, tag:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1109
    .local v1, simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    const-string v2, ""

    .line 1111
    .local v2, tabLabel:Ljava/lang/String;
    instance-of v4, v0, Lcom/oppo/widget/OppoTabHost$LabelIndicatorStrategy;

    if-eqz v4, :cond_4

    .line 1114
    new-instance v1, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .end local v1           #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-direct {v1, v3}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;-><init>(Ljava/lang/String;)V

    .line 1115
    .restart local v1       #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1116
    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1118
    :cond_3
    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabLabel(Ljava/lang/CharSequence;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1119
    iget-object v4, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 1121
    :cond_4
    instance-of v4, v0, Lcom/oppo/widget/OppoTabHost$LabelAndIconIndicatorStrategy;

    if-eqz v4, :cond_6

    .line 1124
    new-instance v1, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .end local v1           #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-direct {v1, v3}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;-><init>(Ljava/lang/String;)V

    .line 1125
    .restart local v1       #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1126
    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1128
    :cond_5
    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabLabel(Ljava/lang/CharSequence;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    move-result-object v4

    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v0}, Lcom/oppo/widget/OppoTabHost$IndicatorStrategy;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1130
    iget-object v4, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 1132
    :cond_6
    instance-of v4, v0, Lcom/oppo/widget/OppoTabHost$ViewIndicatorStrategy;

    if-eqz v4, :cond_0

    .line 1135
    new-instance v1, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .end local v1           #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-direct {v1, v3}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;-><init>(Ljava/lang/String;)V

    .line 1136
    .restart local v1       #simpleOppoTabSpec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    const-string v4, "not_support"

    invoke-virtual {v1, v4}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabLabel(Ljava/lang/CharSequence;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->setTabIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1137
    iget-object v4, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0
.end method

.method public addSimpleOppoTabSpec(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;)Z
    .locals 1
    .parameter "spec"

    .prologue
    .line 1176
    if-nez p1, :cond_0

    .line 1177
    const/4 v0, 0x0

    .line 1180
    :goto_0
    return v0

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public focusCurrentTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1045
    if-gez p1, :cond_1

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 1057
    iput p1, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 1058
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 976
    const/4 v0, 0x0

    .line 978
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public moveAndNotUp()V
    .locals 2

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    if-eqz v0, :cond_0

    .line 819
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    .line 820
    const/4 v0, -0x1

    iget v1, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    if-ne v0, v1, :cond_1

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    goto :goto_0
.end method

.method public newSimpleOppoTabSpec(Ljava/lang/String;)Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    .locals 1
    .parameter "tag"

    .prologue
    .line 1165
    new-instance v0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    invoke-direct {v0, p1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    .line 782
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->initSizeInfo()V

    .line 789
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 792
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 400
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    if-nez v0, :cond_2

    .line 401
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->initTabsArea()V

    .line 403
    :cond_2
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTabWidget;->drawUnFocusTabsContent(Landroid/graphics/Canvas;)V

    .line 404
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTabWidget;->drawFocusTabContent(Landroid/graphics/Canvas;)V

    .line 405
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTabWidget;->drawTabDivider(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    .line 299
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->initSizeInfo()V

    .line 300
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->initTabsArea()V

    .line 301
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget v0, p0, Lcom/oppo/widget/OppoTabWidget;->mContentWidth:I

    iget v1, p0, Lcom/oppo/widget/OppoTabWidget;->mContentHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 309
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 833
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 834
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 836
    .local v2, y:I
    const/4 v0, 0x0

    .line 838
    .local v0, clickTabIndex:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 946
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 843
    :pswitch_1
    iput-boolean v6, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    .line 845
    iput-boolean v4, p0, Lcom/oppo/widget/OppoTabWidget;->mMultiTouch:Z

    .line 847
    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoTabWidget;->getClickedTabIndex(II)I

    move-result v0

    .line 848
    if-eq v5, v0, :cond_0

    .line 851
    iget v3, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-eq v3, v0, :cond_0

    .line 852
    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 853
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 860
    :pswitch_2
    iput-boolean v6, p0, Lcom/oppo/widget/OppoTabWidget;->mMultiTouch:Z

    goto :goto_0

    .line 866
    :pswitch_3
    iget-boolean v3, p0, Lcom/oppo/widget/OppoTabWidget;->mMultiTouch:Z

    if-nez v3, :cond_0

    .line 869
    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoTabWidget;->getClickedTabIndex(II)I

    move-result v0

    .line 870
    if-eq v5, v0, :cond_0

    .line 873
    iget v3, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-eq v3, v0, :cond_0

    .line 874
    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 875
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 885
    :pswitch_4
    iput-boolean v4, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    .line 888
    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoTabWidget;->getClickedTabIndex(II)I

    move-result v0

    .line 892
    if-ne v5, v0, :cond_2

    .line 895
    iget v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 901
    :goto_1
    iget v3, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-eq v3, v0, :cond_1

    .line 902
    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 903
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 905
    :cond_1
    iget v3, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    iput v3, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    .line 906
    iget-object v3, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    if-eqz v3, :cond_0

    .line 913
    iget-object v3, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    iget v4, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    iget-boolean v5, p0, Lcom/oppo/widget/OppoTabWidget;->mClickRequestFocus:Z

    invoke-interface {v3, v4, v5}, Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;->onOppoTabSelectionChanged(IZ)V

    goto :goto_0

    .line 898
    :cond_2
    invoke-virtual {p0, v4}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    .line 920
    :pswitch_5
    iput-boolean v4, p0, Lcom/oppo/widget/OppoTabWidget;->mWaitTouchUpFlag:Z

    .line 923
    iget v3, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    if-gez v3, :cond_3

    .line 924
    iput v4, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 926
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 927
    iget-object v3, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    if-eqz v3, :cond_0

    .line 934
    iget-object v3, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    iget v4, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    iget-boolean v5, p0, Lcom/oppo/widget/OppoTabWidget;->mClickRequestFocus:Z

    invoke-interface {v3, v4, v5}, Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;->onOppoTabSelectionChanged(IZ)V

    goto :goto_0

    .line 838
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 796
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 799
    if-nez p1, :cond_0

    .line 812
    :goto_0
    return-void

    .line 803
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTabWidget;->mInitTabsAreaDone:Z

    .line 804
    invoke-direct {p0}, Lcom/oppo/widget/OppoTabWidget;->initSizeInfo()V

    .line 811
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public removeAllOppoTabSpec()V
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1150
    return-void
.end method

.method public requestFocusOnTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1067
    if-gez p1, :cond_1

    .line 1081
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 1079
    iput p1, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 1080
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1021
    if-gez p1, :cond_1

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 1027
    iput p1, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    .line 1028
    iget v0, p0, Lcom/oppo/widget/OppoTabWidget;->mCurFocusTabIndex:I

    iput v0, p0, Lcom/oppo/widget/OppoTabWidget;->mOldFocusTabIndex:I

    .line 1029
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setDividerDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 996
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 997
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 987
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 988
    return-void
.end method

.method public setMaxTabCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 1254
    iput p1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabMaxCount:I

    .line 1255
    return-void
.end method

.method public setOppoTabSelectionListener(Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSelectionListener:Lcom/oppo/widget/OppoTabWidget$OnOppoTabSelectionChanged;

    .line 1157
    return-void
.end method

.method public setTabBgLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabBgLeft:Landroid/graphics/drawable/Drawable;

    .line 1275
    return-void
.end method

.method public setTabBgMiddle(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabBgMiddle:Landroid/graphics/drawable/Drawable;

    .line 1293
    return-void
.end method

.method public setTabBgRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabBgRight:Landroid/graphics/drawable/Drawable;

    .line 1311
    return-void
.end method

.method public setTabHlBgLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgLeft:Landroid/graphics/drawable/Drawable;

    .line 1284
    return-void
.end method

.method public setTabHlBgMiddle(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgMiddle:Landroid/graphics/drawable/Drawable;

    .line 1302
    return-void
.end method

.method public setTabHlBgRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabHlBgRight:Landroid/graphics/drawable/Drawable;

    .line 1320
    return-void
.end method

.method public setTabWidgetBg(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    .line 1265
    iget-object v0, p0, Lcom/oppo/widget/OppoTabWidget;->mTabWidgetBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1266
    return-void
.end method

.method public updateTabIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "index"
    .parameter "icon"

    .prologue
    .line 1228
    iget-object v1, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1229
    .local v0, spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-direct {p0, v0, p2}, Lcom/oppo/widget/OppoTabWidget;->updateTabIcon(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Landroid/graphics/drawable/Drawable;)V

    .line 1230
    return-void
.end method

.method public updateTabIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "tag"
    .parameter "icon"

    .prologue
    .line 1239
    iget-object v2, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1240
    .local v1, spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1241
    invoke-direct {p0, v1, p2}, Lcom/oppo/widget/OppoTabWidget;->updateTabIcon(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Landroid/graphics/drawable/Drawable;)V

    .line 1245
    .end local v1           #spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    :cond_1
    return-void
.end method

.method public updateTabLabel(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "index"
    .parameter "label"

    .prologue
    .line 1197
    iget-object v1, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1198
    .local v0, spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-direct {p0, v0, p2}, Lcom/oppo/widget/OppoTabWidget;->updateTabLabel(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Ljava/lang/CharSequence;)V

    .line 1199
    return-void
.end method

.method public updateTabLabel(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "tag"
    .parameter "label"

    .prologue
    .line 1208
    iget-object v2, p0, Lcom/oppo/widget/OppoTabWidget;->mOppoTabSpecsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;

    .line 1209
    .local v1, spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    invoke-virtual {v1}, Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1210
    invoke-direct {p0, v1, p2}, Lcom/oppo/widget/OppoTabWidget;->updateTabLabel(Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;Ljava/lang/CharSequence;)V

    .line 1214
    .end local v1           #spec:Lcom/oppo/widget/OppoTabWidget$SimpleOppoTabSpec;
    :cond_1
    return-void
.end method
