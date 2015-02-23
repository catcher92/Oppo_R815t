.class public Lcom/oppo/widget/OppoListView;
.super Landroid/widget/ListView;
.source "OppoListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_MOTION:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoListView"


# instance fields
.field private delayedScroll:Ljava/lang/Runnable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDividerItemHeight:I

.field private mFillDivider:Z

.field private mFlag:Z

.field private mIsNotDrawFirstLine:Z

.field private mLastPosition:I

.field private mLastSite:I

.field private mLasterPosition:I

.field private mLeftOffset:I

.field private mMultiChoice:Z

.field private mNeedDrawDivider:Z

.field private mRightOffset:I

.field private mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

.field private mSpringEnabled:Z

.field private mUpScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    const v0, 0xc010400

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-boolean v7, p0, Lcom/oppo/widget/OppoListView;->mIsNotDrawFirstLine:Z

    .line 58
    iput-boolean v8, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    .line 59
    iput v6, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    .line 60
    iput v6, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    .line 61
    iput-boolean v7, p0, Lcom/oppo/widget/OppoListView;->mFlag:Z

    .line 62
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/oppo/widget/OppoListView;->mCheckBox:Landroid/widget/CheckBox;

    .line 65
    iput-boolean v8, p0, Lcom/oppo/widget/OppoListView;->mUpScroll:Z

    .line 66
    const/4 v6, -0x1

    iput v6, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    .line 283
    new-instance v6, Lcom/oppo/widget/OppoListView$1;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoListView$1;-><init>(Lcom/oppo/widget/OppoListView;)V

    iput-object v6, p0, Lcom/oppo/widget/OppoListView;->delayedScroll:Ljava/lang/Runnable;

    .line 79
    sget-object v6, Loppo/R$styleable;->OppoListView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 83
    .local v5, springEnabled:Z
    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoListView;->setSpringEnabled(Z)V

    .line 85
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 88
    .local v3, fillDivider:Z
    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoListView;->setFillDivider(Z)V

    .line 90
    const/4 v6, 0x6

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 91
    .local v2, dividerItemHeight:I
    if-nez v2, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc050016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 95
    :cond_0
    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoListView;->setDividerItemHeight(I)V

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 101
    .local v4, metrics:Landroid/util/DisplayMetrics;
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 103
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc050437

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoListView;->mLeftOffset:I

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0xc050438

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoListView;->mRightOffset:I

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mUpScroll:Z

    return v0
.end method

