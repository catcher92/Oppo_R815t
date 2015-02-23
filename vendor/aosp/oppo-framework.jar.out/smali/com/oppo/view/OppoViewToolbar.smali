.class public abstract Lcom/oppo/view/OppoViewToolbar;
.super Ljava/lang/Object;
.source "OppoViewToolbar.java"


# static fields
.field private static final TOLERANCE_TOUCH:I = 0xf

.field private static final TOOLBAR_CONTAINER_PADDING:I = 0x2

.field private static final TOOLBAR_ITEM_PADDING_BOTTOM:I = 0x3

.field private static final TOOLBAR_ITEM_PADDING_LEFT_AND_RIGHT:I = 0x8


# instance fields
.field private mArrowAboveDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowBelowDrawable:Landroid/graphics/drawable/Drawable;

.field private mCenterDrawableResId:I

.field protected mContext:Landroid/content/Context;

.field protected mHostView:Landroid/view/View;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mLeftDrawableResId:I

.field private mPositionX:I

.field private mPositionY:I

.field private mRightDrawableResId:I

.field protected mShowing:Z

.field private mSingleDrawable:Landroid/graphics/drawable/Drawable;

.field private mStatusBarHeight:I

.field protected mToleranceTouch:I

.field protected mToolbarGroup:Landroid/view/ViewGroup;

.field protected mToolbarItemPaddingBottom:I

.field protected mToolbarItemPaddingLeftAndRight:I

.field private mToolbarPositionArrowHeight:I

.field protected mToolbarPositionArrowView:Landroid/widget/ImageView;

.field private mToolbarPositionArrowWidth:I

.field protected mToolbarView:Landroid/view/View;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 6
    .parameter "hostView"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v5, p0, Lcom/oppo/view/OppoViewToolbar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 59
    iput-boolean v4, p0, Lcom/oppo/view/OppoViewToolbar;->mShowing:Z

    .line 81
    iput-object p1, p0, Lcom/oppo/view/OppoViewToolbar;->mHostView:Landroid/view/View;

    .line 82
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mContext:Landroid/content/Context;

    .line 85
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0xc080458

    iput v1, p0, Lcom/oppo/view/OppoViewToolbar;->mLeftDrawableResId:I

    .line 88
    const v1, 0xc080459

    iput v1, p0, Lcom/oppo/view/OppoViewToolbar;->mCenterDrawableResId:I

    .line 89
    const v1, 0xc08045a

    iput v1, p0, Lcom/oppo/view/OppoViewToolbar;->mRightDrawableResId:I

    .line 91
    const v1, 0xc08045b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mSingleDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    const v1, 0xc08045c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mArrowAboveDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    const v1, 0xc08045d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mArrowBelowDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mWindowManager:Landroid/view/WindowManager;

    .line 98
    invoke-direct {p0}, Lcom/oppo/view/OppoViewToolbar;->calculateTolerance()V

    .line 99
    const v1, 0xc05001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/view/OppoViewToolbar;->mStatusBarHeight:I

    .line 101
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 102
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0xc090431

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarView:Landroid/view/View;

    .line 103
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarView:Landroid/view/View;

    const v2, 0xc020456

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    .line 104
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 106
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarView:Landroid/view/View;

    const v2, 0xc020457

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    .line 110
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarView:Landroid/view/View;

    invoke-virtual {v1, v4, v4}, Landroid/view/View;->measure(II)V

    .line 111
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarPositionArrowWidth:I

    .line 112
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarPositionArrowHeight:I

    .line 113
    return-void
.end method

