.class abstract Lcom/oppo/widget/OppoTextViewToolbar;
.super Lcom/oppo/view/OppoViewToolbar;
.source "OppoTextViewToolbar.java"


# static fields
.field protected static final ID_PASTE:I = 0x1020022

.field protected static final ID_PASTE_STR:I = 0x104000b


# instance fields
.field protected mEditText:Landroid/widget/EditText;

.field protected mItemPaste:Landroid/widget/TextView;

.field private mLineHeight:I

.field private mScreenX:I

.field private mScreenY:I


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 0
    .parameter "hostView"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/oppo/view/OppoViewToolbar;-><init>(Landroid/view/View;)V

    .line 50
    iput-object p1, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mEditText:Landroid/widget/EditText;

    .line 51
    return-void
.end method

.method private calculateScreenPosition()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 77
    const/4 v10, 0x2

    new-array v6, v10, [I

    .line 78
    .local v6, location:[I
    iget-object v10, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v10, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 79
    iget-object v10, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 80
    .local v8, start:I
    iget-object v10, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 81
    .local v1, end:I
    iget-object v10, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 82
    .local v2, layout:Landroid/text/Layout;
    if-nez v2, :cond_0

    .line 107
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {v2, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 86
    .local v4, line:I
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 87
    .local v9, top:I
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    .line 88
    .local v0, bottom:I
    sub-int v10, v0, v9

    iput v10, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mLineHeight:I

    .line 89
    iget v10, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mLineHeight:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v9

    aget v11, v6, v13

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/view/View;->getScrollY()I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mScreenY:I

    .line 91
    if-ne v8, v1, :cond_1

    .line 92
    invoke-virtual {v2, v8}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    aget v11, v6, v12

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/view/View;->getScrollX()I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mScreenX:I

    .line 106
    :goto_1
    aget v10, v6, v13

    iget v11, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mScreenY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mScreenY:I

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v2, v8}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 97
    .local v3, left:I
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 98
    .local v5, lineEnd:I
    if-ne v4, v5, :cond_2

    .line 99
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 103
    .local v7, right:I
    :goto_2
    add-int v10, v3, v7

    div-int/lit8 v10, v10, 0x2

    aget v11, v6, v12

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/view/View;->getScrollX()I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mScreenX:I

    goto :goto_1

    .line 101
    .end local v7           #right:I
    :cond_2
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .restart local v7       #right:I
    goto :goto_2
.end method


# virtual methods
.method protected abstract getOnClickListener()Landroid/view/View$OnClickListener;
.end method

.method protected initToolbarItem(II)Landroid/widget/TextView;
    .locals 4
    .parameter "id"
    .parameter "textResId"

    .prologue
    const/4 v3, 0x0

    .line 110
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, textView:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060403

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 114
    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 115
    iget v1, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    iget v2, p0, Lcom/oppo/view/OppoViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 116
    iget-object v1, p0, Lcom/oppo/view/OppoViewToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050413

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 118
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 119
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTextViewToolbar;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-object v0
.end method

.method protected initToolbarItem()V
    .locals 2

    .prologue
    .line 55
    const v0, 0x1020022

    const v1, 0x104000b

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoTextViewToolbar;->initToolbarItem(II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mItemPaste:Landroid/widget/TextView;

    .line 56
    return-void
.end method

.method public move()V
    .locals 6

    .prologue
    .line 68
    iget-boolean v2, p0, Lcom/oppo/view/OppoViewToolbar;->mShowing:Z

    if-eqz v2, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/oppo/widget/OppoTextViewToolbar;->calculateScreenPosition()V

    .line 70
    iget-object v2, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 71
    .local v1, start:I
    iget-object v2, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 72
    .local v0, end:I
    iget v3, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mScreenX:I

    iget v4, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mScreenY:I

    iget v5, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mLineHeight:I

    if-eq v1, v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/oppo/view/OppoViewToolbar;->moveInternal(IIIZ)V

    .line 74
    .end local v0           #end:I
    .end local v1           #start:I
    :cond_0
    return-void

    .line 72
    .restart local v0       #end:I
    .restart local v1       #start:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 6

    .prologue
    .line 59
    iget-boolean v2, p0, Lcom/oppo/view/OppoViewToolbar;->mShowing:Z

    if-nez v2, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/oppo/widget/OppoTextViewToolbar;->calculateScreenPosition()V

    .line 61
    iget-object v2, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 62
    .local v1, start:I
    iget-object v2, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 63
    .local v0, end:I
    iget v3, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mScreenX:I

    iget v4, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mScreenY:I

    iget v5, p0, Lcom/oppo/widget/OppoTextViewToolbar;->mLineHeight:I

    if-eq v1, v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/oppo/view/OppoViewToolbar;->showInternal(IIIZ)V

    .line 65
    .end local v0           #end:I
    .end local v1           #start:I
    :cond_0
    return-void

    .line 63
    .restart local v0       #end:I
    .restart local v1       #start:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