.method private isInScrollRange(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v3, v8

    .line 297
    .local v3, m:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v6, v8

    .line 298
    .local v6, n:I
    invoke-virtual {p0, v3, v6}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 299
    .local v0, curPosition:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v7, v8

    .line 300
    .local v7, xRaw:I
    const/4 v8, 0x2

    new-array v2, v8, [I

    .line 302
    .local v2, location:[I
    :try_start_0
    iget-object v8, p0, Landroid/widget/AbsListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v8}, Landroid/widget/OppoListViewHooks;->getFirstPosition()I

    move-result v8

    sub-int v8, v0, v8

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const v10, 0xc02000c

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/oppo/widget/OppoListView;->mCheckBox:Landroid/widget/CheckBox;

    .line 304
    iget-object v8, p0, Lcom/oppo/widget/OppoListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v2}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    aget v8, v2, v9

    iget v10, p0, Lcom/oppo/widget/OppoListView;->mLeftOffset:I

    sub-int v4, v8, v10

    .line 312
    .local v4, mLeftBorder:I
    aget v8, v2, v9

    iget v10, p0, Lcom/oppo/widget/OppoListView;->mRightOffset:I

    add-int v5, v8, v10

    .line 313
    .local v5, mRightBorder:I
    iget-object v8, p0, Lcom/oppo/widget/OppoListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    if-le v7, v4, :cond_1

    if-ge v7, v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-le v0, v8, :cond_1

    iget-object v8, p0, Landroid/widget/AbsListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v8}, Landroid/widget/OppoListViewHooks;->getCount()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v10

    sub-int/2addr v8, v10

    if-ge v0, v8, :cond_1

    .line 316
    const/4 v8, 0x1

    .line 321
    .end local v4           #mLeftBorder:I
    .end local v5           #mRightBorder:I
    :goto_0
    return v8

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_0

    .line 307
    iput-boolean v9, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    :cond_0
    move v8, v9

    .line 309
    goto :goto_0

    .line 318
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #mLeftBorder:I
    .restart local v5       #mRightBorder:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_2

    .line 319
    iput-boolean v9, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    :cond_2
    move v8, v9

    .line 321
    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    .line 178
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 180
    const/4 v6, 0x0

    .line 181
    .local v6, isFullScreen:Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 182
    .local v1, count:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 183
    .local v10, scrollY:I
    const/4 v7, 0x0

    .line 184
    .local v7, lastchild:Landroid/view/View;
    if-lez v1, :cond_0

    .line 185
    add-int/lit8 v12, v1, -0x1

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 188
    :cond_0
    if-eqz v7, :cond_2

    .line 189
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v13

    if-ge v12, v13, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v13

    if-lt v12, v13, :cond_2

    .line 191
    :cond_1
    const/4 v6, 0x1

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getFillDivider()Z

    move-result v12

    if-eqz v12, :cond_6

    if-nez v6, :cond_6

    .line 196
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    .line 197
    .local v2, dividerHeight:I
    if-lez v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_5

    const/4 v4, 0x1

    .line 198
    .local v4, drawDividers:Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result v13

    sub-int v8, v12, v13

    .line 199
    .local v8, listBottom:I
    const/4 v5, 0x0

    .line 200
    .local v5, fillBottom:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoListView;->getDividerItemHeight()I

    move-result v3

    .line 202
    .local v3, dividerItemHeight:I
    const/4 v9, 0x0

    .line 204
    .local v9, needCheck:Z
    if-lez v1, :cond_3

    .line 205
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 208
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 209
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    iput v12, v0, Landroid/graphics/Rect;->left:I

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    iput v12, v0, Landroid/graphics/Rect;->right:I

    .line 212
    iget-boolean v12, p0, Lcom/oppo/widget/OppoListView;->mIsNotDrawFirstLine:Z

    if-eqz v12, :cond_4

    .line 213
    add-int v12, v5, v3

    add-int v5, v12, v2

    .line 217
    :cond_4
    :goto_1
    if-lez v3, :cond_6

    add-int v12, v8, v10

    if-ge v5, v12, :cond_6

    if-eqz v4, :cond_6

    .line 218
    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 219
    add-int v12, v5, v2

    iput v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 220
    invoke-virtual {p0, p1, v0, v11}, Lcom/oppo/widget/OppoListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 221
    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    add-int v5, v12, v3

    goto :goto_1

    .end local v0           #bounds:Landroid/graphics/Rect;
    .end local v3           #dividerItemHeight:I
    .end local v4           #drawDividers:Z
    .end local v5           #fillBottom:I
    .end local v8           #listBottom:I
    .end local v9           #needCheck:Z
    :cond_5
    move v4, v11

    .line 197
    goto :goto_0

    .line 225
    .end local v2           #dividerHeight:I
    :cond_6
    return-void
.end method

.method public drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 239
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 240
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 241
    return-void
.end method

.method public getDividerItemHeight()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/oppo/widget/OppoListView;->mDividerItemHeight:I

    return v0
.end method

.method public getFillDivider()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mFillDivider:Z

    return v0
.end method

.method public getIsNotDrawFirstLine()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mIsNotDrawFirstLine:Z

    return v0
.end method

