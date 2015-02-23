.class public Lcom/android/internal/widget/OppoActionBarView;
.super Lcom/android/internal/widget/ActionBarView;
.source "OppoActionBarView.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "OppoActionBarView"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    const-string v1, "OppoActionBarView"

    const-string v2, "OppoActionBarView"

    invoke-static {v0, v1, v2}, Lcom/oppo/util/OppoLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method hookSetTitleItem(ZZ)V
    .locals 6
    .parameter "showHome"
    .parameter "homeAsUp"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 51
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0xc05041a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 53
    .local v1, paddingLeft:I
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_1

    if-nez p1, :cond_1

    move v0, v1

    .line 55
    .local v0, left:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 56
    return-void

    .end local v0           #left:I
    :cond_0
    move v2, v4

    .line 53
    goto :goto_0

    :cond_1
    move v0, v3

    .line 54
    goto :goto_1
.end method
