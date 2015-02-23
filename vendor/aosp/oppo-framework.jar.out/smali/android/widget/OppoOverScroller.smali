.class public Landroid/widget/OppoOverScroller;
.super Landroid/widget/OverScroller;
.source "OppoOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OppoOverScroller$OppoSplineOverScroller;
    }
.end annotation


# static fields
.field private static final ADD_DURATION:I = 0xbb8

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final DEFAULT_TIME_GAP:F = 16.0f

.field private static final FLING_MODE:I = 0x1

.field private static final MAXIMUM_FLING_VELOCITY_LIST:I = 0xbb8

.field private static final PI:D = 3.1415926

.field private static SCROLL_DURATION:I

.field private static final SCROLL_MODE:I

.field private static TAG:Ljava/lang/String;

.field private static mConfiguration:Landroid/view/OppoViewConfiguration;

.field private static mMaximumVelocity:I

.field public static mOppoDeceleration:F

.field private static mOverscrollDistance:I


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mPpi:F

.field private final mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

.field private final mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "OppoOverScroller"

    sput-object v0, Landroid/widget/OppoOverScroller;->TAG:Ljava/lang/String;

    .line 60
    const/16 v0, 0x3e8

    sput v0, Landroid/widget/OppoOverScroller;->SCROLL_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OppoOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OppoOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"
    .parameter "bounceCoefficientX"
    .parameter "bounceCoefficientY"

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OppoOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0
    .parameter "context"
    .parameter "interpolator"
    .parameter "bounceCoefficientX"
    .parameter "bounceCoefficientY"
    .parameter "flywheel"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p5}, Landroid/widget/OppoOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 3
    .parameter "context"
    .parameter "interpolator"
    .parameter "flywheel"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 96
    iput-object p2, p0, Landroid/widget/OppoOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 97
    iput-boolean p3, p0, Landroid/widget/OppoOverScroller;->mFlywheel:Z

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OppoOverScroller;->mPpi:F

    .line 99
    const v1, 0x43c10b3d

    iget v2, p0, Landroid/widget/OppoOverScroller;->mPpi:F

    mul-float/2addr v1, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    sput v1, Landroid/widget/OppoOverScroller;->mOppoDeceleration:F

    .line 101
    new-instance v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    .line 102
    new-instance v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    .line 103
    invoke-static {p1}, Landroid/view/OppoViewConfiguration;->get(Landroid/content/Context;)Landroid/view/OppoViewConfiguration;

    move-result-object v1

    sput-object v1, Landroid/widget/OppoOverScroller;->mConfiguration:Landroid/view/OppoViewConfiguration;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 105
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x2

    sput v1, Landroid/widget/OppoOverScroller;->mOverscrollDistance:I

    .line 106
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x453b8000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Landroid/widget/OppoOverScroller;->mMaximumVelocity:I

    .line 107
    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 37
    sget v0, Landroid/widget/OppoOverScroller;->SCROLL_DURATION:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 37
    sget v0, Landroid/widget/OppoOverScroller;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 37
    sget v0, Landroid/widget/OppoOverScroller;->mOverscrollDistance:I

    return v0
.end method