.method private calculatePosition(IIIZ)Z
    .locals 11
    .parameter "screenX"
    .parameter "screenY"
    .parameter "cursorLineHeight"
    .parameter "selected"

    .prologue
    .line 275
    const/4 v0, 0x1

    .line 278
    .local v0, aboveCursor:Z
    iget-object v9, p0, Lcom/oppo/view/OppoViewToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getScrollX()I

    move-result v9

    sub-int v4, p1, v9

    .line 279
    .local v4, px:I
    iget-object v9, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v2, v9, 0x2

    .line 280
    .local v2, half:I
    iget-object v9, p0, Lcom/oppo/view/OppoViewToolbar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 281
    .local v1, displayWidth:I
    add-int v9, v4, v2

    if-ge v9, v1, :cond_0

    .line 282
    sub-int v7, v4, v2

    .line 286
    .local v7, x:I
    :goto_0
    const/4 v9, 0x0

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/oppo/view/OppoViewToolbar;->mPositionX:I

    .line 289
    iget-object v9, p0, Lcom/oppo/view/OppoViewToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getScrollY()I

    move-result v9

    sub-int v5, p2, v9

    .line 290
    .local v5, py:I
    iget-object v9, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iget v10, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarPositionArrowHeight:I

    add-int v6, v9, v10

    .line 291
    .local v6, th:I
    div-int/lit8 v3, p3, 0x2

    .line 292
    .local v3, lh:I
    sub-int v9, v5, v6

    sub-int/2addr v9, v3

    iget v10, p0, Lcom/oppo/view/OppoViewToolbar;->mStatusBarHeight:I

    if-ge v9, v10, :cond_2

    .line 293
    add-int v10, v5, v3

    if-eqz p4, :cond_1

    iget v9, p0, Lcom/oppo/view/OppoViewToolbar;->mToleranceTouch:I

    :goto_1
    add-int/2addr v9, v10

    add-int/lit8 v8, v9, 0x2

    .line 294
    .local v8, y:I
    const/4 v0, 0x0

    .line 299
    :goto_2
    iget v9, p0, Lcom/oppo/view/OppoViewToolbar;->mStatusBarHeight:I

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/oppo/view/OppoViewToolbar;->mPositionY:I

    .line 300
    return v0

    .line 284
    .end local v3           #lh:I
    .end local v5           #py:I
    .end local v6           #th:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_0
    iget-object v9, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v7, v1, v9

    .restart local v7       #x:I
    goto :goto_0

    .line 293
    .restart local v3       #lh:I
    .restart local v5       #py:I
    .restart local v6       #th:I
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 296
    :cond_2
    sub-int v9, v5, v6

    sub-int v10, v9, v3

    if-eqz p4, :cond_3

    iget v9, p0, Lcom/oppo/view/OppoViewToolbar;->mToleranceTouch:I

    :goto_3
    sub-int v9, v10, v9

    add-int/lit8 v8, v9, 0x6

    .line 297
    .restart local v8       #y:I
    const/4 v0, 0x1

    goto :goto_2

    .line 296
    .end local v8           #y:I
    :cond_3
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private calculateTolerance()V
    .locals 4

    .prologue
    .line 304
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 305
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/oppo/view/OppoViewToolbar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 306
    const/high16 v2, 0x3f80

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x4320

    div-float v1, v2, v3

    .line 307
    .local v1, ratio:F
    const/high16 v2, 0x4170

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oppo/view/OppoViewToolbar;->mToleranceTouch:I

    .line 308
    const/high16 v2, 0x4100

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    .line 309
    const/high16 v2, 0x4040

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarItemPaddingBottom:I

    .line 310
    return-void
.end method