.method protected isShouldHandleEvent(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    const/4 v0, 0x1

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    const/4 v0, 0x1

    .line 269
    .local v0, shouldHandleEvent:Z
    const/4 v1, 0x0

    .line 270
    .local v1, toggle:Landroid/view/View;
    if-eqz p1, :cond_2

    .line 271
    const v2, 0x1020001

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 274
    :cond_2
    if-eqz v1, :cond_0

    .line 275
    instance-of v2, v1, Lcom/oppo/widget/OppoToggle;

    if-eqz v2, :cond_0

    .line 276
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpringEnabled()Z
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 248
    .local v0, action:I
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    .line 260
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    .line 250
    :pswitch_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v4}, Landroid/widget/OppoListViewHooks;->getTouchMode()I

    move-result v1

    .line 251
    .local v1, touchMode:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 252
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 254
    .local v3, y:I
    iget-boolean v4, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoListView;->isInScrollRange(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 255
    const/4 v4, 0x1

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const-wide/16 v11, 0x32

    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v9, -0x2

    .line 327
    iget-boolean v5, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    if-eqz v5, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoListView;->isInScrollRange(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 329
    .local v2, m:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 330
    .local v3, n:I
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    .line 331
    .local v1, curPosition:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 374
    .end local v1           #curPosition:I
    .end local v2           #m:I
    .end local v3           #n:I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 375
    .local v0, action:I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_1

    .line 385
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .end local v0           #action:I
    :cond_1
    :goto_2
    return v4

    .line 333
    .restart local v1       #curPosition:I
    .restart local v2       #m:I
    .restart local v3       #n:I
    :pswitch_0
    iput v9, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    .line 334
    iput v9, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    goto :goto_0

    .line 337
    :pswitch_1
    iput-boolean v4, p0, Lcom/oppo/widget/OppoListView;->mFlag:Z

    .line 340
    :pswitch_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v5}, Landroid/widget/OppoListViewHooks;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_2

    .line 341
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v1, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 344
    :cond_2
    iget-boolean v5, p0, Lcom/oppo/widget/OppoListView;->mFlag:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    if-eq v5, v1, :cond_1

    if-eq v1, v7, :cond_1

    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    if-eqz v5, :cond_1

    .line 346
    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    if-eq v5, v7, :cond_3

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    add-int/lit8 v6, v1, -0x1

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    if-ge v5, v1, :cond_3

    .line 347
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    iget v6, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Landroid/widget/AbsListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v8}, Landroid/widget/OppoListViewHooks;->getFirstPosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 350
    :cond_3
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    iget-object v6, p0, Landroid/widget/AbsListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v6}, Landroid/widget/OppoListViewHooks;->getFirstPosition()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 352
    iput v1, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    .line 353
    iget-object v5, p0, Landroid/widget/AbsListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v5}, Landroid/widget/OppoListViewHooks;->getFirstPosition()I

    move-result v5

    if-ne v1, v5, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v5}, Landroid/widget/OppoListViewHooks;->getFirstPosition()I

    move-result v5

    if-lez v5, :cond_4

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    if-eq v5, v9, :cond_4

    .line 355
    iput-boolean v4, p0, Lcom/oppo/widget/OppoListView;->mUpScroll:Z

    .line 356
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->delayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v5, v11, v12}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    :cond_4
    iget-object v5, p0, Landroid/widget/AbsListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v5}, Landroid/widget/OppoListViewHooks;->getFirstPosition()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_5

    iget-object v5, p0, Landroid/widget/AbsListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v5}, Landroid/widget/OppoListViewHooks;->getCount()I

    move-result v5

    if-eq v1, v5, :cond_5

    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    if-eq v5, v9, :cond_5

    .line 360
    iput-boolean v10, p0, Lcom/oppo/widget/OppoListView;->mUpScroll:Z

    .line 361
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->delayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v5, v11, v12}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    :cond_5
    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    if-ne v5, v1, :cond_6

    .line 364
    iget-object v5, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    iget v6, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    iget v7, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    iget-object v8, p0, Landroid/widget/AbsListView;->mOppoHooks:Landroid/widget/OppoListViewHooks;

    invoke-virtual {v8}, Landroid/widget/OppoListViewHooks;->getFirstPosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 367
    :cond_6
    iget v5, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    iput v5, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    .line 368
    iput v1, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    goto/16 :goto_2

    .line 377
    .end local v1           #curPosition:I
    .end local v2           #m:I
    .end local v3           #n:I
    .restart local v0       #action:I
    :pswitch_3
    iput v9, p0, Lcom/oppo/widget/OppoListView;->mLastPosition:I

    .line 378
    iput v9, p0, Lcom/oppo/widget/OppoListView;->mLasterPosition:I

    .line 379
    iput-boolean v10, p0, Lcom/oppo/widget/OppoListView;->mFlag:Z

    .line 380
    iput-boolean v4, p0, Lcom/oppo/widget/OppoListView;->mMultiChoice:Z

    .line 381
    iput v7, p0, Lcom/oppo/widget/OppoListView;->mLastSite:I

    goto/16 :goto_1

    .line 331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 375
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method public setDividerItemHeight(I)V
    .locals 0
    .parameter "itemHeight"

    .prologue
    .line 152
    iput p1, p0, Lcom/oppo/widget/OppoListView;->mDividerItemHeight:I

    .line 153
    return-void
.end method

.method public setFillDivider(Z)V
    .locals 0
    .parameter "fillDivider"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/oppo/widget/OppoListView;->mFillDivider:Z

    .line 137
    return-void
.end method

.method public setIsNotDrawFirstLine(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/oppo/widget/OppoListView;->mIsNotDrawFirstLine:Z

    .line 169
    return-void
.end method

.method public setScrollMultiChoiceListener(Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/oppo/widget/OppoListView;->mScrollMultiChoiceListener:Lcom/oppo/widget/OppoListView$ScrollMultiChoiceListener;

    .line 390
    return-void
.end method

.method public setSpringEnabled(Z)V
    .locals 1
    .parameter "springEnable"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/oppo/widget/OppoListView;->mSpringEnabled:Z

    .line 116
    iget-boolean v0, p0, Lcom/oppo/widget/OppoListView;->mSpringEnabled:Z

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    goto :goto_0
.end method
