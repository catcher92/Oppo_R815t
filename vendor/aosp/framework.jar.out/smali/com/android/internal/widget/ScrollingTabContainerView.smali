.class public Lcom/android/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private mAllowCollapse:Z

.field mContentHeight:I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_ACCESS:Landroid/annotation/OppoHook$OppoHookType;
        note = "private : Jianhui.Yu@Plf.Framework.SDK : Modify for oppoStyle Tab"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field mMaxTabWidth:I

.field mSelectedTabIndex:I
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_ACCESS:Landroid/annotation/OppoHook$OppoHookType;
        note = "private : Jianhui.Yu@Plf.Framework.SDK : Modify for oppoStyle Tab"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

.field mTabLayout:Landroid/widget/LinearLayout;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_ACCESS:Landroid/annotation/OppoHook$OppoHookType;
        note = "private : Jianhui.Yu@Plf.Framework.SDK : Modify for oppoStyle Tab"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field protected final mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 85
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 87
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 88
    .local v0, abp:Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 89
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 91
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 92
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    return-void
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    .prologue
    .line 222
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 224
    .local v0, spinner:Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 227
    return-object v0
.end method

.method private createTabLayout()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    .line 212
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102f4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 214
    .local v0, tabLayout:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 215
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 216
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    return-object v0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performCollapse()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 165
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 178
    iput-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return v4

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6
    .parameter "tab"
    .parameter "position"
    .parameter "setSelected"

    .prologue
    const/4 v5, 0x0

    .line 334
    invoke-virtual {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 335
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 337
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 340
    :cond_0
    if-eqz p3, :cond_1

    .line 341
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 343
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 344
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 346
    :cond_2
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 6
    .parameter "tab"
    .parameter "setSelected"

    .prologue
    const/4 v5, 0x0

    .line 319
    invoke-virtual {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 320
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 325
    :cond_0
    if-eqz p2, :cond_1

    .line 326
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 328
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 331
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 267
    .local v0, tabView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 270
    :cond_0
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 277
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 278
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 7
    .parameter "visibility"

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 242
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 245
    :cond_0
    if-nez p1, :cond_2

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAlpha(F)V

    .line 249
    :cond_1
    const-string v1, "alpha"

    new-array v2, v2, [F

    const/high16 v3, 0x3f80

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 250
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 251
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 253
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 254
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 263
    :goto_0
    return-void

    .line 256
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    :cond_2
    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 257
    .restart local v0       #anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 258
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 260
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 261
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .parameter "tab"
    .parameter "forAdapter"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_ACCESS:Landroid/annotation/OppoHook$OppoHookType;
        note = "private : Jianhui.Yu@Plf.Framework.SDK : Modify for oppoStyle Tab"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 302
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    .line 303
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 304
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    :goto_0
    return-object v0

    .line 308
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 310
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    .line 311
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method hookResizeMaxWidth(I)V
    .locals 0
    .parameter "childCount"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "Jianhui.Yu@Plf.Framework.SDK : add for oppoStyle Tab"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 602
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 287
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 237
    .local v0, abp:Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 238
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 239
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 292
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 295
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 381
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    .line 382
    return-void
.end method

.method public onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "Jianhui.Yu@Plf.Framework.SDK : Modify for resize the max tab width"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/high16 v10, 0x4000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 103
    .local v5, widthMode:I
    if-ne v5, v10, :cond_2

    move v2, v6

    .line 104
    .local v2, lockedExpanded:Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 106
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 107
    .local v1, childCount:I
    if-le v1, v6, :cond_4

    if-eq v5, v10, :cond_0

    const/high16 v8, -0x8000

    if-ne v5, v8, :cond_4

    .line 109
    :cond_0
    const/4 v8, 0x2

    if-le v1, v8, :cond_3

    .line 110
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3ecccccd

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 114
    :goto_1
    iget v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 122
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->hookResizeMaxWidth(I)V

    .line 125
    iget v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 127
    if-nez v2, :cond_5

    iget-boolean v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v8, :cond_5

    move v0, v6

    .line 129
    .local v0, canCollapse:Z
    :goto_3
    if-eqz v0, :cond_7

    .line 131
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 132
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    if-le v6, v7, :cond_6

    .line 133
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performCollapse()V

    .line 141
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v4

    .line 142
    .local v4, oldWidth:I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    .line 145
    .local v3, newWidth:I
    if-eqz v2, :cond_1

    if-eq v4, v3, :cond_1

    .line 147
    iget v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 149
    :cond_1
    return-void

    .end local v0           #canCollapse:Z
    .end local v1           #childCount:I
    .end local v2           #lockedExpanded:Z
    .end local v3           #newWidth:I
    .end local v4           #oldWidth:I
    :cond_2
    move v2, v7

    .line 103
    goto :goto_0

    .line 112
    .restart local v1       #childCount:I
    .restart local v2       #lockedExpanded:Z
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 116
    :cond_4
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    :cond_5
    move v0, v7

    .line 127
    goto :goto_3

    .line 135
    .restart local v0       #canCollapse:Z
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 138
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 370
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 373
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 376
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 360
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 363
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 366
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .parameter "allowCollapse"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 162
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .parameter "contentHeight"

    .prologue
    .line 207
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 209
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 194
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 195
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 196
    .local v3, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 197
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, child:Landroid/view/View;
    if-ne v1, p1, :cond_1

    const/4 v2, 0x1

    .line 199
    .local v2, isSelected:Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 200
    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 196
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v2           #isSelected:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 204
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 350
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 353
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 356
    :cond_1
    return-void
.end method
