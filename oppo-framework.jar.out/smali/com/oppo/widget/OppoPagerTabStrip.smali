.class public Lcom/oppo/widget/OppoPagerTabStrip;
.super Landroid/widget/LinearLayout;
.source "OppoPagerTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "jinpeng/OppoPagerTitle"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mBottomFocusLine:Landroid/graphics/drawable/Drawable;

.field private mBottomLine:Landroid/graphics/drawable/Drawable;

.field private mClickChangeTab:Z

.field private mContentWidth:I

.field private mCurrentTab:I

.field private mFocusLineWidth:I

.field private mOnTabChangeListener:Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;

.field private mPagerText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollOffset:I

.field private mSelectedTab:I

.field private mTabCount:I

.field private mTextPadding:I

.field private mTextSpace:I

.field private mTextWidth:I

.field private mTitleColor:Landroid/content/res/ColorStateList;

.field private mTitleColorHighlight:I

.field private mTitleSize:I

.field private mTitles:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/oppo/widget/OppoPagerTabStrip$1;

    invoke-direct {v0}, Lcom/oppo/widget/OppoPagerTabStrip$1;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoPagerTabStrip;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoPagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 108
    const v0, 0xc010431

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoPagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const/16 v4, 0xf

    iput v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleSize:I

    .line 75
    iput v5, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    .line 76
    iput v5, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    .line 81
    iput v5, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mScrollOffset:I

    .line 83
    iput-boolean v5, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mClickChangeTab:Z

    .line 114
    sget-object v4, Loppo/R$styleable;->OppoPagerTabStrip:[I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 117
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 118
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 119
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 120
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 118
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitles:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 125
    :pswitch_1
    iget v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleSize:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleSize:I

    goto :goto_1

    .line 128
    :pswitch_2
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 131
    :pswitch_3
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColorHighlight:I

    goto :goto_1

    .line 134
    :pswitch_4
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextPadding:I

    goto :goto_1

    .line 137
    :pswitch_5
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomLine:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 140
    :pswitch_6
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomFocusLine:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 143
    :pswitch_7
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    goto :goto_1

    .line 151
    .end local v2           #attr:I
    :cond_0
    invoke-virtual {p0, v5}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 152
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    .line 154
    iget-object v4, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitles:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoPagerTabStrip;->setTitles([Ljava/lang/CharSequence;)V

    .line 155
    return-void

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoPagerTabStrip;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoPagerTabStrip;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oppo/widget/OppoPagerTabStrip;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mClickChangeTab:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoPagerTabStrip;)Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mOnTabChangeListener:Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;

    return-object v0
.end method

.method private addTab(Ljava/lang/CharSequence;Z)V
    .locals 5
    .parameter "tab"
    .parameter "selected"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 338
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 339
    .local v0, tabView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    if-eqz p2, :cond_1

    .line 341
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColorHighlight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    :cond_0
    :goto_0
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 348
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 349
    new-instance v1, Lcom/oppo/widget/OppoPagerTabStrip$2;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoPagerTabStrip$2;-><init>(Lcom/oppo/widget/OppoPagerTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 364
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextWidth:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    return-void

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 367
    :cond_2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v4, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private addTabs([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 320
    iget v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoPagerTabStrip;->addTabs([Ljava/lang/CharSequence;I)V

    .line 321
    return-void
.end method

.method private addTabs([Ljava/lang/CharSequence;I)V
    .locals 4
    .parameter "tab"
    .parameter "seletedId"

    .prologue
    const/4 v3, 0x0

    .line 324
    iput p2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    .line 325
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 326
    :cond_0
    iput v3, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    .line 328
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 329
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    if-ne v0, v1, :cond_2

    .line 330
    aget-object v1, p1, v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/oppo/widget/OppoPagerTabStrip;->addTab(Ljava/lang/CharSequence;Z)V

    .line 328
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_2
    aget-object v1, p1, v0

    invoke-direct {p0, v1, v3}, Lcom/oppo/widget/OppoPagerTabStrip;->addTab(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 335
    :cond_3
    return-void
.end method

.method private updateTextColors()V
    .locals 3

    .prologue
    .line 271
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    if-lez v1, :cond_2

    .line 272
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    if-ge v0, v1, :cond_2

    .line 273
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    if-ne v0, v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColorHighlight:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 282
    .end local v0           #i:I
    :cond_2
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 437
    const/4 v2, 0x0

    .line 438
    .local v2, lineHeight:I
    iget-object v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomLine:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 439
    iget-object v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 440
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 441
    .local v1, left:I
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mContentWidth:I

    add-int v3, v1, v6

    .line 442
    .local v3, right:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 443
    .local v0, bottom:I
    sub-int v4, v0, v2

    .line 446
    .local v4, top:I
    iget-object v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 447
    iget-object v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 450
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    :cond_0
    iget-object v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomFocusLine:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    .line 451
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mContentWidth:I

    iget v7, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    div-int v5, v6, v7

    .line 452
    .local v5, unit:I
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    if-le v6, v5, :cond_1

    .line 453
    iput v5, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    .line 454
    iput v5, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextWidth:I

    .line 456
    :cond_1
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mContentWidth:I

    iget v7, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextSpace:I

    .line 457
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextSpace:I

    iget v8, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mScrollOffset:I

    add-int v1, v6, v7

    .line 461
    .restart local v1       #left:I
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    add-int v3, v1, v6

    .line 462
    .restart local v3       #right:I
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mScrollOffset:I

    if-nez v6, :cond_2

    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    iget v7, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    .line 463
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int v3, v6, v7

    .line 464
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    sub-int v1, v3, v6

    .line 466
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v0, v6, v2

    .line 467
    .restart local v0       #bottom:I
    iget-object v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomFocusLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v4, v0, v6

    .line 468
    .restart local v4       #top:I
    iget-object v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomFocusLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v4, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 469
    iget-object v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomFocusLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 474
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    .end local v5           #unit:I
    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mContentWidth:I

    .line 409
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    const/4 v7, 0x4

    if-ge v6, v7, :cond_2

    .line 410
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    .line 412
    .local v3, childTop:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    if-ge v5, v6, :cond_3

    .line 413
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 415
    .local v4, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 416
    .local v1, childHeight:I
    if-nez v5, :cond_0

    .line 417
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 423
    .local v2, childLeft:I
    :goto_1
    add-int v6, v2, v4

    add-int v7, v3, v1

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 412
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 418
    .end local v2           #childLeft:I
    :cond_0
    iget v6, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_1

    .line 419
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v2, v6, v4

    .restart local v2       #childLeft:I
    goto :goto_1

    .line 421
    .end local v2           #childLeft:I
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v4

    div-int/lit8 v2, v6, 0x2

    .restart local v2       #childLeft:I
    goto :goto_1

    .line 426
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeight:I
    .end local v2           #childLeft:I
    .end local v3           #childTop:I
    .end local v4           #childWidth:I
    .end local v5           #i:I
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 428
    :cond_3
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitles:[Ljava/lang/CharSequence;

    .line 374
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 375
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 376
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    .line 377
    return-void
.end method

.method public setBottomLine(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomLine:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomLine:Landroid/graphics/drawable/Drawable;

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 384
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    if-lt p1, v1, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    if-ne v1, p1, :cond_2

    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mScrollOffset:I

    if-eqz v1, :cond_0

    .line 391
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 392
    .local v0, tv:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 393
    iput p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    .line 394
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #tv:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 395
    .restart local v0       #tv:Landroid/widget/TextView;
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColorHighlight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 396
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mScrollOffset:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mClickChangeTab:Z

    if-nez v1, :cond_3

    .line 397
    iput p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    .line 398
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 400
    :cond_3
    iget-boolean v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mClickChangeTab:Z

    if-eqz v1, :cond_4

    .line 401
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mClickChangeTab:Z

    .line 403
    :cond_4
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mOnTabChangeListener:Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;

    iget v2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    invoke-interface {v1, v2}, Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;->onTabChanged(I)V

    goto :goto_0
.end method

.method public setFocusLine(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomFocusLine:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mBottomFocusLine:Landroid/graphics/drawable/Drawable;

    .line 307
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setFocusLineWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 316
    iput p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    .line 317
    return-void
.end method

.method public setHighlightTitleColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 266
    iput p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColorHighlight:I

    .line 267
    invoke-direct {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->updateTextColors()V

    .line 268
    return-void
.end method

.method public setOnTabChangedListener(Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mOnTabChangeListener:Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;

    .line 486
    return-void
.end method

.method public setSelectedTab(I)V
    .locals 3
    .parameter "selectedTab"

    .prologue
    .line 165
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    if-lt p1, v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    if-eq v1, p1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    .local v0, tv:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 176
    :cond_2
    iput p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    .line 177
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    iget v2, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mSelectedTab:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #tv:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 178
    .restart local v0       #tv:Landroid/widget/TextView;
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColorHighlight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iput p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    .line 180
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mOnTabChangeListener:Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;

    invoke-interface {v1, p1}, Lcom/oppo/widget/OppoPagerTabStrip$OnTabChangeListener;->onTabChanged(I)V

    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 238
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    .line 239
    invoke-direct {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->updateTextColors()V

    .line 240
    return-void
.end method

.method public setTitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "colors"

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 254
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleColor:Landroid/content/res/ColorStateList;

    .line 255
    invoke-direct {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->updateTextColors()V

    .line 256
    return-void
.end method

.method public setTitleSize(I)V
    .locals 4
    .parameter "size"

    .prologue
    .line 219
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleSize:I

    if-ne v1, p1, :cond_1

    .line 228
    :cond_0
    return-void

    .line 222
    :cond_1
    iput p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleSize:I

    .line 223
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    if-lez v1, :cond_0

    .line 224
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    if-ge v0, v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mPagerText:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    iget v3, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitleSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setTitles([Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "titles"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitles:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPagerTabStrip;->removeAllTabs()V

    .line 194
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitles:[Ljava/lang/CharSequence;

    .line 195
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitles:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitles:[Ljava/lang/CharSequence;

    array-length v0, v0

    iput v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    .line 197
    iget v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05043d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextWidth:I

    .line 200
    iget v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextWidth:I

    iput v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    .line 206
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTitles:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoPagerTabStrip;->addTabs([Ljava/lang/CharSequence;)V

    .line 208
    :cond_2
    return-void

    .line 201
    :cond_3
    iget v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTabCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05043e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextWidth:I

    .line 204
    iget v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextWidth:I

    iput v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mFocusLineWidth:I

    goto :goto_0
.end method

.method public updatePositions(III)V
    .locals 1
    .parameter "position"
    .parameter "offset"
    .parameter "pagerWidth"

    .prologue
    .line 479
    iget v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mTextSpace:I

    mul-int/2addr v0, p2

    div-int/2addr v0, p3

    iput v0, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mScrollOffset:I

    .line 480
    iput p1, p0, Lcom/oppo/widget/OppoPagerTabStrip;->mCurrentTab:I

    .line 481
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 482
    return-void
.end method
