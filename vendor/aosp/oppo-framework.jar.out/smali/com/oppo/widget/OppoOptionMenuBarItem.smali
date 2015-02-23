.class public Lcom/oppo/widget/OppoOptionMenuBarItem;
.super Landroid/widget/LinearLayout;
.source "OppoOptionMenuBarItem.java"


# static fields
.field private static final NO_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OppoOptionMenuBarItem"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mItemId:I

.field private mItemTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    .line 40
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    .line 41
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setupView(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    .line 40
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    .line 41
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setupView(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    .line 40
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    .line 41
    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setupView(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private setupView(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 60
    const v0, 0xc09043f

    invoke-static {p1, v0, p0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    const v0, 0xc020467

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    .line 62
    return-void
.end method

.method private update()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 85
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 87
    .local v1, drawableWidth:I
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 88
    .local v0, drawableHeight:I
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 93
    .end local v0           #drawableHeight:I
    .end local v1           #drawableWidth:I
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getItemId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    const/4 v0, 0x0

    .line 125
    if-nez p1, :cond_0

    .line 127
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 129
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 104
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 105
    return-void
.end method

.method public setItemEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setEnabled(Z)V

    .line 109
    return-void
.end method

.method public setItemIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->update()V

    .line 82
    return-void
.end method

.method public setItemId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 65
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemId:I

    .line 66
    return-void
.end method

.method public setItemTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->update()V

    .line 77
    return-void
.end method

.method public setItemTitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "colors"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBarItem;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 99
    :cond_0
    return-void
.end method

.method public setItemVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
