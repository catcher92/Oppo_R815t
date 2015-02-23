.class public Lcom/oppo/widget/OppoToggle;
.super Landroid/widget/CompoundButton;
.source "OppoToggle.java"


# static fields
.field private static final CHECKED_STATE_SET:[I = null

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoToggle"

.field private static final TIPLEFT:I = 0xc

.field private static final TIPTOP:I = 0xc

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mMinFlingVelocity:I

.field private mPintOff:Landroid/graphics/Bitmap;

.field private mPintOffDisabled:Landroid/graphics/Bitmap;

.field private mPintOn:Landroid/graphics/Bitmap;

.field private mPintOnDisabled:Landroid/graphics/Bitmap;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private tipBottom:I

.field private tipRight:I

.field private tipWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/oppo/widget/OppoToggle;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 124
    const v0, 0xc010401

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v5, 0xc08040e

    const/4 v4, 0x0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoToggle;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 102
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/oppo/widget/OppoToggle;->mTempRect:Landroid/graphics/Rect;

    .line 139
    sget-object v3, Landroid/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 141
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoToggle;->mSwitchPadding:I

    .line 142
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 145
    .local v1, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoToggle;->mTouchSlop:I

    .line 146
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoToggle;->mMinFlingVelocity:I

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 149
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0xc08040d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoToggle;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 150
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoToggle;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoToggle;->mPintOn:Landroid/graphics/Bitmap;

    .line 152
    const v3, 0xc08040f

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoToggle;->mPintOff:Landroid/graphics/Bitmap;

    .line 153
    const v3, 0xc080410

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoToggle;->mPintOnDisabled:Landroid/graphics/Bitmap;

    .line 154
    const v3, 0xc080411

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/widget/OppoToggle;->mPintOffDisabled:Landroid/graphics/Bitmap;

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 158
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oppo/widget/OppoToggle;->setChecked(Z)V

    .line 159
    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 1
    .parameter "newCheckedState"

    .prologue
    .line 329
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 332
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoToggle;->setChecked(Z)V

    .line 333
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 292
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 293
    .local v0, cancel:Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 294
    invoke-super {p0, v0}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 295
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 296
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 336
    iget v0, p0, Lcom/oppo/widget/OppoToggle;->mThumbPosition:F

    invoke-direct {p0}, Lcom/oppo/widget/OppoToggle;->getThumbScrollRange()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 445
    const/4 v0, 0x0

    .line 448
    :goto_0
    return v0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 448
    iget v0, p0, Lcom/oppo/widget/OppoToggle;->mSwitchWidth:I

    iget v1, p0, Lcom/oppo/widget/OppoToggle;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 217
    iget-object v4, p0, Lcom/oppo/widget/OppoToggle;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/oppo/widget/OppoToggle;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 218
    iget v4, p0, Lcom/oppo/widget/OppoToggle;->mSwitchTop:I

    iget v5, p0, Lcom/oppo/widget/OppoToggle;->mTouchSlop:I

    sub-int v3, v4, v5

    .line 219
    .local v3, thumbTop:I
    iget v4, p0, Lcom/oppo/widget/OppoToggle;->mSwitchLeft:I

    iget v5, p0, Lcom/oppo/widget/OppoToggle;->mThumbPosition:F

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/OppoToggle;->mTouchSlop:I

    sub-int v1, v4, v5

    .line 220
    .local v1, thumbLeft:I
    iget v4, p0, Lcom/oppo/widget/OppoToggle;->mThumbWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/oppo/widget/OppoToggle;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/oppo/widget/OppoToggle;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/oppo/widget/OppoToggle;->mTouchSlop:I

    add-int v2, v4, v5

    .line 222
    .local v2, thumbRight:I
    iget v4, p0, Lcom/oppo/widget/OppoToggle;->mSwitchBottom:I

    iget v5, p0, Lcom/oppo/widget/OppoToggle;->mTouchSlop:I

    add-int v0, v4, v5

    .line 223
    .local v0, thumbBottom:I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 304
    iput v4, p0, Lcom/oppo/widget/OppoToggle;->mTouchMode:I

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 308
    .local v0, commitChange:Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoToggle;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 310
    if-eqz v0, :cond_3

    .line 312
    iget-object v5, p0, Lcom/oppo/widget/OppoToggle;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 313
    iget-object v5, p0, Lcom/oppo/widget/OppoToggle;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 314
    .local v2, xvel:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/oppo/widget/OppoToggle;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 315
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    move v1, v3

    .line 319
    .local v1, newState:Z
    :goto_1
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoToggle;->animateThumbToCheckedState(Z)V

    .line 323
    .end local v1           #newState:Z
    .end local v2           #xvel:F
    :goto_2
    return-void

    .end local v0           #commitChange:Z
    :cond_0
    move v0, v4

    .line 306
    goto :goto_0

    .restart local v0       #commitChange:Z
    .restart local v2       #xvel:F
    :cond_1
    move v1, v4

    .line 315
    goto :goto_1

    .line 317
    :cond_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoToggle;->getTargetCheckedState()Z

    move-result v1

    .restart local v1       #newState:Z
    goto :goto_1

    .line 321
    .end local v1           #newState:Z
    .end local v2           #xvel:F
    :cond_3
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoToggle;->animateThumbToCheckedState(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 462
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 464
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 468
    .local v0, myDrawableState:[I
    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/oppo/widget/OppoToggle;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 475
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 476
    return-void
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 436
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lcom/oppo/widget/OppoToggle;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 437
    .local v0, padding:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    iget v1, p0, Lcom/oppo/widget/OppoToggle;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 440
    :cond_0
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 485
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 486
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 487
    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 488
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 453
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 454
    .local v0, drawableState:[I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    sget-object v1, Lcom/oppo/widget/OppoToggle;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/oppo/widget/OppoToggle;->mergeDrawableStates([I[I)[I

    .line 457
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28
    .parameter "canvas"

    .prologue
    .line 383
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 385
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->mSwitchLeft:I

    move/from16 v18, v0

    .line 386
    .local v18, switchLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->mSwitchTop:I

    move/from16 v20, v0

    .line 387
    .local v20, switchTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->mSwitchRight:I

    move/from16 v19, v0

    .line 388
    .local v19, switchRight:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/oppo/widget/OppoToggle;->mSwitchBottom:I

    .line 390
    .local v13, switchBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->mThumbPosition:F

    move/from16 v24, v0

    const/high16 v25, 0x3f00

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 391
    .local v22, thumbPos:I
    const/16 v24, 0x0

    const-string v25, "OppoToggle"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ondraw thumbPos = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v24 .. v26}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 393
    new-instance v10, Landroid/graphics/Rect;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->mThumbWidth:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    add-int v25, v25, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->mSwitchBottom:I

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 394
    .local v10, onRect:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->mThumbWidth:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    add-int v24, v24, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->mSwitchBottom:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v25

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 396
    .local v6, offRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mPintOn:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v10, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mPintOff:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 399
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->mThumbWidth:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0xc

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoToggle;->tipWidth:I

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->mSwitchHeight:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0xc

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoToggle;->tipBottom:I

    .line 401
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->mSwitchWidth:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->tipWidth:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoToggle;->tipRight:I

    .line 402
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->mSwitchWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->mThumbWidth:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    add-int/lit8 v24, v24, 0xc

    sub-int v9, v24, v22

    .line 403
    .local v9, onLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->tipRight:I

    move/from16 v24, v0

    sub-int v5, v24, v22

    .line 404
    .local v5, offLeft:I
    const/16 v24, 0x0

    const-string v25, "OppoToggle"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ondraw onLeft = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",offLeft"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v24 .. v26}, Lcom/oppo/util/OppoLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v8, Landroid/graphics/Rect;

    const/16 v24, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->tipWidth:I

    move/from16 v25, v0

    add-int v25, v25, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->tipBottom:I

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v8, v9, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 406
    .local v8, onDrawRect:Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    const/16 v24, 0xc

    const/16 v25, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->tipWidth:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->tipBottom:I

    move/from16 v27, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 407
    .local v11, onTipRect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    const/16 v24, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->tipWidth:I

    move/from16 v25, v0

    add-int v25, v25, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->tipBottom:I

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v4, v5, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 408
    .local v4, offDrawRect:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->tipRight:I

    move/from16 v24, v0

    const/16 v25, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->tipRight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->tipWidth:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->tipBottom:I

    move/from16 v27, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 409
    .local v7, offTipRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mPintOn:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v8, v11, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mPintOff:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v4, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 420
    .end local v4           #offDrawRect:Landroid/graphics/Rect;
    .end local v5           #offLeft:I
    .end local v6           #offRect:Landroid/graphics/Rect;
    .end local v7           #offTipRect:Landroid/graphics/Rect;
    .end local v8           #onDrawRect:Landroid/graphics/Rect;
    .end local v9           #onLeft:I
    .end local v10           #onRect:Landroid/graphics/Rect;
    .end local v11           #onTipRect:Landroid/graphics/Rect;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    add-int v15, v18, v24

    .line 422
    .local v15, switchInnerLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v17, v20, v24

    .line 423
    .local v17, switchInnerTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v16, v19, v24

    .line 424
    .local v16, switchInnerRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v14, v13, v24

    .line 426
    .local v14, switchInnerBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v24, v15, v24

    add-int v21, v24, v22

    .line 428
    .local v21, thumbLeft:I
    add-int v24, v15, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->mThumbWidth:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    add-int v23, v24, v25

    .line 430
    .local v23, thumbRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v21

    move/from16 v2, v20

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 432
    return-void

    .line 412
    .end local v14           #switchInnerBottom:I
    .end local v15           #switchInnerLeft:I
    .end local v16           #switchInnerRight:I
    .end local v17           #switchInnerTop:I
    .end local v21           #thumbLeft:I
    .end local v23           #thumbRight:I
    :cond_0
    new-instance v12, Landroid/graphics/Rect;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoToggle;->mSwitchBottom:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v25

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 413
    .local v12, rect:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mPintOnDisabled:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v12, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 416
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoToggle;->mPintOffDisabled:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v12, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 348
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 350
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/oppo/widget/OppoToggle;->getThumbScrollRange()I

    move-result v4

    int-to-float v4, v4

    :goto_0
    iput v4, p0, Lcom/oppo/widget/OppoToggle;->mThumbPosition:F

    .line 352
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 353
    .local v2, switchRight:I
    iget v4, p0, Lcom/oppo/widget/OppoToggle;->mSwitchWidth:I

    sub-int v1, v2, v4

    .line 354
    .local v1, switchLeft:I
    const/4 v3, 0x0

    .line 355
    .local v3, switchTop:I
    const/4 v0, 0x0

    .line 356
    .local v0, switchBottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 359
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 360
    iget v4, p0, Lcom/oppo/widget/OppoToggle;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 375
    :goto_1
    iput v1, p0, Lcom/oppo/widget/OppoToggle;->mSwitchLeft:I

    .line 376
    iput v3, p0, Lcom/oppo/widget/OppoToggle;->mSwitchTop:I

    .line 377
    iput v0, p0, Lcom/oppo/widget/OppoToggle;->mSwitchBottom:I

    .line 378
    iput v2, p0, Lcom/oppo/widget/OppoToggle;->mSwitchRight:I

    .line 379
    return-void

    .line 350
    .end local v0           #switchBottom:I
    .end local v1           #switchLeft:I
    .end local v2           #switchRight:I
    .end local v3           #switchTop:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 364
    .restart local v0       #switchBottom:I
    .restart local v1       #switchLeft:I
    .restart local v2       #switchRight:I
    .restart local v3       #switchTop:I
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/oppo/widget/OppoToggle;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 366
    iget v4, p0, Lcom/oppo/widget/OppoToggle;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 367
    goto :goto_1

    .line 370
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 371
    iget v4, p0, Lcom/oppo/widget/OppoToggle;->mSwitchHeight:I

    sub-int v3, v0, v4

    goto :goto_1

    .line 356
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 163
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 164
    .local v5, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 165
    .local v0, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 166
    .local v6, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 168
    .local v1, heightSize:I
    iget-object v7, p0, Lcom/oppo/widget/OppoToggle;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/oppo/widget/OppoToggle;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 170
    iget-object v7, p0, Lcom/oppo/widget/OppoToggle;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 171
    .local v3, switchHeight:I
    iget-object v7, p0, Lcom/oppo/widget/OppoToggle;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 173
    .local v4, switchWidth:I
    iget-object v7, p0, Lcom/oppo/widget/OppoToggle;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iput v7, p0, Lcom/oppo/widget/OppoToggle;->mThumbWidth:I

    .line 175
    sparse-switch v5, :sswitch_data_0

    .line 189
    :goto_0
    sparse-switch v0, :sswitch_data_1

    .line 203
    :goto_1
    iput v4, p0, Lcom/oppo/widget/OppoToggle;->mSwitchWidth:I

    .line 204
    iput v3, p0, Lcom/oppo/widget/OppoToggle;->mSwitchHeight:I

    .line 206
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 208
    .local v2, measuredHeight:I
    if-ge v2, v3, :cond_0

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v7

    invoke-virtual {p0, v7, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 211
    :cond_0
    return-void

    .line 177
    .end local v2           #measuredHeight:I
    :sswitch_0
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 178
    goto :goto_0

    .line 181
    :sswitch_1
    move v6, v4

    .line 182
    goto :goto_0

    .line 191
    :sswitch_2
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 192
    goto :goto_1

    .line 195
    :sswitch_3
    move v1, v3

    .line 196
    goto :goto_1

    .line 175
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    .line 189
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_3
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 228
    iget-object v6, p0, Lcom/oppo/widget/OppoToggle;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 230
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_1
    :goto_1
    return v5

    .line 232
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 233
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 234
    .local v4, y:F
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v3, v4}, Lcom/oppo/widget/OppoToggle;->hitThumb(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 235
    iput v5, p0, Lcom/oppo/widget/OppoToggle;->mTouchMode:I

    .line 236
    iput v3, p0, Lcom/oppo/widget/OppoToggle;->mTouchX:F

    .line 237
    iput v4, p0, Lcom/oppo/widget/OppoToggle;->mTouchY:F

    goto :goto_0

    .line 243
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_2
    iget v6, p0, Lcom/oppo/widget/OppoToggle;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 249
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 250
    .restart local v3       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 251
    .restart local v4       #y:F
    iget v6, p0, Lcom/oppo/widget/OppoToggle;->mTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoToggle;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_2

    iget v6, p0, Lcom/oppo/widget/OppoToggle;->mTouchY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoToggle;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 252
    :cond_2
    iput v8, p0, Lcom/oppo/widget/OppoToggle;->mTouchMode:I

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 254
    iput v3, p0, Lcom/oppo/widget/OppoToggle;->mTouchX:F

    .line 255
    iput v4, p0, Lcom/oppo/widget/OppoToggle;->mTouchY:F

    goto :goto_1

    .line 262
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 263
    .restart local v3       #x:F
    iget v6, p0, Lcom/oppo/widget/OppoToggle;->mTouchX:F

    sub-float v1, v3, v6

    .line 264
    .local v1, dx:F
    const/4 v6, 0x0

    iget v7, p0, Lcom/oppo/widget/OppoToggle;->mThumbPosition:F

    add-float/2addr v7, v1

    invoke-direct {p0}, Lcom/oppo/widget/OppoToggle;->getThumbScrollRange()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 265
    .local v2, newPos:F
    iget v6, p0, Lcom/oppo/widget/OppoToggle;->mThumbPosition:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_1

    .line 266
    iput v2, p0, Lcom/oppo/widget/OppoToggle;->mThumbPosition:F

    .line 267
    iput v3, p0, Lcom/oppo/widget/OppoToggle;->mTouchX:F

    .line 268
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 278
    .end local v1           #dx:F
    .end local v2           #newPos:F
    .end local v3           #x:F
    :pswitch_5
    iget v6, p0, Lcom/oppo/widget/OppoToggle;->mTouchMode:I

    if-ne v6, v8, :cond_3

    .line 279
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoToggle;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 282
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/oppo/widget/OppoToggle;->mTouchMode:I

    .line 283
    iget-object v5, p0, Lcom/oppo/widget/OppoToggle;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 243
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 342
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oppo/widget/OppoToggle;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/oppo/widget/OppoToggle;->mThumbPosition:F

    .line 343
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 344
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 480
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoToggle;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
