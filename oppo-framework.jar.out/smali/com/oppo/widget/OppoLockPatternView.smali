.class public Lcom/oppo/widget/OppoLockPatternView;
.super Landroid/view/View;
.source "OppoLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoLockPatternView$1;,
        Lcom/oppo/widget/OppoLockPatternView$SavedState;,
        Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;,
        Lcom/oppo/widget/OppoLockPatternView$DisplayMode;,
        Lcom/oppo/widget/OppoLockPatternView$Cell;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field static final STATUS_BAR_HEIGHT:I = 0x19

.field private static final TAG:Ljava/lang/String; = "OppoLockPatternView"


# instance fields
.field private mAnimatingPeriodStart:J

.field private final mArrowMatrix:Landroid/graphics/Matrix;

.field private mAspect:I

.field private mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

.field private mBitmapArrowRedUp:Landroid/graphics/Bitmap;

.field private mBitmapBtnDefault:Landroid/graphics/Bitmap;

.field private mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field private mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDiameterFactor:F

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private final mStrokeAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 249
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mDrawingProfilingStarted:Z

    .line 69
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 70
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 83
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 90
    const/4 v7, 0x3

    const/4 v8, 0x3

    filled-new-array {v7, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    .line 97
    const/high16 v7, -0x4080

    iput v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 98
    const/high16 v7, -0x4080

    iput v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 102
    sget-object v7, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 103
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    .line 104
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    .line 105
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    .line 106
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 108
    const v7, 0x3eb33333

    iput v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mDiameterFactor:F

    .line 109
    const/16 v7, 0x7f

    iput v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mStrokeAlpha:I

    .line 110
    const v7, 0x3f19999a

    iput v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mHitFactor:F

    .line 124
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 125
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 131
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    .line 132
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 251
    sget-object v7, Loppo/R$styleable;->OppoLockPatternView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 253
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, aspect:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    const-string v7, "square"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 258
    const/4 v7, 0x0

    iput v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    .line 267
    :goto_0
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/view/View;->setClickable(Z)V

    .line 269
    iget-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 270
    iget-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 271
    iget-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v8, 0x4d

    const/16 v9, 0xff

    const/16 v10, 0xff

    const/16 v11, 0xff

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v8, 0x7f

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 273
    iget-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 274
    iget-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 275
    iget-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 285
    const v7, 0xc080428

    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 286
    const v7, 0xc080429

    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 287
    const v7, 0xc08042a

    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 289
    const v7, 0xc08042b

    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 290
    const v7, 0xc08042c

    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    .line 300
    const/4 v7, 0x3

    new-array v4, v7, [Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    .line 302
    .local v4, bitmaps:[Landroid/graphics/Bitmap;
    move-object v1, v4

    .local v1, arr$:[Landroid/graphics/Bitmap;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v3, v1, v5

    .line 303
    .local v3, bitmap:Landroid/graphics/Bitmap;
    iget v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    .line 304
    iget v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    .line 302
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 259
    .end local v1           #arr$:[Landroid/graphics/Bitmap;
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #bitmaps:[Landroid/graphics/Bitmap;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_0
    const-string v7, "lock_width"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 260
    const/4 v7, 0x1

    iput v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 261
    :cond_1
    const-string v7, "lock_height"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 262
    const/4 v7, 0x2

    iput v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 264
    :cond_2
    const/4 v7, 0x0

    iput v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 307
    .restart local v1       #arr$:[Landroid/graphics/Bitmap;
    .restart local v4       #bitmaps:[Landroid/graphics/Bitmap;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_3
    return-void
.end method

.method private addCellToPattern(Lcom/oppo/widget/OppoLockPatternView$Cell;)V
    .locals 3
    .parameter "newCell"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 578
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyCellAdded()V

    .line 580
    return-void
.end method

.method private checkForNewHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 585
    invoke-direct {p0, p2}, Lcom/oppo/widget/OppoLockPatternView;->getRowHit(F)I

    move-result v1

    .line 586
    .local v1, rowHit:I
    if-gez v1, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-object v2

    .line 589
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->getColumnHit(F)I

    move-result v0

    .line 590
    .local v0, columnHit:I
    if-ltz v0, :cond_0

    .line 594
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    .line 597
    invoke-static {v1, v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->of(II)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v2

    goto :goto_0
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 445
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 446
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 447
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 445
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    .end local v1           #j:I
    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 536
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoLockPatternView;->checkForNewHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v0

    .line 537
    .local v0, cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    if-eqz v0, :cond_7

    .line 540
    const/4 v4, 0x0

    .line 541
    .local v4, fillInGapCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 542
    .local v7, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 543
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 544
    .local v6, lastCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v8, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    iget v11, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    sub-int v2, v8, v11

    .line 545
    .local v2, dRow:I
    iget v8, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    iget v11, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    sub-int v1, v8, v11

    .line 547
    .local v1, dColumn:I
    iget v5, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    .line 548
    .local v5, fillInRow:I
    iget v3, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    .line 550
    .local v3, fillInColumn:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 551
    iget v11, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    if-lez v2, :cond_6

    move v8, v9

    :goto_0
    add-int v5, v11, v8

    .line 554
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_2

    .line 555
    iget v8, v6, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    if-lez v1, :cond_1

    move v10, v9

    :cond_1
    add-int v3, v8, v10

    .line 558
    :cond_2
    invoke-static {v5, v3}, Lcom/oppo/widget/OppoLockPatternView$Cell;->of(II)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v4

    .line 561
    .end local v1           #dColumn:I
    .end local v2           #dRow:I
    .end local v3           #fillInColumn:I
    .end local v5           #fillInRow:I
    .end local v6           #lastCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_3
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    iget v10, v4, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    aget-object v8, v8, v10

    iget v10, v4, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    aget-boolean v8, v8, v10

    if-nez v8, :cond_4

    .line 563
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoLockPatternView;->addCellToPattern(Lcom/oppo/widget/OppoLockPatternView$Cell;)V

    .line 565
    :cond_4
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->addCellToPattern(Lcom/oppo/widget/OppoLockPatternView$Cell;)V

    .line 566
    iget-boolean v8, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    if-eqz v8, :cond_5

    .line 567
    const/4 v8, 0x3

    invoke-virtual {p0, v9, v8}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 573
    .end local v0           #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v4           #fillInGapCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v7           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    :cond_5
    :goto_1
    return-object v0

    .restart local v0       #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v1       #dColumn:I
    .restart local v2       #dRow:I
    .restart local v3       #fillInColumn:I
    .restart local v4       #fillInGapCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v5       #fillInRow:I
    .restart local v6       #lastCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v7       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    :cond_6
    move v8, v10

    .line 551
    goto :goto_0

    .line 573
    .end local v1           #dColumn:I
    .end local v2           #dRow:I
    .end local v3           #fillInColumn:I
    .end local v4           #fillInGapCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v5           #fillInRow:I
    .end local v6           #lastCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v7           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawArrow(Landroid/graphics/Canvas;FFLcom/oppo/widget/OppoLockPatternView$Cell;Lcom/oppo/widget/OppoLockPatternView$Cell;)V
    .locals 21
    .parameter "canvas"
    .parameter "leftX"
    .parameter "topY"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/4 v9, 0x1

    .line 1067
    .local v9, green:Z
    :goto_0
    move-object/from16 v0, p5

    iget v8, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    .line 1068
    .local v8, endRow:I
    move-object/from16 v0, p4

    iget v13, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    .line 1069
    .local v13, startRow:I
    move-object/from16 v0, p5

    iget v7, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    .line 1070
    .local v7, endColumn:I
    move-object/from16 v0, p4

    iget v12, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    .line 1073
    .local v12, startColumn:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v10, v17, 0x2

    .line 1074
    .local v10, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v11, v17, 0x2

    .line 1079
    .local v11, offsetY:I
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 1080
    .local v4, arrow:Landroid/graphics/Bitmap;
    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    .line 1081
    .local v6, cellWidth:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    .line 1084
    .local v5, cellHeight:I
    sub-int v17, v8, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    sub-int v19, v7, v12

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v16, v0

    .line 1086
    .local v16, theta:F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x42b4

    add-float v3, v17, v18

    .line 1089
    .local v3, angle:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x3f80

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 1090
    .local v14, sx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x3f80

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 1091
    .local v15, sy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    add-float v18, v18, p2

    int-to-float v0, v11

    move/from16 v19, v0

    add-float v19, v19, p3

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    int-to-float v0, v6

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    int-to-float v0, v5

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    sub-int v18, v6, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1098
    return-void

    .line 1065
    .end local v3           #angle:F
    .end local v4           #arrow:Landroid/graphics/Bitmap;
    .end local v5           #cellHeight:I
    .end local v6           #cellWidth:I
    .end local v7           #endColumn:I
    .end local v8           #endRow:I
    .end local v9           #green:Z
    .end local v10           #offsetX:I
    .end local v11           #offsetY:I
    .end local v12           #startColumn:I
    .end local v13           #startRow:I
    .end local v14           #sx:F
    .end local v15           #sy:F
    .end local v16           #theta:F
    :cond_0
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1079
    .restart local v7       #endColumn:I
    .restart local v8       #endRow:I
    .restart local v9       #green:Z
    .restart local v10       #offsetX:I
    .restart local v11       #offsetY:I
    .restart local v12       #startColumn:I
    .restart local v13       #startRow:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    goto/16 :goto_1
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZ)V
    .locals 12
    .parameter "canvas"
    .parameter "leftX"
    .parameter "topY"
    .parameter "partOfPattern"

    .prologue
    .line 1115
    if-eqz p4, :cond_0

    iget-boolean v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v10, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-eq v9, v10, :cond_1

    .line 1117
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 1156
    .local v3, outerCircle:Landroid/graphics/Bitmap;
    :goto_0
    iget v8, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    .line 1157
    .local v8, width:I
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    .line 1159
    .local v0, height:I
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    .line 1160
    .local v5, squareWidth:F
    iget v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    .line 1162
    .local v4, squareHeight:F
    int-to-float v9, v8

    sub-float v9, v5, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    float-to-int v1, v9

    .line 1163
    .local v1, offsetX:I
    int-to-float v9, v0

    sub-float v9, v4, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    float-to-int v2, v9

    .line 1166
    .local v2, offsetY:I
    iget v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    iget v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x3f80

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1167
    .local v6, sx:F
    iget v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    iget v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x3f80

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1169
    .local v7, sy:F
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v10, p2, v1

    int-to-float v10, v10

    add-int v11, p3, v2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1170
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget v11, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1171
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v6, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1172
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget v11, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapHeight:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1174
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1181
    return-void

    .line 1124
    .end local v0           #height:I
    .end local v1           #offsetX:I
    .end local v2           #offsetY:I
    .end local v3           #outerCircle:Landroid/graphics/Bitmap;
    .end local v4           #squareHeight:F
    .end local v5           #squareWidth:F
    .end local v6           #sx:F
    .end local v7           #sy:F
    .end local v8           #width:I
    :cond_1
    iget-boolean v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    if-eqz v9, :cond_2

    .line 1126
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .restart local v3       #outerCircle:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 1133
    .end local v3           #outerCircle:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v10, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v9, v10, :cond_3

    .line 1135
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .restart local v3       #outerCircle:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 1142
    .end local v3           #outerCircle:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v10, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-eq v9, v10, :cond_4

    iget-object v9, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v10, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v9, v10, :cond_5

    .line 1145
    :cond_4
    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .restart local v3       #outerCircle:Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 1153
    .end local v3           #outerCircle:Landroid/graphics/Bitmap;
    :cond_5
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown display mode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resId"

    .prologue
    .line 310
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .parameter "column"

    .prologue
    .line 922
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3
    .parameter "row"

    .prologue
    .line 926
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getColumnHit(F)I
    .locals 8
    .parameter "x"

    .prologue
    .line 629
    iget v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    .line 630
    .local v4, squareWidth:F
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mHitFactor:F

    mul-float v1, v4, v5

    .line 632
    .local v1, hitSize:F
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 633
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 635
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    .line 636
    .local v0, hitLeft:F
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_0

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 640
    .end local v0           #hitLeft:F
    .end local v2           #i:I
    :goto_1
    return v2

    .line 633
    .restart local v0       #hitLeft:F
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 640
    .end local v0           #hitLeft:F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getRowHit(F)I
    .locals 8
    .parameter "y"

    .prologue
    .line 608
    iget v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    .line 609
    .local v4, squareHeight:F
    iget v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mHitFactor:F

    mul-float v0, v4, v5

    .line 611
    .local v0, hitSize:F
    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 612
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 614
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    .line 615
    .local v1, hitTop:F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_0

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 619
    .end local v1           #hitTop:F
    .end local v2           #i:I
    :goto_1
    return v2

    .line 612
    .restart local v1       #hitTop:F
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 619
    .end local v1           #hitTop:F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/high16 v8, 0x4000

    .line 889
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->resetPattern()V

    .line 890
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 891
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 892
    .local v6, y:F
    invoke-direct {p0, v5, v6}, Lcom/oppo/widget/OppoLockPatternView;->detectAndAddHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v1

    .line 893
    .local v1, hitCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    if-eqz v1, :cond_1

    .line 894
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 895
    sget-object v7, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    iput-object v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 896
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternStarted()V

    .line 901
    :goto_0
    if-eqz v1, :cond_0

    .line 902
    iget v7, v1, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 903
    .local v2, startX:F
    iget v7, v1, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v3

    .line 905
    .local v3, startY:F
    iget v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    div-float v4, v7, v8

    .line 906
    .local v4, widthOffset:F
    iget v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    div-float v0, v7, v8

    .line 908
    .local v0, heightOffset:F
    sub-float v7, v2, v4

    float-to-int v7, v7

    sub-float v8, v3, v0

    float-to-int v8, v8

    add-float v9, v2, v4

    float-to-int v9, v9

    add-float v10, v3, v0

    float-to-int v10, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Landroid/view/View;->invalidate(IIII)V

    .line 911
    .end local v0           #heightOffset:F
    .end local v2           #startX:F
    .end local v3           #startY:F
    .end local v4           #widthOffset:F
    :cond_0
    iput v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 912
    iput v6, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 919
    return-void

    .line 898
    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 899
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternCleared()V

    goto :goto_0
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 31
    .parameter "event"

    .prologue
    .line 698
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .line 699
    .local v8, historySize:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    add-int/lit8 v27, v8, 0x1

    move/from16 v0, v27

    if-ge v10, v0, :cond_11

    .line 700
    if-ge v10, v8, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v25

    .line 701
    .local v25, x:F
    :goto_1
    if-ge v10, v8, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v26

    .line 702
    .local v26, y:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 703
    .local v18, patternSizePreHitDetect:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/oppo/widget/OppoLockPatternView;->detectAndAddHit(FF)Lcom/oppo/widget/OppoLockPatternView$Cell;

    move-result-object v9

    .line 704
    .local v9, hitCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 705
    .local v17, patternSize:I
    if-eqz v9, :cond_0

    const/16 v27, 0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 706
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 707
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternStarted()V

    .line 710
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    move/from16 v27, v0

    sub-float v27, v25, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 711
    .local v5, dx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    move/from16 v27, v0

    sub-float v27, v26, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 718
    .local v6, dy:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 719
    .local v14, oldX:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 724
    .local v15, oldY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 726
    .local v16, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oppo/widget/OppoLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 728
    .local v11, invalidateRect:Landroid/graphics/Rect;
    add-float v27, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v28, v0

    const v29, 0x3c23d70a

    mul-float v28, v28, v29

    cmpl-float v27, v27, v28

    if-lez v27, :cond_d

    .line 729
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 730
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 732
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    if-lez v17, :cond_c

    .line 733
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mDiameterFactor:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    const/high16 v28, 0x3f00

    mul-float v19, v27, v28

    .line 735
    .local v19, radius:F
    add-int/lit8 v27, v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 737
    .local v12, lastCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v0, v12, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .line 738
    .local v21, startX:F
    iget v0, v12, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v22

    .line 740
    .local v22, startY:F
    cmpg-float v27, v21, v25

    if-gez v27, :cond_5

    .line 741
    move/from16 v13, v21

    .line 742
    .local v13, left:F
    move/from16 v20, v25

    .line 748
    .local v20, right:F
    :goto_3
    cmpg-float v27, v22, v26

    if-gez v27, :cond_6

    .line 749
    move/from16 v23, v22

    .line 750
    .local v23, top:F
    move/from16 v4, v26

    .line 757
    .local v4, bottom:F
    :goto_4
    sub-float v27, v13, v19

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v19

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v19

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v19

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 760
    cmpg-float v27, v21, v14

    if-gez v27, :cond_7

    .line 761
    move/from16 v13, v21

    .line 762
    move/from16 v20, v14

    .line 768
    :goto_5
    cmpg-float v27, v22, v15

    if-gez v27, :cond_8

    .line 769
    move/from16 v23, v22

    .line 770
    move v4, v15

    .line 777
    :goto_6
    sub-float v27, v13, v19

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v19

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v19

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v19

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 781
    if-eqz v9, :cond_1

    .line 782
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .line 783
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v22

    .line 785
    const/16 v27, 0x2

    move/from16 v0, v17

    move/from16 v1, v27

    if-lt v0, v1, :cond_b

    .line 787
    add-int/lit8 v27, v17, -0x1

    sub-int v28, v17, v18

    sub-int v27, v27, v28

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #hitCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    check-cast v9, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 789
    .restart local v9       #hitCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 790
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 792
    cmpg-float v27, v21, v14

    if-gez v27, :cond_9

    .line 793
    move/from16 v13, v21

    .line 794
    move/from16 v20, v14

    .line 800
    :goto_7
    cmpg-float v27, v22, v15

    if-gez v27, :cond_a

    .line 801
    move/from16 v23, v22

    .line 802
    move v4, v15

    .line 812
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v24, v27, v28

    .line 813
    .local v24, widthOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v7, v27, v28

    .line 815
    .local v7, heightOffset:F
    sub-float v27, v13, v24

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v7

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v24

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v7

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 819
    .end local v7           #heightOffset:F
    .end local v24           #widthOffset:F
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 699
    .end local v4           #bottom:F
    .end local v12           #lastCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v13           #left:F
    .end local v19           #radius:F
    .end local v20           #right:F
    .end local v21           #startX:F
    .end local v22           #startY:F
    .end local v23           #top:F
    :cond_2
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 700
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v9           #hitCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v11           #invalidateRect:Landroid/graphics/Rect;
    .end local v14           #oldX:F
    .end local v15           #oldY:F
    .end local v16           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    .end local v17           #patternSize:I
    .end local v18           #patternSizePreHitDetect:I
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    goto/16 :goto_1

    .line 701
    .restart local v25       #x:F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    goto/16 :goto_2

    .line 744
    .restart local v5       #dx:F
    .restart local v6       #dy:F
    .restart local v9       #hitCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v11       #invalidateRect:Landroid/graphics/Rect;
    .restart local v12       #lastCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v14       #oldX:F
    .restart local v15       #oldY:F
    .restart local v16       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    .restart local v17       #patternSize:I
    .restart local v18       #patternSizePreHitDetect:I
    .restart local v19       #radius:F
    .restart local v21       #startX:F
    .restart local v22       #startY:F
    .restart local v26       #y:F
    :cond_5
    move/from16 v13, v25

    .line 745
    .restart local v13       #left:F
    move/from16 v20, v21

    .restart local v20       #right:F
    goto/16 :goto_3

    .line 752
    :cond_6
    move/from16 v23, v26

    .line 753
    .restart local v23       #top:F
    move/from16 v4, v22

    .restart local v4       #bottom:F
    goto/16 :goto_4

    .line 764
    :cond_7
    move v13, v14

    .line 765
    move/from16 v20, v21

    goto/16 :goto_5

    .line 772
    :cond_8
    move/from16 v23, v15

    .line 773
    move/from16 v4, v22

    goto/16 :goto_6

    .line 796
    :cond_9
    move v13, v14

    .line 797
    move/from16 v20, v21

    goto :goto_7

    .line 804
    :cond_a
    move/from16 v23, v15

    .line 805
    move/from16 v4, v22

    goto :goto_8

    .line 808
    :cond_b
    move/from16 v20, v21

    move/from16 v13, v21

    .line 809
    move/from16 v4, v22

    move/from16 v23, v22

    goto :goto_8

    .line 821
    .end local v4           #bottom:F
    .end local v12           #lastCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v13           #left:F
    .end local v19           #radius:F
    .end local v20           #right:F
    .end local v21           #startX:F
    .end local v22           #startY:F
    .end local v23           #top:F
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_9

    .line 825
    :cond_d
    if-eqz v9, :cond_2

    .line 826
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .line 827
    .restart local v21       #startX:F
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v22

    .line 829
    .restart local v22       #startY:F
    const/16 v27, 0x2

    move/from16 v0, v17

    move/from16 v1, v27

    if-lt v0, v1, :cond_10

    .line 831
    add-int/lit8 v27, v17, -0x1

    sub-int v28, v17, v18

    sub-int v27, v27, v28

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #hitCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    check-cast v9, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 833
    .restart local v9       #hitCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 834
    iget v0, v9, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 836
    cmpg-float v27, v21, v14

    if-gez v27, :cond_e

    .line 837
    move/from16 v13, v21

    .line 838
    .restart local v13       #left:F
    move/from16 v20, v14

    .line 844
    .restart local v20       #right:F
    :goto_a
    cmpg-float v27, v22, v15

    if-gez v27, :cond_f

    .line 845
    move/from16 v23, v22

    .line 846
    .restart local v23       #top:F
    move v4, v15

    .line 856
    .restart local v4       #bottom:F
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v24, v27, v28

    .line 857
    .restart local v24       #widthOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v7, v27, v28

    .line 859
    .restart local v7       #heightOffset:F
    sub-float v27, v13, v24

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v7

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v24

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v7

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 861
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_9

    .line 840
    .end local v4           #bottom:F
    .end local v7           #heightOffset:F
    .end local v13           #left:F
    .end local v20           #right:F
    .end local v23           #top:F
    .end local v24           #widthOffset:F
    :cond_e
    move v13, v14

    .line 841
    .restart local v13       #left:F
    move/from16 v20, v21

    .restart local v20       #right:F
    goto :goto_a

    .line 848
    :cond_f
    move/from16 v23, v15

    .line 849
    .restart local v23       #top:F
    move/from16 v4, v22

    .restart local v4       #bottom:F
    goto :goto_b

    .line 852
    .end local v4           #bottom:F
    .end local v13           #left:F
    .end local v20           #right:F
    .end local v23           #top:F
    :cond_10
    move/from16 v20, v21

    .restart local v20       #right:F
    move/from16 v13, v21

    .line 853
    .restart local v13       #left:F
    move/from16 v4, v22

    .restart local v4       #bottom:F
    move/from16 v23, v22

    .restart local v23       #top:F
    goto :goto_b

    .line 865
    .end local v4           #bottom:F
    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v9           #hitCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v11           #invalidateRect:Landroid/graphics/Rect;
    .end local v13           #left:F
    .end local v14           #oldX:F
    .end local v15           #oldY:F
    .end local v16           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    .end local v17           #patternSize:I
    .end local v18           #patternSizePreHitDetect:I
    .end local v20           #right:F
    .end local v21           #startX:F
    .end local v22           #startY:F
    .end local v23           #top:F
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_11
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 875
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 877
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternDetected()V

    .line 878
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 886
    :cond_0
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 400
    :cond_0
    const v0, 0xc04045b

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->sendAccessEvent(I)V

    .line 401
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;->onPatternCleared()V

    .line 421
    :cond_0
    const v0, 0xc04045e

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->sendAccessEvent(I)V

    .line 422
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 414
    :cond_0
    const v0, 0xc04045d

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->sendAccessEvent(I)V

    .line 415
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;->onPatternStart()V

    .line 407
    :cond_0
    const v0, 0xc04045c

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoLockPatternView;->sendAccessEvent(I)V

    .line 408
    return-void
.end method

.method private resetPattern()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 436
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->clearPatternDrawLookup()V

    .line 437
    sget-object v0, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 438
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 439
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 479
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 488
    move v0, v1

    .line 490
    :goto_0
    return v0

    .line 481
    :sswitch_0
    move v0, p2

    .line 482
    goto :goto_0

    .line 484
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 485
    goto :goto_0

    .line 479
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAccessEvent(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 868
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 869
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 870
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 871
    return-void
.end method


# virtual methods
.method public clearPattern()V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->resetPattern()V

    .line 429
    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    .line 458
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    .line 465
    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 37
    .parameter "canvas"

    .prologue
    .line 931
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v4, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v3, v4, :cond_0

    .line 932
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v4, 0x66

    const/16 v34, 0xff

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 937
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    .line 938
    .local v28, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 939
    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    .line 941
    .local v15, drawLookup:[[Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v4, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v3, v4, :cond_3

    .line 946
    add-int/lit8 v3, v12, 0x1

    mul-int/lit16 v0, v3, 0x2bc

    move/from16 v25, v0

    .line 947
    .local v25, oneCycle:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mAnimatingPeriodStart:J

    move-wide/from16 v34, v0

    sub-long v3, v3, v34

    long-to-int v3, v3

    rem-int v31, v3, v25

    .line 949
    .local v31, spotInCycle:I
    move/from16 v0, v31

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v23, v0

    .line 951
    .local v23, numCircles:I
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoLockPatternView;->clearPatternDrawLookup()V

    .line 952
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 953
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 954
    .local v7, cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    invoke-virtual {v7}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v3, v15, v3

    invoke-virtual {v7}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v4

    const/16 v34, 0x1

    aput-boolean v34, v3, v4

    .line 952
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 934
    .end local v7           #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v12           #count:I
    .end local v15           #drawLookup:[[Z
    .end local v19           #i:I
    .end local v23           #numCircles:I
    .end local v25           #oneCycle:I
    .end local v28           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    .end local v31           #spotInCycle:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v4, 0x4d

    const/16 v34, 0xff

    const/16 v35, 0xff

    const/16 v36, 0xff

    move/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 959
    .restart local v12       #count:I
    .restart local v15       #drawLookup:[[Z
    .restart local v19       #i:I
    .restart local v23       #numCircles:I
    .restart local v25       #oneCycle:I
    .restart local v28       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    .restart local v31       #spotInCycle:I
    :cond_1
    if-lez v23, :cond_4

    move/from16 v0, v23

    if-ge v0, v12, :cond_4

    const/16 v21, 0x1

    .line 961
    .local v21, needToUpdateInProgressPoint:Z
    :goto_2
    if-eqz v21, :cond_2

    .line 962
    move/from16 v0, v31

    rem-int/lit16 v3, v0, 0x2bc

    int-to-float v3, v3

    const/high16 v4, 0x442f

    div-float v29, v3, v4

    .line 965
    .local v29, percentageOfNextCircle:F
    add-int/lit8 v3, v23, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 966
    .local v13, currentCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v3, v13, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 967
    .local v10, centerX:F
    iget v3, v13, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v11

    .line 969
    .local v11, centerY:F
    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 970
    .local v22, nextCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    move-object/from16 v0, v22

    iget v3, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v3

    sub-float/2addr v3, v10

    mul-float v17, v29, v3

    .line 972
    .local v17, dx:F
    move-object/from16 v0, v22

    iget v3, v0, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v3

    sub-float/2addr v3, v11

    mul-float v18, v29, v3

    .line 974
    .local v18, dy:F
    add-float v3, v10, v17

    move-object/from16 v0, p0

    iput v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 975
    add-float v3, v11, v18

    move-object/from16 v0, p0

    iput v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 978
    .end local v10           #centerX:F
    .end local v11           #centerY:F
    .end local v13           #currentCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v17           #dx:F
    .end local v18           #dy:F
    .end local v22           #nextCell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v29           #percentageOfNextCircle:F
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 981
    .end local v19           #i:I
    .end local v21           #needToUpdateInProgressPoint:Z
    .end local v23           #numCircles:I
    .end local v25           #oneCycle:I
    .end local v31           #spotInCycle:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    move/from16 v33, v0

    .line 982
    .local v33, squareWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    move/from16 v32, v0

    .line 984
    .local v32, squareHeight:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mDiameterFactor:F

    mul-float v3, v3, v33

    const/high16 v4, 0x3f00

    mul-float v30, v3, v4

    .line 985
    .local v30, radius:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 987
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 988
    .local v14, currentPath:Landroid/graphics/Path;
    invoke-virtual {v14}, Landroid/graphics/Path;->rewind()V

    .line 991
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v27, v0

    .line 992
    .local v27, paddingTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v26, v0

    .line 994
    .local v26, paddingLeft:I
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_3
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ge v0, v3, :cond_6

    .line 995
    move/from16 v0, v27

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v4, v0

    mul-float v4, v4, v32

    add-float v6, v3, v4

    .line 997
    .local v6, topY:F
    const/16 v20, 0x0

    .local v20, j:I
    :goto_4
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ge v0, v3, :cond_5

    .line 998
    move/from16 v0, v26

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    mul-float v4, v4, v33

    add-float v5, v3, v4

    .line 999
    .local v5, leftX:F
    float-to-int v3, v5

    float-to-int v4, v6

    aget-object v34, v15, v19

    aget-boolean v34, v34, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/oppo/widget/OppoLockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    .line 997
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 959
    .end local v5           #leftX:F
    .end local v6           #topY:F
    .end local v14           #currentPath:Landroid/graphics/Path;
    .end local v20           #j:I
    .end local v26           #paddingLeft:I
    .end local v27           #paddingTop:I
    .end local v30           #radius:F
    .end local v32           #squareHeight:F
    .end local v33           #squareWidth:F
    .restart local v23       #numCircles:I
    .restart local v25       #oneCycle:I
    .restart local v31       #spotInCycle:I
    :cond_4
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 994
    .end local v23           #numCircles:I
    .end local v25           #oneCycle:I
    .end local v31           #spotInCycle:I
    .restart local v6       #topY:F
    .restart local v14       #currentPath:Landroid/graphics/Path;
    .restart local v20       #j:I
    .restart local v26       #paddingLeft:I
    .restart local v27       #paddingTop:I
    .restart local v30       #radius:F
    .restart local v32       #squareHeight:F
    .restart local v33       #squareWidth:F
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 1007
    .end local v6           #topY:F
    .end local v20           #j:I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v4, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Wrong:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v3, v4, :cond_d

    :cond_7
    const/16 v16, 0x1

    .line 1011
    .local v16, drawPath:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_e

    const/16 v24, 0x1

    .line 1012
    .local v24, oldFlag:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1013
    if-eqz v16, :cond_8

    .line 1014
    const/16 v19, 0x0

    :goto_7
    add-int/lit8 v3, v12, -0x1

    move/from16 v0, v19

    if-ge v0, v3, :cond_8

    .line 1015
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1016
    .restart local v7       #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1021
    .local v8, next:Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v3, v8, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    aget-object v3, v15, v3

    iget v4, v8, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_f

    .line 1032
    .end local v7           #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .end local v8           #next:Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_8
    if-eqz v16, :cond_c

    .line 1033
    const/4 v9, 0x0

    .line 1034
    .local v9, anyCircles:Z
    const/16 v19, 0x0

    :goto_8
    move/from16 v0, v19

    if-ge v0, v12, :cond_9

    .line 1035
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 1040
    .restart local v7       #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget v3, v7, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    aget-object v3, v15, v3

    iget v4, v7, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_10

    .line 1055
    .end local v7           #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    sget-object v4, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne v3, v4, :cond_b

    :cond_a
    if-eqz v9, :cond_b

    .line 1056
    move-object/from16 v0, p0

    iget v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    invoke-virtual {v14, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1058
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1061
    .end local v9           #anyCircles:Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oppo/widget/OppoLockPatternView;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1062
    return-void

    .line 1007
    .end local v16           #drawPath:Z
    .end local v24           #oldFlag:Z
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 1011
    .restart local v16       #drawPath:Z
    :cond_e
    const/16 v24, 0x0

    goto/16 :goto_6

    .line 1025
    .restart local v7       #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v8       #next:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v24       #oldFlag:Z
    :cond_f
    move/from16 v0, v26

    int-to-float v3, v0

    iget v4, v7, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    int-to-float v4, v4

    mul-float v4, v4, v33

    add-float v5, v3, v4

    .line 1026
    .restart local v5       #leftX:F
    move/from16 v0, v27

    int-to-float v3, v0

    iget v4, v7, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    int-to-float v4, v4

    mul-float v4, v4, v32

    add-float v6, v3, v4

    .restart local v6       #topY:F
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 1028
    invoke-direct/range {v3 .. v8}, Lcom/oppo/widget/OppoLockPatternView;->drawArrow(Landroid/graphics/Canvas;FFLcom/oppo/widget/OppoLockPatternView$Cell;Lcom/oppo/widget/OppoLockPatternView$Cell;)V

    .line 1014
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_7

    .line 1043
    .end local v5           #leftX:F
    .end local v6           #topY:F
    .end local v8           #next:Lcom/oppo/widget/OppoLockPatternView$Cell;
    .restart local v9       #anyCircles:Z
    :cond_10
    const/4 v9, 0x1

    .line 1045
    iget v3, v7, Lcom/oppo/widget/OppoLockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .line 1046
    .restart local v10       #centerX:F
    iget v3, v7, Lcom/oppo/widget/OppoLockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v11

    .line 1047
    .restart local v11       #centerY:F
    if-nez v19, :cond_11

    .line 1048
    invoke-virtual {v14, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1034
    :goto_9
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_8

    .line 1050
    :cond_11
    invoke-virtual {v14, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_9
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 645
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 647
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 658
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 659
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 661
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 649
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 652
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 655
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 508
    .local v1, minimumWidth:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoLockPatternView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 509
    .local v0, minimumHeight:I
    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoLockPatternView;->resolveMeasured(II)I

    move-result v3

    .line 510
    .local v3, viewWidth:I
    invoke-direct {p0, p2, v0}, Lcom/oppo/widget/OppoLockPatternView;->resolveMeasured(II)I

    move-result v2

    .line 512
    .local v2, viewHeight:I
    iget v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_0

    .line 524
    :goto_0
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 525
    return-void

    .line 514
    :pswitch_0
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    .line 515
    goto :goto_0

    .line 517
    :pswitch_1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 518
    goto :goto_0

    .line 520
    :pswitch_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1192
    move-object v0, p1

    check-cast v0, Lcom/oppo/widget/OppoLockPatternView$SavedState;

    .line 1193
    .local v0, ss:Lcom/oppo/widget/OppoLockPatternView$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1194
    sget-object v1, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Correct:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oppo/widget/OppoLockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oppo/widget/OppoLockPatternView;->setPattern(Lcom/oppo/widget/OppoLockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1196
    invoke-static {}, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->values()[Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 1197
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    .line 1198
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    .line 1199
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    .line 1200
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 1185
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1186
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/oppo/widget/OppoLockPatternView$SavedState;

    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/oppo/widget/OppoLockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/oppo/widget/OppoLockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/oppo/widget/OppoLockPatternView$1;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v4, 0x4040

    .line 469
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v2, v3

    .line 470
    .local v1, width:I
    int-to-float v2, v1

    div-float/2addr v2, v4

    iput v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareWidth:F

    .line 472
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v2, v3

    .line 473
    .local v0, height:I
    int-to-float v2, v0

    div-float/2addr v2, v4

    iput v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mSquareHeight:F

    .line 474
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 666
    iget-boolean v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mInputEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 692
    :goto_0
    return v0

    .line 670
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 692
    goto :goto_0

    .line 672
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 675
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 678
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 681
    :pswitch_3
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->resetPattern()V

    .line 682
    iput-boolean v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternInProgress:Z

    .line 683
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->notifyPatternCleared()V

    goto :goto_0

    .line 670
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDisplayMode(Lcom/oppo/widget/OppoLockPatternView$DisplayMode;)V
    .locals 3
    .parameter "displayMode"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDisplayMode:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    .line 382
    sget-object v1, Lcom/oppo/widget/OppoLockPatternView$DisplayMode;->Animate:Lcom/oppo/widget/OppoLockPatternView$DisplayMode;

    if-ne p1, v1, :cond_1

    .line 383
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 384
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 387
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mAnimatingPeriodStart:J

    .line 388
    iget-object v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 389
    .local v0, first:Lcom/oppo/widget/OppoLockPatternView$Cell;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressX:F

    .line 390
    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoLockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInProgressY:F

    .line 391
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->clearPatternDrawLookup()V

    .line 393
    .end local v0           #first:Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 394
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .parameter "inStealthMode"

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mInStealthMode:Z

    .line 335
    return-void
.end method

.method public setOnPatternListener(Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;)V
    .locals 0
    .parameter "onPatternListener"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mOnPatternListener:Lcom/oppo/widget/OppoLockPatternView$OnPatternListener;

    .line 354
    return-void
.end method

.method public setPattern(Lcom/oppo/widget/OppoLockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .parameter "displayMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/widget/OppoLockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoLockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p2, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoLockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 364
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 365
    invoke-direct {p0}, Lcom/oppo/widget/OppoLockPatternView;->clearPatternDrawLookup()V

    .line 366
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoLockPatternView$Cell;

    .line 367
    .local v0, cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    iget-object v2, p0, Lcom/oppo/widget/OppoLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/oppo/widget/OppoLockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 370
    .end local v0           #cell:Lcom/oppo/widget/OppoLockPatternView$Cell;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoLockPatternView;->setDisplayMode(Lcom/oppo/widget/OppoLockPatternView$DisplayMode;)V

    .line 371
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .parameter "tactileFeedbackEnabled"

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/oppo/widget/OppoLockPatternView;->mEnableHapticFeedback:Z

    .line 345
    return-void
.end method
