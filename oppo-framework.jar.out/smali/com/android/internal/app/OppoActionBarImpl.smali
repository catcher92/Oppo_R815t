.class public Lcom/android/internal/app/OppoActionBarImpl;
.super Lcom/android/internal/app/ActionBarImpl;
.source "OppoActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;
    }
.end annotation


# static fields
.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoActionBarImpl"

.field private static final VIEW_ACTION:I = 0x3

.field private static final VIEW_CONTAINER:I = 0x1

.field private static final VIEW_CONTEXT:I = 0x4

.field private static final VIEW_OVERLAY:I = 0x0

.field private static final VIEW_SPLIT:I = 0x5

.field private static final VIEW_TOPVIS:I = 0x2


# instance fields
.field private mActionBarHeight:I

.field private mActionView:Lcom/android/internal/widget/ActionBarView;

.field private final mAllHideListener:Landroid/animation/Animator$AnimatorListener;

.field private final mAllShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mContainerView:Lcom/android/internal/widget/ActionBarContainer;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

.field private mCurWindowVisibility:I

.field private mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

.field private mScreenHeight:I

.field private mScreenLayout:Landroid/view/View;

.field private mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mScreenWidth:I

.field private mShowHideAnimationEnabled:Z

.field private mSplitView:Lcom/android/internal/widget/ActionBarContainer;

