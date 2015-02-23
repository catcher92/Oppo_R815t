.class public Lcom/oppo/widget/OppoSearchViewAnim;
.super Landroid/widget/LinearLayout;
.source "OppoSearchViewAnim.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;,
        Lcom/oppo/widget/OppoSearchViewAnim$OnClickBtnSearchListener;,
        Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;
    }
.end annotation


# static fields
.field private static final ANIM_SEARCH:I = 0x3eb

.field private static final DEBUG:Z = true

.field private static final HIDE_SEARCH:I = 0x3e9

.field private static final SHOW_SEARCH:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "OppoSearchViewAnim"


# instance fields
.field private isDoActionBarAnim:Z

.field private isShowAnimationEnabled:Z

.field private mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

.field private final mActionBarHideListener:Landroid/animation/Animator$AnimatorListener;

.field private final mActionBarShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mForeground:Landroid/view/View;

.field private mHomeBack:Landroid/widget/ImageView;

.field private mHomeBackMarginRight:I

.field private mHomeBackWidth:I

.field private mOnAnimationListener:Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

.field private mOnClickBtnSearchListener:Lcom/oppo/widget/OppoSearchViewAnim$OnClickBtnSearchListener;

.field private mOnClickHomebackListener:Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;

.field private mOppoSearch:Landroid/view/ViewGroup;

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mSearchAnim:Landroid/widget/ImageView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowActionBarRunnable:Ljava/lang/Runnable;

