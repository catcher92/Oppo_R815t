.class public Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;
.super Landroid/widget/LinearLayout;
.source "OppoOptionMenuBarMajorOperationLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoOptionMenuBarMajorOperationLayout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxScrollDistance:I

.field private mMenuBar:Lcom/oppo/widget/OppoOptionMenuBar;

.field private mStartY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 2
    .parameter "context"
    .parameter "menuBar"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mMenuBar:Lcom/oppo/widget/OppoOptionMenuBar;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mMaxScrollDistance:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mStartY:F

    .line 39
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mMenuBar:Lcom/oppo/widget/OppoOptionMenuBar;

    .line 41
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 42
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 43
    const v0, 0xc09043d

    invoke-static {p1, v0, p0}, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05041d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mMaxScrollDistance:I

    .line 47
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 52
    .local v0, what:I
    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 61
    .local v1, y:F
    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mStartY:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mMaxScrollDistance:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 62
    const/4 v2, 0x1

    .line 64
    :goto_1
    return v2

    .line 54
    .end local v1           #y:F
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mStartY:F

    goto :goto_0

    .line 64
    .restart local v1       #y:F
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 71
    .local v0, action:I
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mMenuBar:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperaionsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mMenuBar:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoOptionMenuBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    :cond_0
    const/4 v2, 0x0

    .line 92
    :goto_0
    return v2

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mMenuBar:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    const/4 v2, 0x1

    goto :goto_0

    .line 78
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 92
    :cond_3
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 82
    .local v1, y:F
    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mStartY:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mMenuBar:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 83
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mMenuBar:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    goto :goto_1

    .line 84
    :cond_4
    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mStartY:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mMenuBar:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 85
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;->mMenuBar:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollUp()V

    goto :goto_1

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