.method static newInstance(Landroid/content/Context;)Landroid/widget/OverScroller;
    .locals 2
    .parameter "context"

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v0, Landroid/widget/OppoOverScroller;

    invoke-direct {v0, p0}, Landroid/widget/OppoOverScroller;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, mScroller:Landroid/widget/OverScroller;
    :goto_0
    return-object v0

    .line 153
    .end local v0           #mScroller:Landroid/widget/OverScroller;
    :cond_0
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .restart local v0       #mScroller:Landroid/widget/OverScroller;
    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->finish()V

    .line 534
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->finish()V

    .line 535
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 332
    const/4 v6, 0x0

    .line 378
    :goto_0
    return v6

    .line 334
    :cond_0
    iget v6, p0, Landroid/widget/OppoOverScroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 378
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 336
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 339
    .local v4, time:J
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J
    invoke-static {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$600(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)J

    move-result-wide v6

    sub-long v1, v4, v6

    .line 341
    .local v1, elapsedTime:J
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I
    invoke-static {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$500(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    .line 342
    .local v0, duration:I
    int-to-long v6, v0

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    .line 343
    long-to-float v6, v1

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 345
    .local v3, q:F
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_2

    .line 346
    invoke-static {v3}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v3

    .line 351
    :goto_2
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v6, v3}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->updateScroll(F)V

    .line 352
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v6, v3}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->updateScroll(F)V

    goto :goto_1

    .line 348
    :cond_2
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    .line 354
    .end local v3           #q:F
    :cond_3
    invoke-virtual {p0}, Landroid/widget/OppoOverScroller;->abortAnimation()V

    goto :goto_1

    .line 359
    .end local v0           #duration:I
    .end local v1           #elapsedTime:J
    .end local v4           #time:J
    :pswitch_1
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z
    invoke-static {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$000(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 360
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_4

    .line 361
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 362
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->finish()V

    .line 367
    :cond_4
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z
    invoke-static {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$000(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 368
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_1

    .line 369
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 370
    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->finish()V

    goto :goto_1

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .parameter "extend"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->extendDuration(I)V

    .line 289
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->extendDuration(I)V

    .line 290
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 438
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OppoOverScroller;->fling(IIIIIIIIII)V

    .line 439
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 8
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"
    .parameter "overX"
    .parameter "overY"

    .prologue
    .line 465
    iget-boolean v0, p0, Landroid/widget/OppoOverScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$200(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)F

    move-result v0

    const/high16 v1, 0x447a

    mul-float v6, v0, v1

    .line 467
    .local v6, oldVelocityX:F
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$200(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)F

    move-result v0

    const/high16 v1, 0x447a

    mul-float v7, v0, v1

    .line 468
    .local v7, oldVelocityY:F
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 470
    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    .line 471
    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    .line 475
    .end local v6           #oldVelocityX:F
    .end local v7           #oldVelocityY:F
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OppoOverScroller;->mMode:I

    .line 476
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->fling(IIIII)V

    .line 477
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->fling(IIIII)V

    .line 478
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$200(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$200(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)F

    move-result v2

    mul-float v0, v1, v2

    .line 219
    .local v0, squaredNorm:F
    iget-object v1, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$200(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$200(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 220
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public getOppoCurrX()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$100(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getOppoCurrY()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$100(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getOppoDuration()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$500(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I
    invoke-static {v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$500(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getOppoFinalX()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$400(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public getOppoFinalY()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$400(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getOppoStartX()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$300(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getOppoStartY()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$300(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public isOppoFinished()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$000(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$000(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverScrolled()Z
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$000(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$700(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$000(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$700(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 4
    .parameter "xvel"
    .parameter "yvel"

    .prologue
    .line 554
    iget-object v2, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I
    invoke-static {v2}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$400(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I
    invoke-static {v3}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$300(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v3

    sub-int v0, v2, v3

    .line 555
    .local v0, dx:I
    iget-object v2, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I
    invoke-static {v2}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$400(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I
    invoke-static {v3}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$300(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I

    move-result v3

    sub-int v1, v2, v3

    .line 556
    .local v1, dy:I
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .parameter "startX"
    .parameter "finalX"
    .parameter "overX"

    .prologue
    .line 492
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->notifyEdgeReached(III)V

    .line 493
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .parameter "startY"
    .parameter "finalY"
    .parameter "overY"

    .prologue
    .line 507
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->notifyEdgeReached(III)V

    .line 508
    return-void
.end method

.method public final oppoForceFinished(Z)V
    .locals 2
    .parameter "finished"

    .prologue
    .line 191
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    iget-object v1, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #setter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z
    invoke-static {v1, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$002(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;Z)Z

    move-result v1

    #setter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z
    invoke-static {v0, v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$002(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;Z)Z

    .line 192
    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .parameter "newX"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->setFinalPosition(I)V

    .line 307
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .parameter "newY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->setFinalPosition(I)V

    .line 324
    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 159
    iput-object p1, p0, Landroid/widget/OppoOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 160
    return-void
.end method

.method public setOppoFriction(F)V
    .locals 1
    .parameter "friction"

    .prologue
    .line 169
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->setFriction(F)V

    .line 170
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->setFriction(F)V

    .line 171
    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 4
    .parameter "startX"
    .parameter "startY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    const/4 v2, 0x1

    .line 428
    iput v2, p0, Landroid/widget/OppoOverScroller;->mMode:I

    .line 431
    iget-object v3, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->springback(III)Z

    move-result v0

    .line 432
    .local v0, spingbackX:Z
    iget-object v3, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->springback(III)Z

    move-result v1

    .line 433
    .local v1, spingbackY:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 394
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OppoOverScroller;->startScroll(IIIII)V

    .line 395
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 410
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OppoOverScroller;->mMode:I

    .line 411
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startScroll(III)V

    .line 412
    iget-object v0, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startScroll(III)V

    .line 413
    return-void
.end method

.method public timePassed()I
    .locals 8

    .prologue
    .line 545
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 546
    .local v2, time:J
    iget-object v4, p0, Landroid/widget/OppoOverScroller;->mScrollerX:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J
    invoke-static {v4}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$600(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)J

    move-result-wide v4

    iget-object v6, p0, Landroid/widget/OppoOverScroller;->mScrollerY:Landroid/widget/OppoOverScroller$OppoSplineOverScroller;

    #getter for: Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J
    invoke-static {v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->access$600(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 547
    .local v0, startTime:J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