.method private prepare(IIIZ)V
    .locals 6
    .parameter "screenX"
    .parameter "screenY"
    .parameter "cursorLineHeight"
    .parameter "selected"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 221
    iget-object v2, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarView:Landroid/view/View;

    invoke-virtual {v2, v4, v4}, Landroid/view/View;->measure(II)V

    .line 223
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/view/OppoViewToolbar;->calculatePosition(IIIZ)Z

    move-result v0

    .line 225
    .local v0, aboveCursor:Z
    iget v2, p0, Lcom/oppo/view/OppoViewToolbar;->mPositionX:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarPositionArrowWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 226
    .local v1, paddingLeft:I
    const/16 v2, 0xa

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 227
    iget-object v2, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarPositionArrowWidth:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 229
    if-eqz v0, :cond_0

    .line 230
    iget-object v2, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/view/OppoViewToolbar;->mArrowBelowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v2, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 233
    iget-object v2, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x9

    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 240
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v2, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oppo/view/OppoViewToolbar;->mArrowAboveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v2, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarPositionArrowHeight:I

    add-int/lit8 v3, v3, -0x7

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 238
    iget-object v2, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private update()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/oppo/view/OppoViewToolbar;->updateToolbarItems()V

    .line 245
    iget-object v3, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 246
    .local v0, childCount:I
    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    .line 247
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 248
    iget-object v3, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 249
    .local v2, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 251
    iget v3, p0, Lcom/oppo/view/OppoViewToolbar;->mLeftDrawableResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 252
    iget v3, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    iget v5, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarItemPaddingBottom:I

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 247
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_0
    add-int/lit8 v3, v0, -0x1

    if-ne v1, v3, :cond_1

    .line 256
    iget v3, p0, Lcom/oppo/view/OppoViewToolbar;->mRightDrawableResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 257
    iget v3, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    iget v4, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarItemPaddingBottom:I

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 260
    :cond_1
    iget v3, p0, Lcom/oppo/view/OppoViewToolbar;->mCenterDrawableResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 261
    iget v3, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    iget v4, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    iget v5, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarItemPaddingBottom:I

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 265
    .end local v1           #i:I
    .end local v2           #view:Landroid/view/View;
    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 266
    iget-object v3, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 267
    .restart local v2       #view:Landroid/view/View;
    iget-object v3, p0, Lcom/oppo/view/OppoViewToolbar;->mSingleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    iget v3, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarItemPaddingBottom:I

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 271
    .end local v2           #view:Landroid/view/View;
    :cond_3
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 151
    iget-boolean v0, p0, Lcom/oppo/view/OppoViewToolbar;->mShowing:Z

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 155
    iget-object v0, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarPositionArrowView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 156
    iget-object v0, p0, Lcom/oppo/view/OppoViewToolbar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iput-boolean v5, p0, Lcom/oppo/view/OppoViewToolbar;->mShowing:Z

    .line 162
    :cond_0
    return-void

    .line 159
    :catchall_0
    move-exception v0

    iput-boolean v5, p0, Lcom/oppo/view/OppoViewToolbar;->mShowing:Z

    throw v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/oppo/view/OppoViewToolbar;->mShowing:Z

    return v0
.end method

.method public move(IIZ)V
    .locals 1
    .parameter "screenX"
    .parameter "screenY"
    .parameter "selected"

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/oppo/view/OppoViewToolbar;->mShowing:Z

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/oppo/view/OppoViewToolbar;->moveInternal(IIIZ)V

    .line 145
    :cond_0
    return-void
.end method

.method protected moveInternal(IIIZ)V
    .locals 3
    .parameter "screenX"
    .parameter "screenY"
    .parameter "cursorLineHeight"
    .parameter "selected"

    .prologue
    .line 207
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/oppo/view/OppoViewToolbar;->hide()V

    .line 217
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/view/OppoViewToolbar;->prepare(IIIZ)V

    .line 213
    iget-object v0, p0, Lcom/oppo/view/OppoViewToolbar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 214
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/oppo/view/OppoViewToolbar;->mPositionX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 215
    iget v1, p0, Lcom/oppo/view/OppoViewToolbar;->mPositionY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 216
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public show(IIZ)V
    .locals 1
    .parameter "screenX"
    .parameter "screenY"
    .parameter "selected"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/oppo/view/OppoViewToolbar;->mShowing:Z

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/oppo/view/OppoViewToolbar;->showInternal(IIIZ)V

    .line 133
    :cond_0
    return-void
.end method

.method protected showInternal(IIIZ)V
    .locals 4
    .parameter "screenX"
    .parameter "screenY"
    .parameter "cursorLineHeight"
    .parameter "selected"

    .prologue
    const/4 v2, -0x2

    const/4 v3, 0x1

    .line 171
    invoke-direct {p0}, Lcom/oppo/view/OppoViewToolbar;->update()V

    .line 172
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/oppo/view/OppoViewToolbar;->hide()V

    .line 204
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/view/OppoViewToolbar;->prepare(IIIZ)V

    .line 178
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 179
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mHostView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 180
    iget v1, p0, Lcom/oppo/view/OppoViewToolbar;->mPositionX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 181
    iget v1, p0, Lcom/oppo/view/OppoViewToolbar;->mPositionY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 182
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 183
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 184
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 185
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 186
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 187
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_1

    .line 188
    const v1, 0x20308

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 192
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 199
    :goto_1
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 200
    iput-object v0, p0, Lcom/oppo/view/OppoViewToolbar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 201
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iput-boolean v3, p0, Lcom/oppo/view/OppoViewToolbar;->mShowing:Z

    goto :goto_0

    .line 194
    :cond_1
    const/16 v1, 0x308

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 197
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    goto :goto_1
.end method

.method protected abstract updateToolbarItems()V
.end method