.field private mShowForegroundListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private mStateSearch:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoSearchViewAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/16 v2, 0x3e9

    iput v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 61
    iput v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    .line 65
    iput-boolean v4, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    .line 66
    iput-boolean v4, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    .line 68
    iput v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingLeft:I

    .line 69
    iput v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingRight:I

    .line 70
    iput v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackMarginRight:I

    .line 72
    new-instance v2, Lcom/oppo/widget/OppoSearchViewAnim$1;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoSearchViewAnim$1;-><init>(Lcom/oppo/widget/OppoSearchViewAnim;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBarHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 87
    new-instance v2, Lcom/oppo/widget/OppoSearchViewAnim$2;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoSearchViewAnim$2;-><init>(Lcom/oppo/widget/OppoSearchViewAnim;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBarShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 355
    new-instance v2, Lcom/oppo/widget/OppoSearchViewAnim$3;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoSearchViewAnim$3;-><init>(Lcom/oppo/widget/OppoSearchViewAnim;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowActionBarRunnable:Ljava/lang/Runnable;

    .line 378
    new-instance v2, Lcom/oppo/widget/OppoSearchViewAnim$4;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoSearchViewAnim$4;-><init>(Lcom/oppo/widget/OppoSearchViewAnim;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 411
    new-instance v2, Lcom/oppo/widget/OppoSearchViewAnim$5;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoSearchViewAnim$5;-><init>(Lcom/oppo/widget/OppoSearchViewAnim;)V

    iput-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowForegroundListener:Landroid/animation/Animator$AnimatorListener;

    .line 114
    const-string v1, "com.android.contacts"

    .line 115
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    const v2, 0xc030015

    invoke-virtual {p1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 119
    :cond_0
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 121
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0xc090443

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc05042d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackMarginRight:I

    .line 125
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchViewAnim;->setupSearchView()V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoSearchViewAnim;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    return v0
.end method

.method static synthetic access$002(Lcom/oppo/widget/OppoSearchViewAnim;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    return p1
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoSearchViewAnim;)Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOnAnimationListener:Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oppo/widget/OppoSearchViewAnim;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoSearchViewAnim;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSearchViewAnim;->setImeVisibility(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoSearchViewAnim;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoSearchViewAnim;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowActionBarRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoSearchViewAnim;)Lcom/android/internal/app/OppoActionBarImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoSearchViewAnim;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    return v0
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoSearchViewAnim;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    return-void
.end method

.method private doHide()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 317
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    if-eq v1, v2, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    const/16 v1, 0x3eb

    iput v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    .line 322
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 323
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 325
    :cond_2
    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    .line 327
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    .line 333
    iget v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingLeft:I

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackMarginRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    sub-int v0, v1, v2

    .line 334
    .local v0, startingX:I
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    const-string v3, "translationX"

    new-array v4, v8, [F

    aput v9, v4, v6

    int-to-float v5, v0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoActionBarImpl;->addWithAnimator(Landroid/animation/Animator;)V

    .line 337
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    const-string v3, "translationX"

    new-array v4, v8, [F

    aput v9, v4, v6

    iget v5, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingRight:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoActionBarImpl;->addWithAnimator(Landroid/animation/Animator;)V

    .line 340
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 341
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 342
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoActionBarImpl;->addWithAnimator(Landroid/animation/Animator;)V

    .line 346
    :cond_3
    const-string v1, "OppoSearchViewAnim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doHide() mActionBar.isShowing() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    invoke-virtual {v3}, Lcom/android/internal/app/ActionBarImpl;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDoActionBarAnim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoSearchViewAnim;->setImeVisibility(Z)V

    .line 350
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowActionBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 342
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private doShow()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 279
    const/16 v1, 0x3e9

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    if-eq v1, v2, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    const/16 v1, 0x3eb

    iput v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    .line 284
    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    .line 285
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    .line 290
    iget v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    if-nez v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    .line 294
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingLeft:I

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackMarginRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBackWidth:I

    sub-int v0, v1, v2

    .line 295
    .local v0, startingX:I
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    const-string v3, "translationX"

    new-array v4, v8, [F

    int-to-float v5, v0

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoActionBarImpl;->addWithAnimator(Landroid/animation/Animator;)V

    .line 298
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    const-string v3, "translationX"

    new-array v4, v8, [F

    iget v5, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingRight:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoActionBarImpl;->addWithAnimator(Landroid/animation/Animator;)V

    .line 300
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_3

    .line 301
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 302
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/OppoActionBarImpl;->addWithAnimator(Landroid/animation/Animator;)V

    .line 307
    :cond_3
    const-string v1, "OppoSearchViewAnim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doShow() mActionBar.isShowing() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    invoke-virtual {v3}, Lcom/android/internal/app/ActionBarImpl;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDoActionBarAnim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl;->hide()V

    goto/16 :goto_0

    .line 303
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private setButtonStyle(Z)V
    .locals 5
    .parameter "isButton"

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 146
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 147
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoSearchViewAnim;->setImeVisibility(Z)V

    .line 152
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 153
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 154
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->onWindowFocusChanged(Z)V

    .line 155
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 165
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 161
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 162
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 163
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v4}, Landroid/widget/SearchView;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 365
    if-eqz p1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 369
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 372
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setupSearchView()V
    .locals 1

    .prologue
    .line 130
    const v0, 0xc020492

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    .line 131
    const v0, 0xc020493

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    .line 132
    const v0, 0xc020494

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    .line 133
    const v0, 0xc020495

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    .line 135
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->setImeVisibility(Z)V

    .line 137
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 138
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mHomeBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    .line 142
    return-void
.end method


# virtual methods
.method public changeButtonStyle()V
    .locals 4

    .prologue
    .line 228
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    monitor-enter v1

    .line 230
    :try_start_0
    const-string v0, "OppoSearchViewAnim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeButtonStyle isShowAnimationEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchViewAnim;->doHide()V

    .line 238
    :goto_0
    monitor-exit v1

    .line 239
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    .line 236
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public changeSearchStyle()V
    .locals 4

    .prologue
    .line 242
    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    monitor-enter v1

    .line 244
    :try_start_0
    const-string v0, "OppoSearchViewAnim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeSearchStyle isShowAnimationEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-boolean v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/oppo/widget/OppoSearchViewAnim;->doShow()V

    .line 252
    :goto_0
    monitor-exit v1

    .line 253
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoSearchViewAnim;->setButtonStyle(Z)V

    .line 250
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSearchView()Landroid/widget/SearchView;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mSearchView:Landroid/widget/SearchView;

    .line 216
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOnClickHomebackListener:Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOnClickHomebackListener:Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;

    invoke-interface {v0}, Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;->onClickHomeback()V

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0xc020493
        :pswitch_0
    .end packed-switch
.end method

.method public setActionBar(Landroid/app/ActionBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 221
    check-cast p1, Lcom/android/internal/app/OppoActionBarImpl;

    .end local p1
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    .line 222
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBarHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/OppoActionBarImpl;->addHideListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 223
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBar:Lcom/android/internal/app/OppoActionBarImpl;

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mActionBarShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/OppoActionBarImpl;->addShowListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 225
    :cond_0
    return-void
.end method

.method public setDoActionBarAnim(Z)V
    .locals 0
    .parameter "isAnim"

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isDoActionBarAnim:Z

    .line 268
    return-void
.end method

.method public setForeground(Landroid/view/View;)V
    .locals 3
    .parameter "foreground"

    .prologue
    const/4 v2, 0x0

    .line 260
    if-eqz p1, :cond_0

    .line 261
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    const/16 v1, 0xa8

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 264
    :cond_0
    return-void
.end method

.method public setOnAnimationListener(Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOnAnimationListener:Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

    .line 210
    return-void
.end method

.method public setOnClickBtnSearchListener(Lcom/oppo/widget/OppoSearchViewAnim$OnClickBtnSearchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOnClickBtnSearchListener:Lcom/oppo/widget/OppoSearchViewAnim$OnClickBtnSearchListener;

    .line 199
    return-void
.end method

.method public setOnClickHomebackListener(Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOnClickHomebackListener:Lcom/oppo/widget/OppoSearchViewAnim$OnClickHomebackListener;

    .line 190
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0
    .parameter "paddingfelt"

    .prologue
    .line 271
    iput p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingLeft:I

    .line 272
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0
    .parameter "paddingright"

    .prologue
    .line 275
    iput p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mPaddingRight:I

    .line 276
    return-void
.end method

.method public setShowAnimationEnabled(Z)V
    .locals 0
    .parameter "isAnime"

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/oppo/widget/OppoSearchViewAnim;->isShowAnimationEnabled:Z

    .line 257
    return-void
.end method

.method public showForeground()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 391
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 393
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 394
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 397
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 398
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 399
    .local v0, anim:Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mOppoSearch:Landroid/view/ViewGroup;

    const-string v3, "translationY"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 401
    .local v1, b:Landroid/animation/AnimatorSet$Builder;
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 402
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x10c0003

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 404
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 405
    iget-object v2, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mShowForegroundListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 406
    iput-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 407
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 409
    .end local v0           #anim:Landroid/animation/AnimatorSet;
    .end local v1           #b:Landroid/animation/AnimatorSet$Builder;
    :cond_1
    return-void

    .line 401
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
