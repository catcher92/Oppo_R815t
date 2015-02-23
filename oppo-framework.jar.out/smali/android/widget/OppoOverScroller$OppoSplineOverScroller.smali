.class Landroid/widget/OppoOverScroller$OppoSplineOverScroller;
.super Ljava/lang/Object;
.source "OppoOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OppoOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OppoSplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_SPLINE:I = 0x3

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final OVER_SPLINE:I = 0x4

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F = null

.field private static final SPLINE_TIME:[F = null

.field private static final START_TENSION:F = 0.5f

.field private static final VISCOUS_FLUID_SCALE:F = 14.0f

.field private static sViscousFluidNormalize:F


# instance fields
.field private deltaCurrV:I

.field private fmCurrY:I

.field private fmLastCurrY:I

.field private mCurrV:F

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mLastCurrV:I

.field private mLastCurrY:I

.field private mLastDetla:D

.field private mLastPosition:I

.field private mLastV:I

.field private mOppoCount:I

.field private mOver:I

.field private mOverSplineStart:Z

.field private mPhysicalCoeff:F

.field private mScrollerDistance:I

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mSplineState:I

.field private mStart:I

.field private mStartTime:J

.field private mStartV:F

.field private mState:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x65

    .line 630
    const-wide v0, 0x3fe8f5c28f5c28f6L

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->DECELERATION_RATE:F

    .line 638
    new-array v0, v4, [F

    sput-object v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->SPLINE_POSITION:[F

    .line 639
    new-array v0, v4, [F

    sput-object v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->SPLINE_TIME:[F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 564
    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastCurrY:I

    .line 566
    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastCurrV:I

    .line 567
    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->deltaCurrV:I

    .line 568
    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->fmLastCurrY:I

    .line 570
    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastV:I

    .line 573
    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartV:F

    .line 574
    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrV:F

    .line 575
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastDetla:D

    .line 619
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFlingFriction:F

    .line 622
    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    .line 652
    iput-boolean v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 653
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 654
    .local v0, ppi:F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mPhysicalCoeff:F

    .line 657
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 560
    iget-boolean v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 560
    iput-boolean p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 560
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 560
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 560
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 560
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 560
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 560
    iget-wide v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/widget/OppoOverScroller$OppoSplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 560
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .locals 12
    .parameter "start"
    .parameter "oldFinal"
    .parameter "newFinal"

    .prologue
    const/high16 v11, 0x42c8

    .line 675
    sub-int v2, p2, p1

    .line 676
    .local v2, oldDistance:I
    sub-int v1, p3, p1

    .line 677
    .local v1, newDistance:I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 678
    .local v6, x:F
    mul-float v9, v11, v6

    float-to-int v0, v9

    .line 679
    .local v0, index:I
    const/16 v9, 0x64

    if-ge v0, v9, :cond_0

    .line 680
    int-to-float v9, v0

    div-float v7, v9, v11

    .line 681
    .local v7, x_inf:F
    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    .line 682
    .local v8, x_sup:F
    sget-object v9, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->SPLINE_TIME:[F

    aget v3, v9, v0

    .line 683
    .local v3, t_inf:F
    sget-object v9, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    .line 684
    .local v4, t_sup:F
    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    .line 685
    .local v5, timeCoef:F
    iget v9, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 687
    .end local v3           #t_inf:F
    .end local v4           #t_sup:F
    .end local v5           #timeCoef:F
    .end local v7           #x_inf:F
    .end local v8           #x_sup:F
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 8
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 830
    neg-int v4, p3

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    div-float v2, v4, v5

    .line 831
    .local v2, durationToApex:F
    mul-int v4, p3, p3

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v0, v4, v5

    .line 832
    .local v0, distanceToApex:F
    sub-int v4, p2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    .line 833
    .local v1, distanceToEdge:F
    const-wide/high16 v4, 0x4000

    add-float v6, v0, v1

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 835
    .local v3, totalDuration:F
    iget-wide v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    const/high16 v6, 0x447a

    sub-float v7, v3, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 836
    iput p2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    .line 837
    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    .line 838
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .parameter "velocity"

    .prologue
    .line 667
    if-lez p0, :cond_0

    const/high16 v0, -0x3b06

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44fa

    goto :goto_0
.end method

.method private getSplineDeceleration(I)D
    .locals 6
    .parameter "velocity"

    .prologue
    .line 810
    const v0, 0x3eb33333

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3f789374bc6a7efaL

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mPhysicalCoeff:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8
    .parameter "velocity"

    .prologue
    .line 815
    invoke-direct {p0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 816
    .local v2, l:D
    sget v4, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 817
    .local v0, decelMinusOne:D
    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 8
    .parameter "velocity"

    .prologue
    .line 823
    invoke-direct {p0, p1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 824
    .local v2, l:D
    sget v4, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 825
    .local v0, decelMinusOne:D
    const-wide v4, 0x408f400000000000L

    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method private onEdgeReached()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f80

    .line 885
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 886
    .local v2, sign:F
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x44c8

    div-float v1, v3, v4

    .line 887
    .local v1, distance:F
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    .line 889
    neg-float v3, v2

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x4000

    iget v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    .line 890
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    int-to-float v1, v3

    .line 892
    :cond_0
    sput v6, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->sViscousFluidNormalize:F

    .line 893
    const/high16 v3, 0x4160

    invoke-static {v6, v3}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->viscousFluid(FF)F

    move-result v3

    div-float v3, v6, v3

    sput v3, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->sViscousFluidNormalize:F

    .line 894
    iput v7, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 895
    float-to-int v3, v1

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    .line 896
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    .line 897
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    if-lez v4, :cond_1

    .end local v1           #distance:F
    :goto_0
    float-to-int v4, v1

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 898
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    if-lez v3, :cond_2

    const/16 v0, -0x320

    .line 899
    .local v0, decelerate:I
    :goto_1
    const/high16 v3, 0x447a

    iget v4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 900
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineState:I

    .line 901
    iput-boolean v7, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSplineStart:Z

    .line 903
    return-void

    .line 897
    .end local v0           #decelerate:I
    .restart local v1       #distance:F
    :cond_1
    neg-float v1, v1

    goto :goto_0

    .line 898
    .end local v1           #distance:F
    :cond_2
    const/16 v0, 0x320

    goto :goto_1
.end method

.method private startAfterEdge(IIII)V
    .locals 13
    .parameter "start"
    .parameter "min"
    .parameter "max"
    .parameter "velocity"

    .prologue
    .line 848
    if-le p1, p2, :cond_0

    move/from16 v0, p3

    if-ge p1, v0, :cond_0

    .line 849
    const-string v1, "OverScroller"

    const-string v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 868
    :goto_0
    return-void

    .line 853
    :cond_0
    move/from16 v0, p3

    if-le p1, v0, :cond_1

    const/4 v10, 0x1

    .line 854
    .local v10, positive:Z
    :goto_1
    if-eqz v10, :cond_2

    move/from16 v7, p3

    .line 855
    .local v7, edge:I
    :goto_2
    sub-int v9, p1, v7

    .line 856
    .local v9, overDistance:I
    mul-int v1, v9, p4

    if-ltz v1, :cond_3

    const/4 v8, 0x1

    .line 857
    .local v8, keepIncreasing:Z
    :goto_3
    if-eqz v8, :cond_4

    .line 859
    move/from16 v0, p4

    invoke-direct {p0, p1, v7, v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_0

    .line 853
    .end local v7           #edge:I
    .end local v8           #keepIncreasing:Z
    .end local v9           #overDistance:I
    .end local v10           #positive:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .restart local v10       #positive:Z
    :cond_2
    move v7, p2

    .line 854
    goto :goto_2

    .line 856
    .restart local v7       #edge:I
    .restart local v9       #overDistance:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 861
    .restart local v8       #keepIncreasing:Z
    :cond_4
    move/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v11

    .line 862
    .local v11, totalDistance:D
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    cmpl-double v1, v11, v1

    if-lez v1, :cond_7

    .line 863
    if-eqz v10, :cond_5

    move v4, p2

    :goto_4
    if-eqz v10, :cond_6

    move v5, p1

    :goto_5
    iget v6, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    move-object v1, p0

    move v2, p1

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->fling(IIIII)V

    goto :goto_0

    :cond_5
    move v4, p1

    goto :goto_4

    :cond_6
    move/from16 v5, p3

    goto :goto_5

    .line 865
    :cond_7
    move/from16 v0, p4

    invoke-direct {p0, p1, v7, v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startSpringback(III)V

    goto :goto_0
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 841
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mScrollerDistance:I

    .line 842
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    .line 843
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->fitOnBounceCurve(III)V

    .line 844
    invoke-direct {p0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->onEdgeReached()V

    .line 845
    return-void

    :cond_0
    move v0, p3

    .line 842
    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 741
    iput v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 743
    iput-boolean v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 744
    iput v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    .line 745
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    .line 746
    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 747
    sub-int v0, p1, p2

    .line 748
    .local v0, delta:I
    invoke-static {v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    .line 751
    neg-int v1, v0

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    .line 752
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    .line 753
    const-wide v1, 0x408f400000000000L

    const-wide/high16 v3, -0x4000

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    float-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit16 v1, v1, 0xbb8

    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 754
    return-void
.end method

.method private static viscousFluid(FF)F
    .locals 4
    .parameter "x"
    .parameter "distance"

    .prologue
    const/high16 v3, 0x3f80

    .line 1018
    const v0, 0x3ebc5ab2

    .line 1019
    .local v0, start:F
    sub-float v1, v3, v0

    div-float v1, v3, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    div-float/2addr v1, p1

    add-float/2addr p0, v1

    .line 1020
    mul-float/2addr p0, p1

    .line 1021
    sub-float v1, v3, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p0, v3, v1

    .line 1022
    sub-float v1, v3, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    .line 1023
    sget v1, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    .line 1024
    return p0
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 906
    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 916
    :goto_0
    invoke-virtual {p0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->update()Z

    .line 917
    const/4 v0, 0x1

    :pswitch_0
    return v0

    .line 910
    :pswitch_1
    iget-wide v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 911
    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 906
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 5
    .parameter "extend"

    .prologue
    .line 717
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 718
    .local v1, time:J
    iget-wide v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    long-to-int v0, v3

    .line 719
    .local v0, elapsedTime:I
    add-int v3, v0, p1

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 720
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 721
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 708
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 709
    return-void
.end method

.method fling(IIIII)V
    .locals 6
    .parameter "start"
    .parameter "velocity"
    .parameter "min"
    .parameter "max"
    .parameter "over"

    .prologue
    const/4 v5, 0x0

    .line 757
    const/4 v3, 0x1

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 758
    iput v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastCurrY:I

    .line 759
    iput p5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    .line 760
    iput-boolean v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 761
    invoke-static {}, Landroid/widget/OppoOverScroller;->access$800()I

    move-result v3

    if-gt p2, v3, :cond_0

    invoke-static {}, Landroid/widget/OppoOverScroller;->access$800()I

    move-result v3

    neg-int v3, v3

    if-ge p2, v3, :cond_1

    .line 762
    :cond_0
    int-to-float v3, p2

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 763
    .local v0, sign:F
    float-to-int v3, v0

    invoke-static {}, Landroid/widget/OppoOverScroller;->access$800()I

    move-result v4

    mul-int p2, v3, v4

    .line 765
    .end local v0           #sign:F
    :cond_1
    iput p2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    int-to-float v3, p2

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F

    .line 766
    iput v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineDuration:I

    iput v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 767
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 768
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 769
    int-to-float v3, p2

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrV:F

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartV:F

    .line 770
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastPosition:I

    .line 772
    if-gt p1, p4, :cond_2

    if-ge p1, p3, :cond_4

    .line 773
    :cond_2
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startAfterEdge(IIII)V

    .line 807
    :cond_3
    :goto_0
    return-void

    .line 777
    :cond_4
    iput v5, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    .line 778
    const-wide/16 v1, 0x0

    .line 780
    .local v1, totalDistance:D
    if-eqz p2, :cond_5

    .line 781
    invoke-direct {p0, p2}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getSplineFlingDuration(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x64

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineDuration:I

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 782
    invoke-direct {p0, p2}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v1

    .line 785
    :cond_5
    int-to-float v3, p2

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineDistance:I

    .line 786
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineDistance:I

    add-int/2addr v3, p1

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 789
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-ge v3, p3, :cond_6

    .line 791
    iput p3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 794
    :cond_6
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-le v3, p4, :cond_7

    .line 796
    iput p4, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 798
    :cond_7
    if-eqz p5, :cond_3

    .line 799
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 800
    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    invoke-static {}, Landroid/widget/OppoOverScroller;->access$900()I

    move-result v4

    if-gt v3, v4, :cond_8

    iget v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    invoke-static {}, Landroid/widget/OppoOverScroller;->access$900()I

    move-result v4

    neg-int v4, v4

    if-ge v3, v4, :cond_9

    .line 801
    :cond_8
    int-to-float v3, p2

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 802
    .restart local v0       #sign:F
    float-to-int v3, v0

    invoke-static {}, Landroid/widget/OppoOverScroller;->access$900()I

    move-result v4

    mul-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 804
    .end local v0           #sign:F
    :cond_9
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineState:I

    .line 805
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    goto :goto_0
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "over"

    .prologue
    .line 872
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 873
    iput p3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOver:I

    .line 874
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 877
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    .line 878
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startAfterEdge(IIII)V

    .line 880
    :cond_0
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 712
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 713
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 714
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .parameter "friction"

    .prologue
    .line 648
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFlingFriction:F

    .line 649
    return-void
.end method

.method springback(III)Z
    .locals 4
    .parameter "start"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 724
    iput-boolean v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 725
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    .line 726
    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    .line 727
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 728
    iput v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 730
    if-ge p1, p2, :cond_1

    .line 731
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startSpringback(III)V

    .line 736
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 732
    :cond_1
    if-le p1, p3, :cond_0

    .line 733
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 736
    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3
    .parameter "start"
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 690
    iput-boolean v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinished:Z

    .line 692
    iput p1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    .line 693
    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 695
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    .line 696
    iput p3, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    .line 699
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDeceleration:F

    .line 700
    iput v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mVelocity:I

    .line 701
    return-void
.end method

.method update()Z
    .locals 19

    .prologue
    .line 926
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    .line 927
    .local v9, time:J
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartTime:J

    sub-long v2, v9, v14

    .line 928
    .local v2, currentTime:J
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    int-to-float v14, v14

    const/high16 v15, 0x4180

    mul-float/2addr v14, v15

    float-to-int v11, v14

    .line 929
    .local v11, timePassed:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    if-le v11, v14, :cond_0

    .line 930
    const/4 v14, 0x0

    .line 1014
    :goto_0
    return v14

    .line 933
    :cond_0
    const-wide/16 v5, 0x0

    .line 935
    .local v5, distance:D
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mState:I

    packed-switch v14, :pswitch_data_0

    .line 1012
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 1013
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    long-to-int v15, v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 1014
    const/4 v14, 0x1

    goto :goto_0

    .line 937
    :pswitch_0
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartV:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x458ca000

    div-float/2addr v14, v15

    const/high16 v15, 0x3f80

    sub-float/2addr v14, v15

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide v16, 0x3fd3333333333333L

    mul-double v14, v14, v16

    const-wide v16, 0x3fe6666666666666L

    add-double v14, v14, v16

    double-to-float v12, v14

    .line 938
    .local v12, velocityCoef:F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStartV:F

    mul-float/2addr v14, v12

    const v15, 0x44bb8000

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    int-to-double v15, v15

    const-wide v17, 0x400921fb4d12d84aL

    mul-double v15, v15, v17

    const-wide/high16 v17, 0x4030

    mul-double v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    const-wide v17, 0x3fe921fb4d12d84aL

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    const-wide/high16 v17, 0x3ff0

    add-double v15, v15, v17

    double-to-float v15, v15

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrV:F

    .line 941
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrV:F

    const/high16 v15, 0x4180

    mul-float/2addr v14, v15

    float-to-double v5, v14

    .line 942
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastDetla:D

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    .line 943
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 944
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->finish()V

    .line 945
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 947
    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v4, v14

    .line 948
    .local v4, delta:I
    if-nez v4, :cond_5

    .line 949
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    div-double/2addr v14, v5

    double-to-int v4, v14

    .line 951
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastPosition:I

    add-int/2addr v14, v4

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 952
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastDetla:D

    .line 953
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mLastPosition:I

    .line 954
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 955
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrV:F

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrVelocity:F

    .line 956
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 960
    .end local v4           #delta:I
    .end local v12           #velocityCoef:F
    :pswitch_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mSplineState:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_10

    .line 961
    int-to-float v14, v11

    const/high16 v15, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    mul-float v13, v14, v15

    .line 962
    .local v13, x:F
    const/high16 v14, 0x4160

    invoke-static {v13, v14}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->viscousFluid(FF)F

    move-result v13

    .line 963
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    int-to-float v14, v14

    mul-float/2addr v14, v13

    float-to-double v5, v14

    .line 965
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-gez v14, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mScrollerDistance:I

    int-to-double v14, v14

    cmpl-double v14, v5, v14

    if-gez v14, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-lez v14, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mScrollerDistance:I

    int-to-double v14, v14

    cmpg-double v14, v5, v14

    if-gtz v14, :cond_8

    .line 966
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 967
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    int-to-float v14, v14

    const/high16 v15, 0x4180

    mul-float/2addr v14, v15

    float-to-int v11, v14

    .line 969
    int-to-float v14, v11

    const/high16 v15, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    mul-float v13, v14, v15

    .line 970
    const/high16 v14, 0x4160

    invoke-static {v13, v14}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->viscousFluid(FF)F

    move-result v13

    .line 971
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    int-to-float v14, v14

    mul-float/2addr v14, v13

    float-to-double v5, v14

    .line 972
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSplineStart:Z

    goto :goto_2

    .line 974
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSplineStart:Z

    if-eqz v14, :cond_c

    .line 975
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    add-int/lit8 v14, v14, 0x1

    int-to-float v14, v14

    const/high16 v15, 0x4180

    mul-float/2addr v14, v15

    float-to-int v11, v14

    .line 976
    int-to-float v14, v11

    const/high16 v15, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mDuration:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    mul-float v13, v14, v15

    .line 977
    const/high16 v14, 0x4160

    invoke-static {v13, v14}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->viscousFluid(FF)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    float-to-double v7, v14

    .line 978
    .local v7, nextDistance:D
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-gez v14, :cond_9

    sub-double v14, v7, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mScrollerDistance:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v16, v5, v16

    cmpg-double v14, v14, v16

    if-ltz v14, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-lez v14, :cond_b

    sub-double v14, v7, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mScrollerDistance:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v16, v5, v16

    cmpl-double v14, v14, v16

    if-lez v14, :cond_b

    .line 980
    :cond_a
    move-wide v5, v7

    .line 981
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOppoCount:I

    .line 983
    :cond_b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mOverSplineStart:Z

    .line 985
    .end local v7           #nextDistance:D
    :cond_c
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 987
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-gez v14, :cond_d

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-le v14, v15, :cond_f

    :cond_d
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-lez v14, :cond_e

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-ge v14, v15, :cond_f

    :cond_e
    float-to-double v14, v13

    const-wide v16, 0x3fed1eb851eb851fL

    cmpl-double v14, v14, v16

    if-lez v14, :cond_1

    .line 990
    :cond_f
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    .line 991
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 995
    .end local v13           #x:F
    :cond_10
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 996
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1001
    :pswitch_2
    int-to-float v14, v11

    const/high16 v15, 0x3f80

    invoke-static {}, Landroid/widget/OppoOverScroller;->access$1000()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    mul-float v13, v14, v15

    .line 1002
    .restart local v13       #x:F
    invoke-static {v13}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v13

    .line 1003
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    mul-float/2addr v14, v13

    float-to-double v5, v14

    .line 1004
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    long-to-int v15, v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 1005
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    if-ne v14, v15, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    if-nez v14, :cond_1

    .line 1006
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 1007
    invoke-virtual/range {p0 .. p0}, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->finish()V

    goto/16 :goto_1

    .line 935
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3
    .parameter "q"

    .prologue
    .line 660
    iget v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OppoOverScroller$OppoSplineOverScroller;->mCurrentPosition:I

    .line 661
    return-void
.end method
