.class public Landroid/widget/OppoFloatPanelView;
.super Landroid/widget/FrameLayout;
.source "OppoFloatPanelView.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBottomOffset:I

.field private mIsArrowUp:Z

.field private mPos:I

.field private mTopOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "OppoFloatPanelView"

    sput-object v0, Landroid/widget/OppoFloatPanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/OppoFloatPanelView;->initArrowOffset(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attributeset"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/OppoFloatPanelView;->initArrowOffset(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private initArrowOffset(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05040c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OppoFloatPanelView;->mTopOffset:I

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OppoFloatPanelView;->mBottomOffset:I

    .line 51
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 69
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 71
    const v7, 0xc02044a

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, arrowUpView:Landroid/view/View;
    const v7, 0xc02044b

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, arrowDownView:Landroid/view/View;
    const v7, 0xc02044c

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 75
    .local v4, panelLinearLayout:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-nez v4, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 81
    const/4 v6, 0x0

    .line 82
    .local v6, top:I
    const/4 v3, 0x0

    .line 84
    .local v3, linearTop:I
    iget-boolean v7, p0, Landroid/widget/OppoFloatPanelView;->mIsArrowUp:Z

    if-eqz v7, :cond_3

    .line 85
    move-object v5, v1

    .line 86
    .local v5, tempView:Landroid/view/View;
    const/4 v6, 0x0

    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/OppoFloatPanelView;->mTopOffset:I

    sub-int v3, v7, v8

    .line 88
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :goto_1
    iget v7, p0, Landroid/widget/OppoFloatPanelView;->mPos:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v2, v7, v8

    .line 97
    .local v2, left:I
    if-ltz v2, :cond_4

    .line 98
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, p4, v7

    if-le v2, v7, :cond_2

    .line 99
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v2, p4, v7

    .line 105
    :cond_2
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v5, v2, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 107
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v4, v7, v3, v8, v9}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_0

    .line 90
    .end local v2           #left:I
    .end local v5           #tempView:Landroid/view/View;
    :cond_3
    const/4 v3, 0x0

    .line 91
    move-object v5, v0

    .line 92
    .restart local v5       #tempView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/OppoFloatPanelView;->mBottomOffset:I

    sub-int v6, v7, v8

    .line 93
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 102
    .restart local v2       #left:I
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public setArrow(Z)V
    .locals 1
    .parameter "isArrowUp"

    .prologue
    .line 54
    iget-boolean v0, p0, Landroid/widget/OppoFloatPanelView;->mIsArrowUp:Z

    if-eq p1, v0, :cond_0

    .line 55
    iput-boolean p1, p0, Landroid/widget/OppoFloatPanelView;->mIsArrowUp:Z

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 58
    :cond_0
    return-void
.end method

.method public setArrowPos(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 61
    iget v0, p0, Landroid/widget/OppoFloatPanelView;->mPos:I

    if-eq p1, v0, :cond_0

    .line 62
    const-string v0, "Panel"

    const-string v1, "setArrowPos"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    iput p1, p0, Landroid/widget/OppoFloatPanelView;->mPos:I

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 66
    :cond_0
    return-void
.end method