.field private final mTopHideListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTopShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mTopVisibilityView:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 216
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl;-><init>(Landroid/app/Activity;)V

    .line 93
    iput v2, p0, Lcom/android/internal/app/OppoActionBarImpl;->mCurWindowVisibility:I

    .line 95
    iput-object v3, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    .line 96
    iput-object v3, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 97
    iput v2, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenWidth:I

    .line 98
    iput v2, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenHeight:I

    .line 99
    iput v2, p0, Lcom/android/internal/app/OppoActionBarImpl;->mActionBarHeight:I

    .line 101
    new-instance v2, Lcom/android/internal/app/OppoActionBarImpl$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/OppoActionBarImpl$1;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    iput-object v2, p0, Lcom/android/internal/app/OppoActionBarImpl;->mAllHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 127
    new-instance v2, Lcom/android/internal/app/OppoActionBarImpl$2;

    invoke-direct {v2, p0}, Lcom/android/internal/app/OppoActionBarImpl$2;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    iput-object v2, p0, Lcom/android/internal/app/OppoActionBarImpl;->mAllShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 152
    new-instance v2, Lcom/android/internal/app/OppoActionBarImpl$3;

    invoke-direct {v2, p0}, Lcom/android/internal/app/OppoActionBarImpl$3;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    iput-object v2, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 161
    new-instance v2, Lcom/android/internal/app/OppoActionBarImpl$4;

    invoke-direct {v2, p0}, Lcom/android/internal/app/OppoActionBarImpl$4;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    iput-object v2, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 217
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 218
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 219
    .local v0, decor:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/internal/app/OppoActionBarImpl;->init(Landroid/view/View;)V

    .line 220
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    .line 223
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl;-><init>(Landroid/app/Dialog;)V

    .line 93
    iput v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mCurWindowVisibility:I

    .line 95
    iput-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    .line 96
    iput-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 97
    iput v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenWidth:I

    .line 98
    iput v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenHeight:I

    .line 99
    iput v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mActionBarHeight:I

    .line 101
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoActionBarImpl$1;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mAllHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 127
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoActionBarImpl$2;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mAllShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 152
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoActionBarImpl$3;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 161
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoActionBarImpl$4;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 227
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/OppoActionBarImpl;->init(Landroid/view/View;)V

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/OppoActionBarContextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/OppoActionBarImpl;Landroid/animation/Animator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/app/OppoActionBarImpl;->setCurrentShowAnim(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/app/OppoActionBarImpl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenWidth:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/app/OppoActionBarImpl;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/app/OppoActionBarImpl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/OppoActionBarImpl;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/OppoActionBarImpl;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/app/OppoActionBarImpl;->resizeScreenLayout(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/app/OppoActionBarImpl;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/OppoActionBarImpl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextDisplayMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/ActionBarOverlayLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/ActionBarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    return-object v0
.end method

.method private changeScreenLayoutHeight()V
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->hookCheckShowingFlags()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/app/OppoActionBarImpl;->resizeScreenLayout(Z)V

    .line 537
    :cond_0
    return-void
.end method

.method private endCurrentShowAnim()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 547
    :cond_0
    return-void
.end method

.method private getTopViewHeight()I
    .locals 2

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 514
    .local v0, topHeight:I
    if-nez v0, :cond_0

    .line 515
    iget v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mActionBarHeight:I

    .line 517
    :cond_0
    return v0
.end method

.method private init(Landroid/view/View;)V
    .locals 1
    .parameter "decor"

    .prologue
    .line 483
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContext:Landroid/content/Context;

    .line 484
    invoke-direct {p0}, Lcom/android/internal/app/OppoActionBarImpl;->initScreenInfo()V

    .line 485
    return-void
.end method

.method private initScreenInfo()V
    .locals 6

    .prologue
    .line 488
    iget-object v4, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 489
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v4, 0x8c

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/OppoActionBarImpl;->mActionBarHeight:I

    .line 490
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 491
    iget-object v4, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 492
    .local v2, parent1:Landroid/view/ViewParent;
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 493
    .local v3, parent2:Landroid/view/ViewParent;
    instance-of v4, v3, Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v4, :cond_1

    .line 494
    const/4 v4, 0x0

    check-cast v4, Landroid/view/View;

    iput-object v4, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    .line 498
    .end local v2           #parent1:Landroid/view/ViewParent;
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 499
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 500
    iget-object v4, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 501
    .local v1, observer:Landroid/view/ViewTreeObserver;
    new-instance v4, Lcom/android/internal/app/OppoActionBarImpl$5;

    invoke-direct {v4, p0}, Lcom/android/internal/app/OppoActionBarImpl$5;-><init>(Lcom/android/internal/app/OppoActionBarImpl;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 510
    .end local v1           #observer:Landroid/view/ViewTreeObserver;
    :cond_0
    return-void

    .line 496
    .restart local v2       #parent1:Landroid/view/ViewParent;
    :cond_1
    check-cast v2, Landroid/view/View;

    .end local v2           #parent1:Landroid/view/ViewParent;
    iput-object v2, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    goto :goto_0
.end method

.method public static newInstance(Landroid/app/Activity;)Lcom/android/internal/app/ActionBarImpl;
    .locals 1
    .parameter "activity"

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoActionBarImpl;-><init>(Landroid/app/Activity;)V

    .line 237
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static newInstance(Landroid/app/Dialog;)Lcom/android/internal/app/ActionBarImpl;
    .locals 1
    .parameter "dialog"

    .prologue
    .line 241
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isOppoStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OppoActionBarImpl;-><init>(Landroid/app/Dialog;)V

    .line 244
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl;-><init>(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method private resizeScreenLayout(Z)V
    .locals 5
    .parameter "change"

    .prologue
    .line 521
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 523
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_1

    .line 524
    iget v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenHeight:I

    invoke-direct {p0}, Lcom/android/internal/app/OppoActionBarImpl;->getTopViewHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 528
    :goto_0
    const/4 v1, 0x1

    const-string v2, "OppoActionBarImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizeScreenLayout : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void

    .line 526
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mScreenLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private setCurrentShowAnim(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animator"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 541
    return-void
.end method


# virtual methods
.method public addAfterAnimator(Landroid/animation/Animator;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addAfterAnimator(Landroid/animation/Animator;)V

    .line 465
    return-void
.end method

.method public addAfterAnimators(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, animList:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addAfterAnimators(Ljava/util/List;)V

    .line 469
    return-void
.end method

.method public addBeforeAnimator(Landroid/animation/Animator;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addBeforeAnimator(Landroid/animation/Animator;)V

    .line 473
    return-void
.end method

.method public addBeforeAnimators(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p1, animList:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addBeforeAnimators(Ljava/util/List;)V

    .line 477
    return-void
.end method

.method public addHideListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addHideListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 453
    return-void
.end method

.method public addShowListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addShowListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 449
    return-void
.end method

.method public addWithAnimator(Landroid/animation/Animator;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addWithAnimator(Landroid/animation/Animator;)V

    .line 457
    return-void
.end method

.method public addWithAnimators(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, animList:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoActionBarContextView;->addWithAnimators(Ljava/util/List;)V

    .line 461
    return-void
.end method

.method public doHide(Z)V
    .locals 12
    .parameter "fromSystem"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 358
    invoke-direct {p0}, Lcom/android/internal/app/OppoActionBarImpl;->endCurrentShowAnim()V

    .line 360
    iget v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mCurWindowVisibility:I

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_0

    if-eqz p1, :cond_4

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/OppoActionBarImpl;->changeScreenLayoutHeight()V

    .line 362
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v11}, Landroid/view/View;->setAlpha(F)V

    .line 363
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 364
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 365
    .local v3, endingY:F
    if-eqz p1, :cond_1

    .line 366
    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 367
    .local v4, topLeft:[I
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 368
    aget v5, v4, v9

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 370
    .end local v4           #topLeft:[I
    :cond_1
    const-string v5, "OppoActionBarImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doHide : endingY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v5, v6}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 372
    .local v0, anim:Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    const-string v6, "translationY"

    new-array v7, v9, [F

    aput v3, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 373
    .local v1, animTop:Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 374
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 375
    .local v2, b:Landroid/animation/AnimatorSet$Builder;
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 376
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    const-string v6, "translationY"

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v8, v7, v10

    aput v3, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 378
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 379
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Landroid/view/View;->setAlpha(F)V

    .line 380
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    const-string v6, "translationY"

    new-array v7, v9, [F

    iget-object v8, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 383
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/OppoActionBarContextView;->playUserAnimators(Landroid/animation/AnimatorSet$Builder;)V

    .line 385
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContext:Landroid/content/Context;

    const v6, 0xc0f0401

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 387
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc0d0414

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 388
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mAllHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 389
    invoke-direct {p0, v0}, Lcom/android/internal/app/OppoActionBarImpl;->setCurrentShowAnim(Landroid/animation/Animator;)V

    .line 390
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 396
    .end local v0           #anim:Landroid/animation/AnimatorSet;
    .end local v1           #animTop:Landroid/animation/Animator;
    .end local v2           #b:Landroid/animation/AnimatorSet$Builder;
    .end local v3           #endingY:F
    :goto_0
    return-void

    .line 392
    :cond_4
    const-string v5, "OppoActionBarImpl"

    const-string v6, "doHide : no translation"

    invoke-static {v9, v5, v6}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v7}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 394
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mAllHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v7}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 366
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public doShow(Z)V
    .locals 12
    .parameter "fromSystem"

    .prologue
    const/4 v11, 0x0

    const/high16 v7, 0x3f80

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 293
    invoke-direct {p0}, Lcom/android/internal/app/OppoActionBarImpl;->endCurrentShowAnim()V

    .line 294
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mCurWindowVisibility:I

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_0

    if-eqz p1, :cond_5

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/OppoActionBarImpl;->changeScreenLayoutHeight()V

    .line 298
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 299
    invoke-direct {p0}, Lcom/android/internal/app/OppoActionBarImpl;->getTopViewHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 300
    .local v3, startingY:F
    if-eqz p1, :cond_1

    .line 301
    const/4 v5, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .line 302
    .local v4, topLeft:[I
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 303
    aget v5, v4, v8

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 305
    .end local v4           #topLeft:[I
    :cond_1
    const-string v5, "OppoActionBarImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doShow : startingY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 307
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 308
    .local v0, anim:Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    const-string v6, "translationY"

    new-array v7, v8, [F

    aput v9, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 309
    .local v1, animTop:Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 310
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 311
    .local v2, b:Landroid/animation/AnimatorSet$Builder;
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 312
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 313
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    const-string v6, "translationY"

    new-array v7, v8, [F

    aput v9, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 315
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextDisplayMode:I

    if-ne v5, v8, :cond_3

    .line 316
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v6, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 317
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 318
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    const-string v6, "translationY"

    new-array v7, v8, [F

    aput v9, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 321
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/OppoActionBarContextView;->playUserAnimators(Landroid/animation/AnimatorSet$Builder;)V

    .line 323
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContext:Landroid/content/Context;

    const v6, 0xc0f0400

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 325
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc0d0414

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 333
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mAllShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 334
    invoke-direct {p0, v0}, Lcom/android/internal/app/OppoActionBarImpl;->setCurrentShowAnim(Landroid/animation/Animator;)V

    .line 335
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 351
    .end local v0           #anim:Landroid/animation/AnimatorSet;
    .end local v1           #animTop:Landroid/animation/Animator;
    .end local v2           #b:Landroid/animation/AnimatorSet$Builder;
    .end local v3           #startingY:F
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_4

    .line 352
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v5}, Landroid/view/View;->requestFitSystemWindows()V

    .line 354
    :cond_4
    return-void

    .line 337
    :cond_5
    const-string v5, "OppoActionBarImpl"

    const-string v6, "doShow : no translation"

    invoke-static {v8, v5, v6}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 339
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 340
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_6

    .line 341
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 343
    :cond_6
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextDisplayMode:I

    if-ne v5, v8, :cond_7

    .line 344
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 345
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 346
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 348
    :cond_7
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v11}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 349
    iget-object v5, p0, Lcom/android/internal/app/OppoActionBarImpl;->mAllShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v11}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 301
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method hookInitViews([Landroid/view/View;)V
    .locals 3
    .parameter "views"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 431
    aget-object v0, p1, v2

    check-cast v0, Lcom/android/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 432
    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    .line 433
    const/4 v0, 0x4

    aget-object v0, p1, v0

    check-cast v0, Lcom/android/internal/widget/OppoActionBarContextView;

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    .line 434
    aget-object v0, p1, v1

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    .line 435
    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    .line 436
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    .line 439
    :cond_0
    const/4 v0, 0x5

    aget-object v0, p1, v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    .line 440
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextDisplayMode:I

    .line 442
    return-void

    :cond_1
    move v0, v2

    .line 440
    goto :goto_0
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 400
    invoke-super {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 401
    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mShowHideAnimationEnabled:Z

    .line 259
    invoke-super {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 260
    return-void
.end method

.method public setWindowVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 252
    iput p1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mCurWindowVisibility:I

    .line 253
    invoke-super {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->setWindowVisibility(I)V

    .line 254
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4
    .parameter "callback"

    .prologue
    const/4 v3, 0x1

    .line 264
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->finish()V

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 269
    new-instance v0, Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;-><init>(Lcom/android/internal/app/OppoActionBarImpl;Landroid/view/ActionMode$Callback;)V

    .line 270
    .local v0, mode:Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;
    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->invalidate()V

    .line 272
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->hookCheckShowingFlags()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/OppoActionBarContextView;->setShowingFlags(Z)V

    .line 273
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/OppoActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 274
    invoke-virtual {p0, v3}, Lcom/android/internal/app/ActionBarImpl;->animateToMode(Z)V

    .line 275
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextDisplayMode:I

    if-ne v1, v3, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Landroid/view/View;->requestFitSystemWindows()V

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/OppoActionBarImpl;->mContextView:Lcom/android/internal/widget/OppoActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 285
    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    .line 288
    .end local v0           #mode:Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;
    :goto_0
    return-object v0

    .restart local v0       #mode:Lcom/android/internal/app/OppoActionBarImpl$OppoActionModeImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateAnimateTab(IFI)V
    .locals 2
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 405
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ActionBarImpl;->updateAnimateTab(IFI)V

    .line 406
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    instance-of v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    check-cast v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->updateAnimateTab(IFI)V

    goto :goto_0
.end method

.method public updateScrollState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 417
    invoke-super {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->updateScrollState(I)V

    .line 418
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    instance-of v0, v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    check-cast v0, Lcom/android/internal/widget/OppoScrollingTabContainerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/OppoScrollingTabContainerView;->updateScrollState(I)V

    goto :goto_0
.end method
